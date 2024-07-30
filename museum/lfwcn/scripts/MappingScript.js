//Globals
var gpath = 'graphics/';
var zoomfactor = 2;
var pansize = .8;
var lon, lat;
var response;
var xmlHttp;
var layers;
var pointDivHtml;
var divEle;
var mSpan;
var tOut;

//Overlay current operation messages.
function startMessage(txt)
{
	var mDiv = document.getElementById('messageDiv');
	var mDivbg = document.getElementById('messageDivbg');
	mSpan = document.getElementById('message');
	var offsets = findPosition(document.getElementById('ibLA'))

	mDiv.style.left = mDivbg.style.left = offsets[0] + 'px';
	mDiv.style.top = mDivbg.style.top = offsets[1] + 'px';
	mSpan.innerHTML = '&nbsp;' + txt;
	document.getElementById('mMask').innerHTML = mSpan.innerHTML + '...&nbsp;&nbsp;';		
	mDiv.style.visibility = mDivbg.style.visibility = 'visible';
					
		for (var i = 1; i < 4; i++)
		{
			tOut = setTimeout('mSpan.innerHTML += \'.\'', i*150);
		}
					
		tOut = setTimeout('startMessage(\'' + txt + '\')', 600);
}

//Cancel current operation message overlay.
function stopMessage()
{
	clearTimeout(tOut);
	var mDiv = document.getElementById('messageDiv');
	var mDivbg = document.getElementById('messageDivbg');
	mSpan = document.getElementById('message');
	mDiv.style.visibility = mDivbg.style.visibility = 'hidden';
	mDiv.style.left = mDivbg.style.left = 0 + 'px';
	mDiv.style.top = mDivbg.style.top = 0 + 'px';
	mSpan.innerHTML = '';
}

//Get the selected layers.
function getLayers()
{
	layers = '';
	var layersList = document.getElementById('otherBkgnds');
	
	for (var i = 0; i<layersList.rows[0].cells.length; i++)
	{
		var otherBkgd = document.getElementById('otherBkgnds_' + i);
		if ((otherBkgd.checked) && (otherBkgd.value.toLowerCase() != 'counties'))
			layers += otherBkgd.value + '+';
	}
	
	layersList = document.getElementById('lBlayers');

	for (var i = 0; i < layersList.length; i++)
	{
		if (layersList.options[i].selected == true)
			layers += layersList.options[i].value + '+';
	}

	layers = layers.substring(0, layers.lastIndexOf('+'));
}

