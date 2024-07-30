var bciEndPoint = 'http://biocol.org/json/search?callback=jSonParser&order-by=name&location_state=';

//Function used to make sure the form doesn't submit if the submit button's container is hidden (in case of safari).
function checkHidden()
{
	var container = document.getElementById('submitRow');
	if (container.style.display == 'none')
		return false;
		
	return true;
}

//Function used to display collection info.
function displayInfo()
{
	document.getElementById('lBErrorMsg').innerHTML = '';
	var colListBox = document.getElementById('collectionsLB');
	var selOption = colListBox.options[colListBox.selectedIndex];
	var span = document.getElementById('colInfo')
	
	span.innerHTML = selOption.value;
	
}

//Function used to get the collections located in a selected state.
var urls;
var urlIndex = 0;
var limit = 50;
var offset0 = 0;
var offset1 = 0;
function getCollections(param)
{	
	var statesList = document.getElementById('statesDDL');
	var selOption = statesList.options[statesList.selectedIndex];
	document.getElementById('lBErrorMsg').innerHTML = '';
	document.getElementById('colInfo').innerHTML = '';
	
	var urls = new Array (bciEndPoint + selOption.text, bciEndPoint + selOption.value);
	
	//Clear the listbox if this call originated from the html.
	if (!param)
	{
		var colListBox = document.getElementById('collectionsLB');
		var selectParentNode = colListBox.parentNode;
		var newSelectObj = colListBox.cloneNode(false); // Make a shallow copy
		selectParentNode.replaceChild(newSelectObj, colListBox);
	}
	
	if (selOption.text != '')
	{	
		//If this call originated from the html.
		if (!param)
		{
			//Switch visibilities.
			document.getElementById('collectionsDiv').style.display = '';
			document.getElementById('submitRow').style.display = '';
	
			if ((navigator.appName == "Microsoft Internet Explorer") &&
				(parseFloat(navigator.appVersion) < 5))
				{
					document.getElementById('collectionsLB').style.display = 'none';
					document.getElementById('statesDDL').style.display = 'none';
				}
	
			//Reposition processing div.
			var processDiv = document.getElementById('processDivBorder');
			processDiv.style.display = '';
			var IpopTop = (document.body.clientHeight - processDiv.offsetHeight) / 2;
			var IpopLeft = (document.body.clientWidth - processDiv.offsetWidth) / 2;
            
			processDiv.style.left= IpopLeft + document.body.scrollLeft;
			processDiv.style.top= IpopTop + document.body.scrollTop;
		}
		
		//url selector.
		if (param && (param == 'end'))
		{
			if (urlIndex == 0)
			{
				urlIndex++;
			}
				
			else
			{
				urlIndex = 0;
				offset0 = 0;
				offset1 = 0;
				resetDisplay();
				return;
			}
		}
		
		//Pagination.
		if (param && (param == 'next'))
		{
			if (urlIndex == 0)
			{
				offset0 += limit;
			}
			
			else
			{
				offset1 += limit;
			}
		}
		//Remote call to get JSON results.
		var url = urls[urlIndex] + '&limit=' + limit + '&offset=' + eval('offset' + urlIndex);
		var head = document.getElementsByTagName('head')[0];
		var script = document.createElement('script');
		script.type= 'text/javascript';
		script.src= url;
		/*window.onerror = function(msg, url, line)
			{
				if (url.indexOf(bciEndPoint) != -1)
				{
					var colListBox = document.getElementById('collectionsLB');
					var selectParentNode = colListBox.parentNode;
					var newSelectObj = colListBox.cloneNode(false); // Make a shallow copy
					selectParentNode.replaceChild(newSelectObj, colListBox);
		
					resetDisplay();
					alert('Error retrieving collections list from BCI, please try again later.');
				}
			};*/
		head.appendChild(script);
	}
}

