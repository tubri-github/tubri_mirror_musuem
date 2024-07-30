// JScript source code

function validatenum()
{
	var num = document.getElementById("spnum").value;
	
	if (num == "")
	{
		alert("Please enter a number.");
		return false;
	}
	
	if (!checkNumeric(num, true))
	{
		alert("Input is not an unsigned number.");
		return false;
	}
	
	return true;
}

function checkNumeric(value, unsigned)
{
	var anum;
	
	if (!unsigned)
		anum=/(^-?\d+$)|(^-?\d+\.\d+$)|(^\+?\d+$)|(^\+?\d+\.\d+$)/;
	else
		anum=/(^\d+$)|(^\d+\.\d+$)/;
	if (anum.test(value))
      return true;
    return false;
}

function checkDate(value)
{
	var anum=/(^\d{1,2}\/\d{1,2}\/\d{4}$)/;
	if (anum.test(value))
      return true;
    return false;
}

function validateform()
{
	var permNum = document.getElementById('permitno');
	var waterBod = document.getElementById('waterbody');
	var startDate = document.getElementById('stdate');
	var county = document.getElementById('county');
	var lon = document.getElementById('longitude');
	var lat = document.getElementById('latitude');
	var locality = document.getElementById('locality');
	var collectors = document.getElementById('collectors');
	var voucher = document.getElementsByName('v_status');
	var catNum = document.getElementsByName('cat_num');
	var sciName = document.getElementsByName('scientificname');
	var totalSpec = document.getElementsByName('tot_num');
	
	var errorText = 'Please rectify the following issues:';
	var submit = true;
	
	if (permNum.value == '')
	{
		errorText += '<br>no permit number entered.';
		submit = false;
	}
	
	if ((startDate.value == '') || (startDate.value == 'mm/dd/yyyy'))
	{
		errorText += '<br>no start date entered.';
		submit = false;
	}
	else if (!checkDate(startDate.value))
	{
		errorText += '<br>invalid start date format.';
		submit = false;
	}
	
	if (county.value == '')
	{
		errorText += '<br>no county entered.';
		submit = false;
	}
	
	if (locality.value == '')
	{
		errorText += '<br>no locality entered.';
		submit = false;
	}
	
	if (collectors.value == '')
	{
		errorText += '<br>no collectors entered.';
		submit = false;
	}
	
	if ((lon.value != '') && !checkNumeric(lon.value, false))
	{
		errorText += '<br>non-numeric longitude entered.';
		submit = false;
	}
	
	if ((lat.value != '') && !checkNumeric(lat.value, false))
	{
		errorText += '<br>non-numeric latitude entered.';
		submit = false;
	}
	
	if (waterBod.options[waterBod.selectedIndex].value == "")
	{
	errorText += '<br>no water body type selected.';
		submit = false;
	}
	
	for (var i=0; i<sciName.length; i++)
	{
		if (sciName[i].value == '')
		{
			errorText += '<br>no scientific name entered for specimen record number ' + (i+1) + '.';
			submit = false;
		}
	}
	
	for (var i=0; i<totalSpec.length; i++)
	{
		if ((totalSpec[i].value != '') && !checkNumeric(totalSpec[i].value, true))
		{
			errorText += '<br>non-numeric or signed total number entered for specimen record number ' + (i+1) + '.';
			submit = false;
		}
	}
	
	for (var i=0; i<catNum.length; i++)
	{
		if ((voucher[i].options[voucher[i].selectedIndex].value == 'Vouchered') &&
			(catNum[i].value == ''))
		{
			errorText += '<br>no catalog number entered for vouchered specimen record number ' + (i+1) + '.';
			submit = false;
		}
	}
	
	if (!submit)
	{
		var errMsg = document.getElementById('errorMsg')
		errMsg.style.display = 'block';
		errMsg.style.color = 'red';
		errMsg.innerHTML = errorText;
	}
	
	return submit;
}