//Process mouse clicks.
function domouseclick(button, e)
{
	xmlHttp = GetXmlHttpObject();
	if (xmlHttp == null)
		{
			alert ('Your browser does not support HTTP Request.\nPlease upgrade to the latest version.');
			return;
		}
	xmlHttp.onreadystatechange = stateChanged;
	getLayers();

	var msg = 'panning ';
	var minLon = document.forms['mapserv'].minLon.value;
	var minLat = document.forms['mapserv'].minLat.value;
	var maxLon = document.forms['mapserv'].maxLon.value;
	var maxLat = document.forms['mapserv'].maxLat.value;

	var defMinLon = document.forms['mapserv'].defMinLon.value;
	var defMinLat = document.forms['mapserv'].defMinLat.value;
	var defMaxLon = document.forms['mapserv'].defMaxLon.value;
	var defMaxLat = document.forms['mapserv'].defMaxLat.value;
	
	var mapWidth = document.forms['mapserv'].mapWidth.value;
	var	mapHeight = document.forms['mapserv'].mapHeight.value;

	var url= 'Search.aspx';
	if ((button == 'nw') || (button == 'n') || (button == 'ne') || (button == 'w') || (button == 'e') || (button == 'sw') || (button == 's') || (button == 'se'))
	{
		url += '?sid=' + Math.random() + '&op=pan';
		url += '&direction=' + button;
		url += '&layers=' + layers;
		switch (button)
		{
			case 'nw':
				msg += 'north-west';
			break;

			case 'n':
				msg += 'north';
			break;

			case 'ne':
				msg += 'north-east';
			break;

			case 'w':
				msg += 'west';
			break;

			case 'e':
				msg += 'east';
			break;

			case 'sw':
				msg += 'south-west';
			break;

			case 's':
				msg += 'south';
			break;

			case 'se':
				msg += 'south-east';
			break;

			default:
			break;
		}
	}

	else
	{
		url += '?sid=' + Math.random() + '&op=' + button;
		url += '&layers=' + layers;
	}
	switch (button)
	{
		case 'globe':
			stopMessage();
			startMessage('zooming to full scale');
			url += '&defMinLon=' + defMinLon + '&defMinLat=' + defMinLat;
			url += '&defMaxLon=' + defMaxLon + '&defMaxLat=' + defMaxLat;
			xmlHttp.open('GET', url, true);
			xmlHttp.send(null);
		break;

		case 'zoomin':
			stopMessage();
			startMessage('zooming in');
			url += '&zoomfactor=' + zoomfactor;
			url += '&minLon=' + minLon + '&minLat=' + minLat + '&maxLon=' + maxLon + '&maxLat=' + maxLat;
			url += '&defMinLon=' + defMinLon + '&defMinLat=' + defMinLat;
			url += '&defMaxLon=' + defMaxLon + '&defMaxLat=' + defMaxLat;
			xmlHttp.open('GET', url, true);
			xmlHttp.send(null);
		break;

		case 'zoomout':
			stopMessage();
			startMessage('zooming out');
			url += '&zoomfactor=' + zoomfactor;
			url += '&minLon=' + minLon + '&minLat=' + minLat + '&maxLon=' + maxLon + '&maxLat=' + maxLat;
			url += '&defMinLon=' + defMinLon + '&defMinLat=' + defMinLat;
			url += '&defMaxLon=' + defMaxLon + '&defMaxLat=' + defMaxLat;
			xmlHttp.open('GET', url, true);
			xmlHttp.send(null);
		break;

		case 'help':
			window.open('Georef_help.htm', 'helpWindow', 'width=600px, height=500px, resizable=0, scrollbars=1');
		break;

		case 'ibLA':
			doclickanim(e);
			stopMessage();
			startMessage('rendering');
			url += '&minLon=' + minLon + '&minLat=' + minLat + '&maxLon=' + maxLon + '&maxLat=' + maxLat;
			url += '&defMinLon=' + defMinLon + '&defMinLat=' + defMinLat;
			url += '&defMaxLon=' + defMaxLon + '&defMaxLat=' + defMaxLat;
			url += '&xLon=' + lon + '&xLat=' + lat;
			url += '&mapWidth=' + mapWidth + '&mapHeight=' + mapHeight;
			xmlHttp.open('GET', url, true);
			xmlHttp.send(null);
			return false; //this prevents full postback
		break;
		
		case 'ibReference':
			doclickanim(e);
			stopMessage();
			startMessage('rendering');
			url += '&minLon=' + minLon + '&minLat=' + minLat + '&maxLon=' + maxLon + '&maxLat=' + maxLat;
			url += '&defMinLon=' + defMinLon + '&defMinLat=' + defMinLat;
			url += '&defMaxLon=' + defMaxLon + '&defMaxLat=' + defMaxLat;
			url += '&xLon=' + lon + '&xLat=' + lat;
			xmlHttp.open('GET', url, true);
			xmlHttp.send(null);
			return false; //this prevents full postback
		break;
		
		case 'nw':
		case 'n':
		case 'ne':
		case 'w':
		case 'e':
		case 'sw':
		case 's':
		case 'se':
			stopMessage();
			startMessage(msg);
			url += '&pansize=' + pansize;
			url += '&minLon=' + minLon + '&minLat=' + minLat + '&maxLon=' + maxLon + '&maxLat=' + maxLat;
			url += '&defMinLon=' + defMinLon + '&defMinLat=' + defMinLat;
			url += '&defMaxLon=' + defMaxLon + '&defMaxLat=' + defMaxLat;
			xmlHttp.open('GET', url, true);
			xmlHttp.send(null);
		break;

		default:
		alert (button + ' not yet implemented.');
		return false;
		break;
	}
}