//Function used to populate collections list with bci json results.
function jSonParser(ws_results)
{
	var colListBox = document.getElementById('collectionsLB');	
	var info = '';
	var line;
	var optionExists = false;
	for (var i=0; i<ws_results.length; i++)
	{	
		var newOption = document.createElement('option');
		newOption.text = '(' + ws_results[i].code + ') ' + ws_results[i].name;
		newOption.value = 'Name:&nbsp;' + ws_results[i].name +
			'<BR>LSID:&nbsp;' + ws_results[i].lsid + '<BR>URL:&nbsp;' +  ((ws_results[i].web_site == null)? '' : ws_results[i].web_site) + 
			'<BR>Web Service URI:&nbsp;' +  ((ws_results[i].web_service_uri == null)? '' : ws_results[i].web_service_uri);
		
		//Make sure we haven't already added this institution.
		for (var j=0; j<colListBox.length; j++)
		{
			if (colListBox.options[j].value.indexOf(ws_results[i].lsid) != -1)
			{
				optionExists = true;
				break;
			}
		}
		
		if (!optionExists)
		{
			try
			{
				colListBox.add(newOption, null); // standards compliant
			}
		
			catch(ex)
			{
				colListBox.add(newOption); // IE only
			}
		}
	}
	
	if (ws_results.length < 50)
		getCollections('end');
	else
		getCollections('next');
}

//Function used to reset display and message box when all collections have been retrieved.
function resetDisplay()
{
	if ((navigator.appName == "Microsoft Internet Explorer") &&
		(parseFloat(navigator.appVersion) < 5))
		{
			document.getElementById('collectionsLB').style.display = '';
			document.getElementById('statesDDL').style.display = '';
		}
			
	var processDiv = document.getElementById('processDivBorder');
	processDiv.style.display = 'none';
            
	processDiv.style.left= '0px';
	processDiv.style.top= '0px';
	
	//alert(document.getElementById('collectionsLB').length);
}

//Function used to validate passed argument.
function validate()
{
	var aspF;
	for (var i=0; i<document.forms.length; i++)
	{
		if (document.forms[i].id == 'ASPForm')
			aspF = document.forms[i];
	}
	
	aspF.action = 'Index.aspx';
		
	//So far only used to validate list box.
	var colListBox = document.getElementById('collectionsLB');
	if (colListBox.selectedIndex == -1)
	{
		document.getElementById('lBErrorMsg').innerHTML = '<br>Collection required!';
		return false;
	}
	
	else
		return true;
}

//Function used to warn participant about leaving survey.
function displayPauseModal(surveyID)
{
	if (surveyID != '')
	{
		var msg = 'You have chosen to navigate away from this survey. If this was accidental, ' +
			'please click "Cancel" to abort, otherwise click "OK" to pause the survey.'
	
		var confirmed = confirm(msg);
		if (confirmed)
		{
			pauseSurvey(surveyID);
			return true;
		}
	
		else
			return false
	}
}

//Function used to pause the survey.
function pauseSurvey(surveyID)
{
	var msg = 'You have chosen to pause this survey. To resume it, please click on	the ' +
		'"resume an existing survey" link on the home page and enter this surveyID: ' + surveyID +
		'. Thank you.';
		
	alert(msg);
}

//Function used to resume survey.
function resumeSurvey()
{
	var surveyID;
	do
	{
		surveyID = prompt('Please enter survey ID: ');
		if (surveyID == null)
			break;
	} while (!whiteSpaceCheck(surveyID));
	
	if (surveyID != null)
	{
		document.getElementById('hiddenSurveyID').value = surveyID;
	
		var aspF;
		for (var i=0; i<document.forms.length; i++)
		{
			if (document.forms[i].id == 'ASPForm')
				aspF = document.forms[i];
		}
	
		aspF.action = 'Index.aspx?action=1';
		aspF.submit();
	}
}

//Function used to check for fields containing white spaces only.
//Equivalent to empty fields.
function whiteSpaceCheck(str)
{
	for (var i=0; i<str.length; i++)
	{
		if (str.substring(i, i+1) != " ")
			return true;
	}
	
	return false;
}