function checkAppForm()
{
  var appname = document.getElementById('appName');
  var appdate = document.getElementById('appDate');
  var phone = document.getElementById('phone');	
  var email = document.getElementById('email');
  
  var errmsg;
  var rvalue = true;
  
  
  if((appname.value == ''))
  {
	//alert(appname.value);
	errmsg = document.getElementById('AppNameErrMsg');
	errmsg.innerHTML = 'Please enter the Applicants Name';
	errmsg.style.display = 'block';
	errmsg.style.color = 'red';	
	rvalue = false;
  }
  
  if(phone.value == '')
  {
        errmsg = document.getElementById('PhoneErrMsg');
		errmsg.innerHTML = 'Please enter telephone number.';
		errmsg.style.display = 'block';
	    errmsg.style.color = 'red';	
		rvalue = false;	  
  }
  
  
  if(email.value == '')
  {
	    errmsg = document.getElementById('emailErrMsg');
		errmsg.innerHTML = 'Please enter E-mail.<br>';
		errmsg.style.display = 'block';
	    errmsg.style.color = 'red';	
		rvalue = false;  
  }
  
  if ((appdate.value == '') || (appdate.value == 'mm/dd/yyyy'))
	{
		errmsg = document.getElementById('AppdateErrMsg');
		errmsg.innerHTML = 'Please enter the date.';
		errmsg.style.display = 'block';
	    errmsg.style.color = 'red';	
		rvalue = false;
	}
	else if (!checkDate(appdate.value))
	{
		errmsg = document.getElementById('AppdateErrMsg');
		errmsg.innerHTML = 'Invalid Application Date format.';
		errmsg.style.display = 'block';
	    errmsg.style.color = 'red';			
		rvalue = false;
	}
  
  
return rvalue;
}

function checkRegForm()
{

	var appName = document.getElementById('appName');
	var fName = document.getElementById('firstName');
	var lName = document.getElementById('lastName');
	var permitNum = document.getElementById('permitteeNum');
	var uName = document.getElementById('userName');
	var password = document.getElementById('password');
	var retype_word = document.getElementById('retypePassword');
	
	var errmsg;
    var rvalue = true;
    
    errmsg = document.getElementById('aNameErr');
    errmsg.innerHTML = '';
    
	
	if(appName.value == '')
	{
		//errmsg = document.getElementById('aNameErr');
		errmsg.innerHTML += 'Please enter the Name as in Application Form <br>';
		errmsg.style.display = 'block';
		errmsg.style.color = 'red';	
		rvalue = false;	
	}
	
	if(fName.value == '')
	{
		//errmsg = document.getElementById('fNameErr');
		errmsg.innerHTML += 'Please enter First Name<br>';
		errmsg.style.display = 'block';
		errmsg.style.color = 'red';	
		rvalue = false;		
	}
	
	if(lName.value == '')
	{
		//errmsg = document.getElementById('lNameErr');
		errmsg.innerHTML += 'Please enter Last Name.<br>';
		errmsg.style.display = 'block';
		errmsg.style.color = 'red';	
		rvalue = false;	
	}
	
	if(permitNum.value == '')
	{
		//errmsg = document.getElementById('permitNumErr');
		errmsg.innerHTML += 'Please enter Permit Number.<br>';
		errmsg.style.display = 'block';
		errmsg.style.color = 'red';	
		rvalue = false;	
	}
	
	if(uName.value.length == 0)
	{
		//errmsg = document.getElementById('UNameErr');
		errmsg.innerHTML += 'Please enter User Name. <br>';
		errmsg.style.display = 'block';
		errmsg.style.color = 'red';	
		rvalue = false;	
	}
	
	if(uName.value.length < 6)
	{
		//errmsg = document.getElementById('UNameErr');
		errmsg.innerHTML += 'User Name has to be atleast 6 characters or more.<br> ';
		errmsg.style.display = 'block';
		errmsg.style.color = 'red';	
		rvalue = false;	
	}
	
	
	
	if(password.value.length == 0)
	{
		//errmsg = document.getElementById('passErr');
		errmsg.innerHTML += 'Please enter password<br>';
		errmsg.style.display = 'block';
		errmsg.style.color = 'red';	
		rvalue = false;	
	}
	if(retype_word.value.length == 0)
	{
		//errmsg = document.getElementById('retypeErr');
		errmsg.innerHTML += 'Please re-enter password.<br>';
		errmsg.style.display = 'block';
		errmsg.style.color = 'red';	
		rvalue = false;		
	}
	
	if(password.value.length < 6)
	{
		//errmsg = document.getElementById('passErr');
		errmsg.innerHTML += 'Password has to be atleast 6 characters or more.<br> ';
		errmsg.style.display = 'block';
		errmsg.style.color = 'red';	
		rvalue = false;	
	}
	
	if(retype_word.value != password.value)
	{
	 // errmsg = document.getElementById('passErr');
	  errmsg.innerHTML += 'Passwords do not match'+'<p>Please enter the same password twice<p><br>';
	  errmsg.style.display = 'block';
	  errmsg.style.color = 'red';		
	  
	  retype_word.value = '';
	  password.value = '';
	  
	  rvalue = false;
	}
	return rvalue;
	}