//Process mouse overs.
function domouseover(button) 
{
	var img;

	img = eval ('document.' + button);
	img.src = gpath + button + '_over.gif';
}

//Cancel mouse over effects.
function domouseout(button) 
{
	var img;

	img = eval ('document.' + button);
	img.src = gpath + button + '.gif';
}

//Display current latitude and longitude corresponding to current mouse position on the maps.
function showcoordinates(e)
{ 
	if (e.offsetX && e.offsetY)
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
		var offsets = findPosition(targ);

		var lonlat = pixelTolatlon(targ.id, e.offsetX, e.offsetY);
		lon = lonlat[0];		
		lat = lonlat[1];

		document.getElementById('qmLon').innerHTML = lon;
		document.getElementById('qmLat').innerHTML = lat;
	}

	else if (e.pageX && e.pageY)
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
		var offsets = findPosition(targ);

		var x = e.pageX - offsets[0];
		var y = e.pageY - offsets[1];

		var lonlat = pixelTolatlon(targ.id, x, y);
		lon = lonlat[0];		
		lat = lonlat[1];

		document.getElementById('qmLon').innerHTML = lon;
		document.getElementById('qmLat').innerHTML = lat;
	}
}

//Reset coordinates when mouse is not on maps.
function resetcoords(e)
{
	document.getElementById('qmLon').innerHTML = '?';
	document.getElementById('qmLat').innerHTML = '?';
}

//Find position of the mouse relative to the maps.
function findPosition(elem)
{
	if (elem.offsetParent)
	{
		for (var posX = 0, posY = 0; elem.offsetParent; elem = elem.offsetParent)
		{
			posX += elem.offsetLeft;
			posY += elem.offsetTop;
		}
		return [posX, posY];
	}
	else
	{
		return [elem.x, elem.y];
	}
}


//Translate pixels to latitude and longitude.
function pixelTolatlon(targetId, x, y)
{
	var minLon, minLat, maxLon, maxLat;
	var mapWidth, mapHeight;

	if (targetId == 'ibReference')
	{
		minLon = document.forms['mapserv'].defMinLon.value;
		minLat = document.forms['mapserv'].defMinLat.value;
		maxLon = document.forms['mapserv'].defMaxLon.value;
		maxLat = document.forms['mapserv'].defMaxLat.value;
		mapWidth = document.forms['mapserv'].refMapWidth.value;
		mapHeight = document.forms['mapserv'].refMapHeight.value;
	}

	else
	{
		minLon = document.forms['mapserv'].minLon.value;
		minLat = document.forms['mapserv'].minLat.value;
		maxLon = document.forms['mapserv'].maxLon.value;
		maxLat = document.forms['mapserv'].maxLat.value;
		mapWidth = document.forms['mapserv'].mapWidth.value;
		mapHeight = document.forms['mapserv'].mapHeight.value;
	}

	var dx = maxLon - minLon;
	var dy = maxLat - minLat;
	var lonX = Number (minLon) + (dx*x)/mapWidth;
	var latY = maxLat - (dy*y)/mapHeight;

	return [Math.round(lonX*100000000)/100000000, Math.round(latY*100000000)/100000000];
}

//Get and xmlhttp object for AJAX purposes.
function GetXmlHttpObject()
{ 
	var XMLHttp = null;

	try
	{
		XMLHttp = new ActiveXObject('Msxml2.XMLHTTP');
	} 
	catch (e) 
	{
		try 
		{
			XMLHttp = new ActiveXObject('Microsoft.XMLHTTP');
		}

		catch (e)
		{
		} 
	}

	if (XMLHttp == null)
	{
		XMLHttp = new XMLHttpRequest();
	}
	return XMLHttp;
} 