//Function used to check if an input is a number (positive).
function isPosNumber(input)
{
	if (/^\d*\.?\d+$/i.test(input.replace(/^[\s]+|[\s]+$/gi, '')))
		return true;
	else
		return false;
}

//Function used to check if an input is a percentage.
function isPercentage(input)
{
	if (isPosNumber(input) && (input <= 100))
		return true;
	else
		return false;
}

//Function used to validate a numeric input.
function validateNum(input)
{
	input.value = input.value.replace(/\.$/, '');
	if (whiteSpaceCheck(input.value))
	{
		if (!isPosNumber(input.value))
		{
			alert ('"' + input.value + '" is not a valid number!');
			input.value = '';
		}
	}
}

//Function used to validate a percentage input.
function validatePct(input)
{
	input.value = input.value.replace(/\.$/, '');
	if (whiteSpaceCheck(input.value))
	{
		if (!isPercentage(input.value))
		{
			if (isPosNumber(input.value))
			{
				alert ('Percentage value cannot exceed 100%!');
			}
			
			else
			{
				alert ('"' + input.value + '" is not a valid percentage!');
			}
			input.value = '';
		}
	}
}

//Function used to process answer type "1|2|3|4|5" (question 19), and question 21.
var targId = null;
var lastListCheckedId = null;
function processRank(QID)
{	
	//Unckeck previously checked radio button.
	if (targId != null)
	{
		document.getElementById(targId).checked = false;
		targId = null;
	}
	
	var needsMax = 5;
	var docTbls = document.getElementsByTagName('table');
	var radioLists = new Array();
	
	//Get radio button lists.
	for (var i=0; i<docTbls.length; i++)
		if (docTbls[i].id.indexOf(QID) != -1)
			radioLists.push(docTbls[i]);
				
	//Check how many radio buttons list have been selected.
	for (var i=0; i<radioLists.length; i++)
	{
		var inputs = radioLists[i].getElementsByTagName('input');
		var radios = new Array(0);
	
		//Get the radio buttons in this list.
		for (var j=0; j<inputs.length; j++)
			if (inputs[j].type == 'radio')
				radios.push(inputs[j]);
				
		//Check if any of this list's radio buttons is checked. if so, deduce it
		//from needsMax.	
		for (var j=0; j<inputs.length; j++)
			if (inputs[j].checked)
			{
				needsMax--;
				break;
			}
	}
	
	if (needsMax < 0)
	{
		//clear the last radio button list selected and inform the user of 
		//maximum reached.
		if (lastListCheckedId != null)
		{
			var inputs = document.getElementById(lastListCheckedId).getElementsByTagName('input');
			for (var i=0; i<inputs.length; i++)
				if (inputs[i].type == 'radio')
				{
					inputs[i].checked = false;
				}
				
			alert('You have already ranked your top 5 needs. If you would like to modify your selection,' +
				' please clear some of the previously selected needs first.'); 
		}
	}
}

//Function used to get the target of an event.
function getEventTarget(e)
{
	var targ;
	if (!e)
		var e = window.event;
	if (e.target)
		targ = e.target;
	else if (e.srcElement)
		targ = e.srcElement;
	if (targ.nodeType == 3)
		targ = targ.parentNode; //defeat Safari bug
		
	return targ;
}

//Function used to set the target id for clearance.
function setTargId(e)
{
	var targ = getEventTarget(e);
	if ((targ.tagName.toLowerCase() == 'input') && (targ.type.toLowerCase() == 'radio'))
	{
		if (targ.checked)
			targId = targ.id;
		else
		{	//Save the last checked radion button list's ID.
			var parent = targ;
			
			do
			{
				parent = parent.parentNode;
			}
			while (parent.nodeName.toLowerCase() != 'table');
			lastListCheckedId = parent.id;
		}
	}
}

//Open the survey instruction page in a different window while take the survey.
function openInst()
{
	var msg = 'The instructions will open in a new window so the survey window will remain intact.\nClick "Ok" to proceed.';
	if (confirm(msg))
	{
		var win = window.open('Instructions.aspx', 'Survey Instructions');
	}
}