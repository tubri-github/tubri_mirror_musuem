<%@ Page language="c#" Codebehind="Search.aspx.cs" AutoEventWireup="false" Inherits="LaFWWebApp.Search" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>LFWCN: Search.</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK rel="stylesheet" type="text/css" href="styles/LaFWCStyle.css">
		<script type="text/javascript" src="scripts/LaFWCScript.js"></script>
		<script type="text/javascript" src="scripts/MappingScript.js"></script>
		<LINK rel="shortcut icon" type="image/x-icon" href="graphics/favicon.ico">
		<LINK rel="icon" type="image/x-icon" href="graphics/favicon.ico">
	</HEAD>
	<body>
		<form id="mapserv" method="post" runat="server">
			<IMG style="POSITION: absolute; DISPLAY: none; TOP: 0px; LEFT: 0px" id="img0" src="graphics/clickbox0.gif">
			<IMG style="POSITION: absolute; DISPLAY: none; TOP: 0px; LEFT: 0px" id="img1" src="graphics/clickbox1.gif">
			<IMG style="POSITION: absolute; DISPLAY: none; TOP: 0px; LEFT: 0px" id="img2" src="graphics/clickbox2.gif">
			<IMG style="POSITION: absolute; DISPLAY: none; TOP: 0px; LEFT: 0px" id="img3" src="graphics/clickbox3.gif">
			<IMG style="POSITION: absolute; DISPLAY: none; TOP: 0px; LEFT: 0px" id="img4" src="graphics/clickbox4.gif">
			<div id="containerDiv">
				<div id="bannerDiv">
					<div id="logoDiv"><A href="./"><IMG id="logo" src="graphics/LaFWCN_logo.gif"></A></div>
					<div id="searchDiv">
						<% Response.Write(ConfigurationSettings.AppSettings["embellish"]); %>
					</div>
				</div>
				<div id="tabsDiv">
					<div id="tabsSleeveDiv">
						<ul id="tabs">
							<li>
								<A href="./">Home</A>
							</li>
							<li>
								<A href="About.aspx">About this project</A>
							</li>
							<li style="BACKGROUND-IMAGE: url(graphics/active_tab.gif)">
								<A href="Search.aspx">Search</A>
							</li>
							<li>
								<A href="DataSources.aspx">Data sources</A>
							</li>
							<li>
								<a href="SpeciesProf.aspx">Species profile</a>
							</li>
							<li>
								<A href="Contact.aspx">Contact</A>
							</li>
						</ul>
					</div>
				</div>
				<div id="tabsBandDiv"><!-- IE QUIRK --></div>
				<div id="mainBodyDiv">
					<h1>Advanced Search</h1>
					<table id="mappingAppTbl" border="0" cellSpacing="0" cellPadding="0">
						<tr>
							<td bgColor="#666666" height="18" vAlign="bottom" colSpan="3"><table id="top_pan" border="0" cellSpacing="0" cellPadding="0" width="100%" align="center"
									height="100%">
									<tr>
										<td vAlign="top" align="left"><A href="javascript:domouseclick('nw', 0)"><IMG border="0" name="nw" alt="Pan north-west" src="graphics/nw.gif"></A></td>
										<td vAlign="middle" align="center"></td>
										<TD vAlign="top" align="center"><A href="javascript:domouseclick('n', 0)"><IMG border="0" name="n" alt="Pan north" src="graphics/n.gif"></A></TD>
										<td vAlign="middle" align="center"></td>
										<TD vAlign="top" align="right"><A href="javascript:domouseclick('ne', 0)"><IMG border="0" name="ne" alt="Pan north-east" src="graphics/ne.gif"></A></TD>
									</tr>
								</table>
							</td>
							<td bgColor="#cccccc" vAlign="top" rowSpan="3" width="50">
								<table id="map_controls" border="0" cellSpacing="0" cellPadding="0" width="30" align="center">
									<tr>
										<td vAlign="middle" align="center"><A onmouseover="domouseover('globe')" onmouseout="domouseout('globe')" href="javascript:domouseclick('globe', 0)"><IMG border="0" name="globe" src="graphics/globe.gif"></A>
											<br>
											<span style="FONT-FAMILY: Sylfaen; FONT-SIZE: 11px">whole map</span></td>
									</tr>
									<tr>
										<td vAlign="middle" align="center"><A onmouseover="domouseover('zoomin')" onmouseout="domouseout('zoomin')" href="javascript:domouseclick('zoomin', 0)"><IMG border="0" name="zoomin" src="graphics/zoomin.gif"></A><br>
											<span style="FONT-FAMILY: Sylfaen; FONT-SIZE: 11px">zoom in</span></td>
									</tr>
									<tr>
										<td vAlign="middle" align="center"><A onmouseover="domouseover('zoomout')" onmouseout="domouseout('zoomout')" href="javascript:domouseclick('zoomout', 0)"><IMG border="0" name="zoomout" src="graphics/zoomout.gif"></A><br>
											<span style="FONT-FAMILY: Sylfaen; FONT-SIZE: 11px">zoom out</span></td>
									</tr>
									<tr>
										<td vAlign="middle" align="center"><A onmouseover="domouseover('help')" onmouseout="domouseout('help')" href="javascript:domouseclick('help', 0)"><IMG border="0" name="help" src="graphics/help.gif"></A><br>
											<span style="FONT-FAMILY: Sylfaen; FONT-SIZE: 11px">help</span></td>
									</tr>
								</table>
							</td>
							<td vAlign="top" rowSpan="5" align="left">
								<table id="extra2" border="0" cellSpacing="0" cellPadding="0">
									<tr>
										<td bgColor="#666666" height="18" colSpan="3"></td>
									</tr>
									<tr>
										<td bgColor="#666666" width="18"></td>
										<td vAlign="top" align="left"><asp:imagebutton id="ibReference" onmousemove="showcoordinates(event)" onmouseout="resetcoords(event)"
												ImageAlign="AbsMiddle" Runat="server"></asp:imagebutton></td>
										<td bgColor="#666666" width="18"></td>
									</tr>
									<tr>
										<td bgColor="#666666" height="18" colSpan="3"></td>
									</tr>
									<tr>
										<td bgColor="#999999" height="10" colSpan="3"></td>
									</tr>
									<tr>
										<td colSpan="3"><span>Please select layers to show:</span>
										</td>
									</tr>
									<tr>
										<td colSpan="3"><asp:radiobuttonlist style="FONT-SIZE: 7pt" id="otherBkgnds" Runat="server" CssClass="looseLinks" RepeatDirection="Horizontal"></asp:radiobuttonlist><select style="WIDTH: 200px; DISPLAY: none; FONT-SIZE: 7pt" id="lBlayers" class="looseText"
												multiple onchange="showLayers()" size="5" name="lBlayers" runat="server"></select>
										</td>
									</tr>
									<tr>
										<td vAlign="top" colSpan="3" align="left"><asp:image id="imgLegend" runat="server" ImageAlign="AbsMiddle" AlternateText="Legend"></asp:image></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td bgColor="#666666" vAlign="middle" width="18" align="right"><table id="left_pan" border="0" cellSpacing="0" cellPadding="0" width="100%" height="100%">
									<tr>
										<td vAlign="middle" align="center"></td>
									</tr>
									<tr>
										<td vAlign="middle" align="center"><A href="javascript:domouseclick('w', 0)"><IMG border="0" name="w" alt="Pan west" src="graphics/w.gif"></A></td>
									</tr>
									<tr>
										<td vAlign="middle" align="center"></td>
									</tr>
								</table>
							</td>
							<td bgColor="#0093ff" height="100%" vAlign="top" align="left"><asp:imagebutton id="ibLA" onmouseup="stopDBox(this)" onmousemove="showcoordinates(event)" onmouseout="resetcoords(event)"
									onmousedown="startDBox(event)" runat="server" ImageAlign="AbsMiddle"></asp:imagebutton></td>
							<td bgColor="#666666" vAlign="middle" width="18" align="left"><table id="right_pan" border="0" cellSpacing="0" cellPadding="0" width="100%" height="100%">
									<tr>
										<td vAlign="middle" align="center"></td>
									</tr>
									<tr>
										<td vAlign="middle" align="center"><A href="javascript:domouseclick('e', 0)"><IMG border="0" name="e" alt="Pan east" src="graphics/e.gif"></A></td>
									</tr>
									<tr>
										<td vAlign="middle" align="center"></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td bgColor="#666666" height="18" vAlign="top" colSpan="3">
								<table id="bottom_pan" width="100%" align="center" height="100%">
									<tr>
										<td vAlign="top" align="left"><A href="javascript:domouseclick('sw', 0)"><IMG border="0" name="sw" alt="Pan south-west" src="graphics/sw.gif"></A></td>
										<td vAlign="top" align="center"><asp:image id="imgScaleMi" runat="server" ImageAlign="AbsMiddle" AlternateText="Scalebar (mi)"></asp:image></td>
										<td vAlign="top" align="center"><A href="javascript:domouseclick('s', 0)"><IMG border="0" name="s" alt="Pan south" src="graphics/s.gif"></A></td>
										<td vAlign="top" align="center"><asp:image id="imgScaleKm" runat="server" ImageAlign="AbsMiddle" AlternateText="Scalebar (km)"></asp:image></td>
										<td vAlign="top" align="right"><A href="javascript:domouseclick('se', 0)"><IMG border="0" name="se" alt="Pan south-east" src="graphics/se.gif"></A></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td bgColor="#999999" height="18" vAlign="top" colSpan="4">
								<table id="extra1" border="0" cellSpacing="0" cellPadding="0">
									<tr>
										<td vAlign="middle" width="130" align="left"><asp:label id="lblLon" runat="server" Font-Names="Sylfaen" ForeColor="White" Font-Size="8pt">Longitude: <span id="qmLon" style="font-family: Sylfaen; font-size: 8pt">?</span></asp:label></td>
										<td width="10"></td>
										<td vAlign="middle" width="130" align="left"><asp:label id="lblLat" runat="server" Font-Names="Sylfaen" ForeColor="White" Font-Size="8pt">Latitude: <span id="qmLat" style="font-family: Sylfaen; font-size: 8pt">?</span></asp:label></td>
										<td width="195"></td>
										<td vAlign="middle" width="100" align="left"><asp:label id="lblZoom" runat="server" Font-Names="Sylfaen" ForeColor="White" Font-Size="8pt">Zoom level: <span id="zmlvl" style="font-family: Sylfaen; font-size: 8pt">0</span>X</asp:label></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="0" colSpan="4"><!-- stretch band for excess legend --></td>
						</tr>
					</table>
					<!--End mappingAppTbl-->
					<table style="TEXT-ALIGN: center" class="query-table" rules="cols" borderColor="black"
						cellPadding="2" width="100%" frame="below">
						<tr>
							<th class="contentDiv">
								Select Fish To Map</th>
							<th class="contentDiv">
								Physical Location</th></tr>
						<tr>
							<td vAlign="top">
								<table>
									<tr>
										<td>
											<p><label for="scientific_name">Scientific</label>:</p>
										</td>
										<td><asp:dropdownlist id="scientific_name" Runat="server" Width="273px"></asp:dropdownlist></td>
									</tr>
									<tr>
										<td>
											<p><label for="common_name">Common</label>:</p>
										</td>
										<td><asp:dropdownlist id="common_name" Runat="server" Width="273px"></asp:dropdownlist></td>
									</tr>
									<tr>
										<td>
											<p><label for="family_name">Family</label>:</p>
										</td>
										<td><asp:dropdownlist id="family_name" runat="server" Width="273"></asp:dropdownlist></td>
									</tr>
									<tr>
										<td>
											<p><label for="id_qg0_protection_status">Protection</label>:</p>
										</td>
										<td><select style="WIDTH: 21em" id="id_qg0_protection_status" disabled size="1" name="qg0_protection_status">
												<option selected value="">Any</option>
												<option value="NOT APPLICABLE">Not Applicable</option>
												<option value="SPECIAL CONCERN/NO LAWS REGULA">Special Concern/No Laws Regula</option>
												<option value="SPECIAL CONCERN/TAKE REGULATED">Special Concern/Take Regulated</option>
											</select>
										</td>
									</tr>
								</table>
							</td>
							<td vAlign="top">
								<table>
									<tr>
										<td>
											<p>Locality:</p>
										</td>
										<td><asp:textbox id="locality" Runat="server"></asp:textbox></td>
									</tr>
									<tr>
										<td>
											<p><label for="county">Parish</label>:</p>
										</td>
										<td><asp:dropdownlist id="parish" runat="server" Width="273"></asp:dropdownlist></td>
									</tr>
									<tr>
										<td>
											<p><label for="id_ecoregion2">Ecoregions<br>
													Level IV</label>:</p>
										</td>
										<td><asp:dropdownlist id="level4" Runat="server"></asp:dropdownlist></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<th class="contentDiv">
								Other Criteria</th>
							<th>
								USGS HUCs</th></tr>
						<tr>
							<td style="TEXT-ALIGN: left" vAlign="top">
								<table>
									<tr>
										<td style="BORDER-BOTTOM: black 0px solid; TEXT-ALIGN: left" colSpan="3">
											<p>Select Range of Collection Date</p>
										</td>
									</tr>
									<tr>
										<td style="BORDER-BOTTOM: black 1px solid; TEXT-ALIGN: left" colSpan="3">
											<p><label for="startmonth">Start Date</label></p>
										</td>
									</tr>
									<tr>
										<td><asp:dropdownlist id="id_startyear" Runat="server" Width="96"></asp:dropdownlist></td>
										<td><asp:dropdownlist id="id_startmonth" Runat="server" Width="80"></asp:dropdownlist></td>
										<td><asp:dropdownlist id="id_startday" Runat="server" Width="80"></asp:dropdownlist></td>
									</tr>
									<tr>
										<td style="BORDER-BOTTOM: black 1px solid; TEXT-ALIGN: left" colSpan="3">
											<p><label for="endmonth">End Date</label></p>
										</td>
									</tr>
									<tr>
										<td><asp:dropdownlist id="id_endyear" Runat="server" Width="96"></asp:dropdownlist></td>
										<td><asp:dropdownlist id="id_endmonth" Runat="server" Width="80"></asp:dropdownlist></td>
										<td><asp:dropdownlist id="id_endday" Runat="server" Width="80"></asp:dropdownlist></td>
									</tr>
								</table>
								<table>
									<tr>
										<td></td>
									</tr>
									<tr>
										<td style="BORDER-BOTTOM: black 0px solid; TEXT-ALIGN: left" colSpan="3">
											<p>Query these results for all surrounding collections</p>
										</td>
									</tr>
									<tr>
										<td>
											<asp:dropdownlist id="id_surrColl" Runat="server" Width="60" Enabled="False"></asp:dropdownlist><span>Kilometers</span>
											<span>
												<asp:Button ID="button_surrColl" Runat="server" CssClass="button" Text="Download" Visible="False"></asp:Button></span>
										</td>
									</tr>
									<tr>
										<td>
											<asp:label style="DISPLAY: none" id="ResMsg" Runat="server"></asp:label>
										</td>
									</tr>
								</table>
								<table>
									<tr>
										<td>
											<p>&nbsp;</p>
										</td>
										<td>&nbsp;
										</td>
									</tr>
								</table>
							</td>
							<td vAlign="top">
								<table>
									<tr>
										<td vAlign="top">
											<p><label for="usgs_hucs">Region</label>:</p>
										</td>
										<td><asp:listbox id="id_usgs_hucs" runat="server" Width="300" Rows="3" SelectionMode="Multiple"></asp:listbox></td>
									</tr>
									<tr>
										<td>
											<p><label for="Sub_Reg">SubRegion</label>:</p>
										</td>
										<td><asp:listbox id="id_sub_reg" Runat="server" Width="300" Rows="3" SelectionMode="Multiple"></asp:listbox></td>
									</tr>
									<tr>
										<td>
											<p><label for="Acc">Accounting<br>
													Unit</label>:</p>
										</td>
										<td><asp:listbox id="id_acc" Runat="server" Width="300" Rows="3" SelectionMode="Multiple"></asp:listbox></td>
									</tr>
									<tr>
										<td>
											<p><label for="Cat">Cataloging
													<br>
													Unit</label>:</p>
										</td>
										<td><asp:listbox id="id_cat" Runat="server" Width="300" Rows="3" SelectionMode="Multiple"></asp:listbox></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<p style="MARGIN-TOP: 5px"><asp:button id="advSearchBtn" Runat="server" CssClass="button" Text="Search"></asp:button>&nbsp;&nbsp;
						<asp:button id="advSearchCancelBtn" Runat="server" CssClass="button" Text="Clear"></asp:button>&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:button id="resultsDownloadBtn" Runat="server" CssClass="button" Text="Download Results"></asp:button></p>
				</div>
				<div id="footerDiv">
					<p align="center"><A href="./">Home</A> | <A href="About.aspx">About LFWCN</A> | <a href="http://www.museum.tulane.edu">
							About TUMNH</a> | <a href="http://www.sci.tamucc.edu">About SCI-TAMUCC</a> |
						<a href="http://www.ulm.edu">About ULM</a> | <a href="http://www.wlf.state.la.us">About 
							LDWF</a> | <A href="Contact.aspx">Contact</A>
					</p>
					<br>
					<p>Developed by the Tulane University Museum of Natural History (TUMNH), 
						and&nbsp;the College of Science and Technology at Texas A&amp;M 
						University-Corpus Christi (SCI-TAMUCC), with contributions from the University 
						of Louisiana Monroe (ULM); for and sponsored by the Louisiana Department of 
						Wildlife and Fisheries (LDWF).
					</p>
					<p>Copyright © 2008 Tulane University Museum of Natural History. All rights 
						reserved.
					</p>
				</div>
			</div>
		</form>
		<div style="Z-INDEX: 20; BORDER-BOTTOM: black 2px solid; POSITION: absolute; BORDER-LEFT: black 2px solid; BACKGROUND-COLOR: transparent; WIDTH: 0px; HEIGHT: 0px; VISIBILITY: hidden; BORDER-TOP: black 2px solid; TOP: 0px; BORDER-RIGHT: black 2px solid; LEFT: 0px"
			id="dBoxBorder" onmouseup="stopDBox(this)" tabIndex="0">
			<div style="FILTER: alpha(opacity=50); BACKGROUND-COLOR: red; WIDTH: 100%; HEIGHT: 100%; opacity: .5; moz-opacity: .5; khtmlopacity: .5"
				id="dBox"><!-- This fixes IE 5 height bug where any height less than 20px is rendered as 20px--></div>
		</div>
		<div style="Z-INDEX: 20; BORDER-BOTTOM: black 1px solid; POSITION: absolute; TEXT-ALIGN: center; BORDER-LEFT: black 1px solid; BACKGROUND-COLOR: transparent; WIDTH: 175px; HEIGHT: 35px; VISIBILITY: hidden; BORDER-TOP: black 1px solid; TOP: 0px; BORDER-RIGHT: black 1px solid; LEFT: 0px"
			id="helpDivBorder">
			<div style="FILTER: alpha(opacity=80); BACKGROUND-COLOR: beige; WIDTH: 100%; HEIGHT: 100%; FONT-SIZE: 9pt; FONT-WEIGHT: bold; opacity: .8; moz-opacity: .8; khtmlopacity: .8"
				id="helpDiv" class="looseText" align="left">
				<div style="FLOAT: right"><IMG src="graphics/help.gif"></div>
				First-time visitors,<br>
				please click on help.</div>
		</div>
		<div style="Z-INDEX: 25; POSITION: absolute; BACKGROUND-COLOR: transparent; WIDTH: 363px; HEIGHT: 285px; VISIBILITY: hidden; OVERFLOW: hidden; TOP: 0px; BORDER-RIGHT: #cabc9c 1px solid; LEFT: 0px"
			id="pointDivBorder" align="left">
			<div style="FILTER: alpha(opacity=86); BORDER-LEFT: #cabc9c 1px solid; BACKGROUND-COLOR: beige; WIDTH: 362px; HEIGHT: 268px; OVERFLOW: hidden; opacity: .86; moz-opacity: .86; khtmlopacity: .86"
				id="pointDiv" align="left" runat="server"></div>
			<div style="BACKGROUND-COLOR: transparent; WIDTH: 341px; FLOAT: left; BORDER-TOP: #cabc9c 1px solid"
				id="spaceDiv"></div>
			<div style="BORDER-BOTTOM: #cabc9c 1px solid; FILTER: alpha(opacity=86); BORDER-LEFT: #cabc9c 1px solid; BACKGROUND-COLOR: beige; WIDTH: 20px; FLOAT: right; HEIGHT: 16px; OVERFLOW: hidden; opacity: .86; moz-opacity: .86; khtmlopacity: .86"
				id="show_HideDiv">
				<table height="100%">
					<tr>
						<td vAlign="bottom"><A style="DISPLAY: none" id="showArrow" onmouseover="domouseover('show')" onmouseout="domouseout('show')"
								href="javascript:hide_ShowPtInfo('show')"><IMG border="0" name="show" src="graphics/show.gif"></A>
							<A style="DISPLAY: block" id="hideArrow" onmouseover="domouseover('hide')" onmouseout="domouseout('hide')"
								href="javascript:hide_ShowPtInfo('hide')"><IMG src="graphics/hide.gif" border="0" name="hide"></A>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="looseText" id="messageDivbg" style="Z-INDEX: 20; POSITION: absolute; BORDER-BOTTOM-STYLE: none; FILTER: alpha(opacity=45); BORDER-RIGHT-STYLE: none; BACKGROUND-COLOR: black; WIDTH: auto; BORDER-TOP-STYLE: none; HEIGHT: 16px; VISIBILITY: hidden; BORDER-LEFT-STYLE: none; TOP: 0px; FONT-WEIGHT: bold; LEFT: 0px; opacity: .45; moz-opacity: .45; khtmlopacity: .45"><span id="mMask"></span></div>
		<div class="looseText" id="messageDiv" style="Z-INDEX: 21; POSITION: absolute; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none; BACKGROUND-COLOR: transparent; WIDTH: auto; BORDER-TOP-STYLE: none; HEIGHT: 16px; VISIBILITY: hidden; COLOR: #ccff00; BORDER-LEFT-STYLE: none; TOP: 0px; FONT-WEIGHT: bold; LEFT: 0px"
			align="left"><span id="message"></span></div>
		<script language="javascript"><!--
			var elem = document.getElementById("ibLA");
			var mWidth = document.forms['mapserv'].mapWidth.value;
			var mHeight = document.forms['mapserv'].mapHeight.value;
			
			if( elem.offsetParent )
			{
				for( var posX = 0, posY = 0; elem.offsetParent; elem = elem.offsetParent )
				{
					posX += elem.offsetLeft;
					posY += elem.offsetTop;
				}
				x = posX;
				y = posY
			}
			else
			{
				x = elem.x;
				y = elem.y;
			}
			
			document.getElementById('helpDivBorder').style.left = x + (mWidth - parseInt(document.getElementById('helpDivBorder').style.width))/2 + 'px';
			document.getElementById('helpDivBorder').style.top = y + (mHeight - parseInt(document.getElementById('helpDivBorder').style.height))/2 + 'px';
			document.getElementById('helpDivBorder').style.visibility = 'visible';
			setTimeout("document.getElementById('helpDivBorder').style.visibility = 'hidden'", 2000);
		// --></script>
	</body>
</HTML>