//AJAX response processing delegate.
function stateChanged() 
{ 
	if (checkReadyState(xmlHttp))
	{
		var type;
		var typeChild;
		var childValue;
		var targEle;
		var ibw;
 
		if (xmlHttp.responseText.indexOf("yes|") != -1)
		{
			response = xmlHttp.responseText;
			pointDivHtml = response.split("|")[1];
			doPointInfo();
			stopMessage();
		}
			
		else
		{
			response = xmlHttp.responseXML.documentElement;
			for (var i = 0; i < response.childNodes.length; i++)
			{
				type = response.childNodes[i];
				for (var j = 0; j < type.childNodes.length; j++)
				{
					typeChild = type.childNodes[j];
					childValue = typeChild.childNodes[0].nodeValue;
					if (type.nodeName == 'extent')
					{
						targEle = eval ('document.forms[\'mapserv\'].' + typeChild.nodeName);
						targEle.value = childValue;
					}

					else if (type.nodeName == 'url')
					{
						targEle = eval ('document.getElementById(\'' + typeChild.nodeName + '\')');
						targEle.src = childValue;
					}
				}
			}

			document.getElementById('ibLA').onload = function() {stopMessage();};
			reportZmlvl();
		}
	}
}

//Display current zoom level.
function reportZmlvl()
{
	var defDx = document.forms['mapserv'].defMaxLon.value - document.forms['mapserv'].defMinLon.value;
	var dx = document.forms['mapserv'].maxLon.value - document.forms['mapserv'].minLon.value;
	var currentZm = document.getElementById('zmlvl').innerHTML;
	var newZm = Math.round(Math.log(defDx/dx) / Math.log(2));

	if (newZm > currentZm)
	{
		for (i = currentZm; i <= newZm; i++)
			setTimeout('document.getElementById(\'zmlvl\').innerHTML = ' + i, 50*(i-currentZm));
	}

	else
	{
		for (i = currentZm; i >= newZm; i--)
			setTimeout('document.getElementById(\'zmlvl\').innerHTML = ' + i, 50*(currentZm-i));
	}
}

//Start dynamic rubber band box.
function startDBox(e)
{
	var x = 0;
	var y = 0;

	if (document.all)
	{
		if (!document.documentElement.scrollLeft)
			x += document.body.scrollLeft;
		else
			x += document.documentElement.scrollLeft;
               
		if (!document.documentElement.scrollTop)
			y += document.body.scrollTop;
		else
			y += document.documentElement.scrollTop;
	}   
	else
	{
		x += window.pageXOffset;
		y += window.pageYOffset;
	}

	x += (e.clientX && e.clientY) ? e.clientX : e.pageX;
	y += (e.clientX && e.clientY) ? e.clientY : e.pageY;
	document.getElementById('dBoxBorder').style.top = y;
	document.getElementById('dBoxBorder').style.left = x;
	document.getElementById('dBoxBorder').style.bottom = y;
	document.getElementById('dBoxBorder').style.right = x;
	document.onmousemove = resizeDBox;
}

//Cancel rubber band box.
function stopDBox(elem)
{
	if (elem.id == 'dBoxBorder')
	{
		stopMessage();
		startMessage('processing zoom box');
	}
	document.onmousemove = null;
	document.getElementById('dBoxBorder').style.visibility = 'hidden';
	getLayers();

	var offsets = findPosition (document.getElementById('ibLA'));
	var x = parseInt(document.getElementById('dBoxBorder').style.left) - offsets[0];
	var y = parseInt(document.getElementById('dBoxBorder').style.top) - offsets[1];
	var width = parseInt(document.getElementById('dBoxBorder').style.width);
	var height = parseInt(document.getElementById('dBoxBorder').style.height);
	var lonlat1 = pixelTolatlon('ibLA', x, y);
	var lonlat2 = pixelTolatlon('ibLA', x+width, y+height);
	var xlon = (lonlat1[0] + lonlat2[0])/2;
	var xlat = (lonlat2[1] + lonlat1[1])/2;
	var minLon = document.forms['mapserv'].minLon.value;
	var minLat = document.forms['mapserv'].minLat.value;
	var maxLon = document.forms['mapserv'].maxLon.value;
	var maxLat = document.forms['mapserv'].maxLat.value;
	var defMinLon = document.forms['mapserv'].defMinLon.value;
	var defMinLat = document.forms['mapserv'].defMinLat.value;
	var defMaxLon = document.forms['mapserv'].defMaxLon.value;
	var defMaxLat = document.forms['mapserv'].defMaxLat.value;
	var newZoomfactor = Math.round((maxLon - minLon)/(lonlat2[0] - lonlat1[0]));
			
	if (newZoomfactor < 2)
		newZoomfactor = 2;

	document.getElementById('dBoxBorder').style.top = 0;
	document.getElementById('dBoxBorder').style.left = 0;
	document.getElementById('dBoxBorder').style.height = '0' + 'px';
	document.getElementById('dBoxBorder').style.width = '0' + 'px';
			 
	xmlHttp = GetXmlHttpObject();
	if (xmlHttp == null)
		{
			alert ('Your browser does not support HTTP Request.\nPlease upgrade to the latest version.');
			return;
		}
	xmlHttp.onreadystatechange = stateChanged;//alert('here');
	var url = 'Search.aspx';
	url = url + '?sid=' + Math.random() + '&op=dBox';
	url += '&layers=' + layers;
	url = url + '&zoomfactor=' + newZoomfactor;
	url = url + '&minLon=' + minLon + '&minLat=' + minLat + '&maxLon=' + maxLon + '&maxLat=' + maxLat;
	url = url + '&xLon=' + xlon + '&xLat=' + xlat;
	url += '&defMinLon=' + defMinLon + '&defMinLat=' + defMinLat;
	url += '&defMaxLon=' + defMaxLon + '&defMaxLat=' + defMaxLat;
	xmlHttp.open ('GET', url, true);
	xmlHttp.send(null);
}

//Dynamically resize rubberband box.
function resizeDBox(e)
{
	var dBoxWidth, dBoxHeight;
	var x = 0;
	var y = 0;
	var offsets = findPosition (document.getElementById('ibLA'));
	var xMinBound = offsets[0] + 2;
	var xMaxBound = xMinBound + Number(document.forms['mapserv'].mapWidth.value) - 4;
	var yMinBound = offsets[1] + 2;
	var yMaxBound = yMinBound + Number(document.forms['mapserv'].mapHeight.value) - 4;

	document.getElementById('dBoxBorder').style.visibility = 'visible';

	if (document.all)
	{
		if (!document.documentElement.scrollLeft)
			x += document.body.scrollLeft;
		else
			x += document.documentElement.scrollLeft;
               
		if (!document.documentElement.scrollTop)
			y += document.body.scrollTop;
		else
			y += document.documentElement.scrollTop;
	}

	if (document.all)
	{
		x += event.clientX;
		y += event.clientY;
	}

	else
	{
		x += e.pageX;
		y += e.pageY;
	}

	if (x >= parseInt(document.getElementById('dBoxBorder').style.right))
	{
		dBoxWidth =  x - parseInt(document.getElementById('dBoxBorder').style.left);
	}
	else
	{
		if (x > xMinBound)
		{
			document.getElementById('dBoxBorder').style.left = x - 2;
			dBoxWidth = parseInt(document.getElementById('dBoxBorder').style.right) - x - 1;
		}
	}

	if (y >= parseInt(document.getElementById('dBoxBorder').style.bottom))
	{
		dBoxHeight = y - parseInt(document.getElementById('dBoxBorder').style.top);
	}
	else
	{
		if (y > yMinBound)
		{
			document.getElementById('dBoxBorder').style.top = y - 2;
			dBoxHeight = parseInt(document.getElementById('dBoxBorder').style.bottom) - y - 1;
		}
	}

	if ((x > xMinBound) && (x < xMaxBound))
	{
		document.getElementById('dBoxBorder').style.width = Math.abs(dBoxWidth) + 'px';
	}

	if ((y > yMinBound) && (y  < yMaxBound))
	{
		document.getElementById('dBoxBorder').style.height = Math.abs(dBoxHeight) + 'px';
	}
}

//Animate mouse clicks with red focusing target square.
function doclickanim(e)
{
	var offset = 26;
	var millis = 0;
	var intvl = 40;
	var x, y;

	if (document.all)
	{
		if (!document.documentElement.scrollLeft)
			x = document.body.scrollLeft;
		else
			x = document.documentElement.scrollLeft;
              
		if (!document.documentElement.scrollTop)
			y = document.body.scrollTop;
		else
			y = document.documentElement.scrollTop;
	}

	if (document.all)
	{
		x += event.clientX;
		y += event.clientY;
	}

	else
	{
		x = e.pageX;
		y = e.pageY;
	}
		
	for (var i = 0; i < 5; i++)
	{
		var left = x - offset;
		var top = y - offset;

		eval ('document.getElementById(\'img' + i + '\').style.left = ' + left);
		eval ('document.getElementById(\'img' + i + '\').style.top = ' + top);

		offset -= 5;
	}

	for (var i = 0; i < 10; i++)
	{
		setTimeout('document.getElementById(\'img' + Math.floor(i/2) + '\').style.display = \'' + (((i % 2) == 0)? 'inline' : 'none') + '\'', (((i % 2) == 0)? millis : (millis += intvl)));				
	}
	return;
}

//Show selected layers.
function showLayers()
{
	stopMessage();
	startMessage('rendering');

	getLayers();

	var minLon = document.forms['mapserv'].minLon.value;
	var minLat = document.forms['mapserv'].minLat.value;
	var maxLon = document.forms['mapserv'].maxLon.value;
	var maxLat = document.forms['mapserv'].maxLat.value;

	xmlHttp = GetXmlHttpObject();
	if (xmlHttp == null)
		{
			alert ('Your browser does not support HTTP Request.\nPlease upgrade to the latest version.');
			return;
		}
	xmlHttp.onreadystatechange = stateChanged;
	var url = 'Search.aspx';
	url = url + '?sid=' + Math.random() + '&op=layerchange';
	url += '&layers=' + layers;
	url = url + '&minLon=' + minLon + '&minLat=' + minLat + '&maxLon=' + maxLon + '&maxLat=' + maxLat;
	xmlHttp.open ('GET', url, true);
	xmlHttp.send(null);
}

//Correct page reload problems in non-IE or non-IE compliant browsers.
function reloadPage()
{
	var browser = navigator.appName;
	if ((browser.toLowerCase().indexOf('internet explorer') != -1) || (browser.toLowerCase().indexOf('opera') != -1))
		return;
	xmlHttp = GetXmlHttpObject();
	if (xmlHttp == null)
	{
		alert ('Your browser does not support HTTP Request.\nPlease upgrade to the latest version.');
		return;
	}

	var url = 'Search.aspx';
	xmlHttp.onreadystatechange = pageChanged;		

	xmlHttp.open ('GET', url, true);
	xmlHttp.send(null);
}

//Page reload correction processing delegate.
function pageChanged()
{
	if (checkReadyState(xmlHttp))
	{
		document.forms['mapserv'].minLon.value = document.forms['mapserv'].defMinLon.value;
		document.forms['mapserv'].minLat.value = document.forms['mapserv'].defMinLat.value;
		document.forms['mapserv'].maxLon.value = document.forms['mapserv'].defMaxLon.value;
		document.forms['mapserv'].maxLat.value = document.forms['mapserv'].defMaxLat.value;
	}
}

//Show the record corresponding to the point clicked.
function doPointInfo()
{
	divEle = document.getElementById('pointDivBorder');
	//tabsBandDiv's height + top and bottom border size. Change this accordingly.
	var tbdHeight = 5;
	
	//ie width offset;
	var ieOff = 6;
	document.getElementById('pointDiv').style.overflow = 'hidden';
	document.getElementById('pointDiv').innerHTML = "";
	
	if (divEle.style.visibility != 'visible')
	{
		var divHeight = parseInt(divEle.style.height);
		var offsets = findPosition(document.getElementById('map_controls'));
		var browser = navigator.appName;
		var agent = navigator.userAgent;
		
		divEle.style.left = offsets[0] + 'px';
		if ((browser.toLowerCase().indexOf('internet explorer') != -1) || (browser.toLowerCase().indexOf('opera') != -1)
			|| (agent.toLowerCase().indexOf('firefox/3') != -1))
			divEle.style.left = parseInt(divEle.style.left) - ieOff + 'px';
		
	
		offsets = findPosition(document.getElementById('tabsBandDiv'));
		divEle.style.top = offsets[1] + tbdHeight - divHeight + 'px';
		divEle.style.clip = 'rect(' + divHeight + 'px auto auto auto)';
		divEle.style.visibility = 'visible';
	
		var step = divHeight - 1;
		for (var i = 1; i <= divHeight; i++)
		{
			setTimeout('stepDiv(' + step + ', \'down\')', i);
			step = (step > 0)? step - 1 : 0;
		}
		
		setTimeout('document.getElementById(\'pointDiv\').innerHTML = \'' + pointDivHtml + '\'', divHeight + 1);
		setTimeout('document.getElementById(\'pointDiv\').style.overflow = \'auto\'', divHeight + 2);
	}
	
	else
	{
		//The info div is hidden.
		if (document.getElementById('showArrow').style.display == 'block')
			hide_ShowPtInfo('show');
		else
		{
			document.getElementById('pointDiv').innerHTML = pointDivHtml;
			document.getElementById('pointDiv').style.overflow = 'auto';
		}
	}
}

//Move the point info div in the specified direction by 'step'.
function stepDiv(step, dir)
{
	divEle = document.getElementById('pointDivBorder');

	if (dir == 'down')
	{
		divEle.style.top = parseInt(divEle.style.top) + 1;
		divEle.style.clip = 'rect(' + step + 'px auto auto auto)';
	}
	else
	{
		divEle.style.clip = 'rect(' + step + 'px auto auto auto)';
		divEle.style.top = parseInt(divEle.style.top) - 1;

	}
}

//Hide/show the point info div.
function hide_ShowPtInfo(txt)
{
	document.getElementById('pointDiv').style.overflow = 'hidden';
	document.getElementById('pointDiv').innerHTML = "";
	var divHeight = parseInt(divEle.style.height);
	var step;
	divEle = document.getElementById('warningDivBorder');

	if (txt == 'hide')
	{
		document.getElementById('hideArrow').style.display = 'none';
		document.getElementById('showArrow').style.display = 'block';
		step = 1;

		for (var i = 1; i <= divHeight - 12; i++)
		{
			setTimeout('stepDiv(' + step + ', \'up\')', step);
			step++;
		}
		
	}

	else
	{
		document.getElementById('hideArrow').style.display = 'block';
		document.getElementById('showArrow').style.display = 'none';
		step = divHeight - 13;

		for (var i = 1; i <= divHeight - 12; i++)
		{
			setTimeout('stepDiv(' + step + ', \'down\')', i);
			step--;
		}
		
		setTimeout('document.getElementById(\'pointDiv\').innerHTML = \'' + pointDivHtml + '\'', divHeight - 11);
		setTimeout('document.getElementById(\'pointDiv\').style.overflow = \'auto\'', divHeight - 10);
	}
}

//Process a change of background request and calls showlayers if necessary.
function changeBkgd(e)
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
	
	if (targ.type  == 'radio')
		showLayers();
}

//Check if the AJAX response is ready for processing.
function checkReadyState(obj)
{
	if (obj.readyState == 4 || obj.readyState=='complete')
	{
		if (obj.status == 200)
		{
			return true;
		}

		else
		{
			stopMessage();
			alert('Problem retrieving XML data.');
		}
	}
}