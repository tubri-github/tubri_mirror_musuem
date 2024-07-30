<%@ Page language="c#" Codebehind="PermitReport.aspx.cs" AutoEventWireup="false" Inherits="PermitWebApp.PermitReport" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" >
<HTML>
	<HEAD>
		<title>LFWCN: Permit report.</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK rel="stylesheet" type="text/css" href="styles/LaFWCStyle.css">
		<script type="text/javascript" src="scripts/PermitScript1.js"></script>
		<LINK rel="shortcut icon" type="image/x-icon" href="graphics/favicon.ico">
		<LINK rel="icon" type="image/x-icon" href="graphics/favicon.ico">
	</HEAD>
	<body>
		<form id="aspForm" method="post" runat="server">
			<div id="containerDiv">
				<div id="bannerDiv">
					<div id="logoDiv"><A href="../"><IMG id="logo" src="graphics/LaFWCN_logo.gif"></A></div>
					<div id="searchDiv">
						<% Response.Write(ConfigurationSettings.AppSettings["embellish"]); %>
					</div>
				</div>
				<div id="tabsDiv">
					<div id="tabsSleeveDiv">
						<ul id="tabs" style="Z-INDEX: 0">
							<li style="BACKGROUND-IMAGE: url(graphics/active_tab.gif)">
								<asp:hyperlink id="preportLink" Runat="server">PermitReport</asp:hyperlink></li>
							<li>
								<asp:hyperlink id="editprofilelink" Runat="server">Edit Profile</asp:hyperlink>
								<!-- <li>
								<asp:hyperlink id="logoutLBtn" Runat="server">Logout</asp:hyperlink></li> --></li>
						</ul>
						<div id="logoutDiv"><asp:button id="logoutb" Runat="server" Text="Logout" CssClass="button"></asp:button></div>
					</div>
				</div>
				<div id="tabsBandDiv"><!-- IE QUIRK --></div>
				<div id="mainBodyDiv"><asp:literal id="Literal1" Runat="server"></asp:literal><br>
					<h1>Louisiana Collecting Permit Report</h1>
					<p>Fields marked <font color="red">*</font> are required.</p>
					<asp:label style="DISPLAY: none" id="errorMsg" Runat="server"></asp:label>
					<table>
						<tr>
							<td>
								<p><label>Permit<br>
										Number</label> :</p>
							</td>
							<td><asp:textbox id="permitno" Runat="server"></asp:textbox><font class="looseText" color="red">*</font></td>
							<td>
								<p><label>Field<br>
										Number</label> :</p>
							</td>
							<td><asp:textbox id="fieldNo" Runat="server"></asp:textbox></td>
							<td>
								<p><label>WaterBody<br>
										Type</label> :</p>
							</td>
							<td><asp:dropdownlist id="waterbody" Runat="server"></asp:dropdownlist><font class="looseText" color="red">*</font></td>
							<td>
								<p><label>StartDate</label> :</p>
							</td>
							<td><asp:textbox id="stdate" Runat="server"></asp:textbox><font class="looseText" color="red">*</font></td>
						</tr>
						<tr>
							<td>
								<p><label>Parish</label> :</p>
							</td>
							<td><!--<asp:textbox id="county" Runat="server"></asp:textbox>-->
								<asp:DropDownList ID="parish" Runat="server"></asp:DropDownList>
								<font class="looseText" color="red">*</font>
							</td>
							<td>
								<p><label>Latitude</label> :</p>
							</td>
							<td><asp:textbox id="latitude" Runat="server"></asp:textbox></td>
							<td>
								<p><label>Longitude</label> :</p>
							</td>
							<td><asp:textbox id="longitude" Runat="server"></asp:textbox></td>
						</tr>
					</table>
					<table>
						<tr>
							<td>
								<p><label>Locality</label> :</p>
							</td>
							<td><asp:textbox id="locality" Runat="server"></asp:textbox><font class="looseText" color="red">*</font></td>
						</tr>
						<tr>
							<td>
								<p><label>Collectors</label> :</p>
							</td>
							<td><asp:textbox id="collectors" Runat="server"></asp:textbox><font class="looseText" color="red">*</font></td>
						</tr>
					</table>
					<p>Please enter the number of Specimen that you would like to submit in this 
						report.</p>
					<table align="center">
						<tr>
							<td><asp:textbox id="spnum" Runat="server"></asp:textbox></td>
							<td><asp:button id="sp_button" Runat="server" CssClass="button" Text="Enter"></asp:button></td>
						</tr>
					</table>
					<div style="HEIGHT: 170px; OVERFLOW: auto" id="div1">
						<table id="specimen_Table" border="0" width="570" align="center">
							<tr>
								<th style="WIDTH: 87px" class="contentDiv" width="87">
									<p>Voucher Specimen Status</p>
								</th>
								<th style="WIDTH: 82px" class="contentDiv" width="82">
									<p>Catalog Number<br>
										<font style="FONT-SIZE: 7pt; FONT-WEIGHT: normal" class="looseText" color="red">(required 
											for vouchered specimens)</font></p>
								</th>
								<th style="WIDTH: 290px" class="contentDiv" width="290" align="center">
									<p>Scientific Name&nbsp;&nbsp;&nbsp;&nbsp;<font class="looseText" color="red">*</font></p>
								</th>
								<th class="contentDiv" width="60">
									<p>Total number</p>
								</th>
							</tr>
							<asp:literal id="sptable_literal" Runat="server"></asp:literal></table>
					</div>
					<table align="center">
						<tr>
							<td><asp:button id="update" Runat="server" CssClass="button" Text="Update" Visible="False" Enabled="False"></asp:button></td>
							<td><asp:button id="submit" Runat="server" CssClass="button" Text="Submit" Enabled="False"></asp:button></td>
							<td><asp:button id="Clear" Runat="server" CssClass="button" Text="Clear"></asp:button></td>
						</tr>
					</table>
				</div>
				<div id="footerDiv">
					<p align="center"><A href="../">Home</A> | <A href="../About.aspx">About LFWCN</A> |
						<a href="http://www.tubri.org/museum">About TUMNH</a> | <a href="http://www.sci.tamucc.edu">
							About SCI-TAMUCC</a> | <a href="http://www.ulm.edu">About ULM</a> | <a href="http://www.wlf.state.la.us">
							About LDWF</a> | <A href="../Contact.aspx">Contact</A>
					</p>
					<br>
					<p>Developed by the Tulane University Museum of Natural History (TUMNH), 
						and&nbsp;the College of Science and Technology at Texas A&amp;M 
						University-Corpus Christi (SCI-TAMUCC), with contributions from the University 
						of Louisiana Monroe (ULM); for and sponsored by the Louisiana Department of 
						Wildlife and Fisheries (LDWF).&nbsp;&nbsp;
					</p>
					<p>
						<% Response.Write(ConfigurationSettings.AppSettings["footNotes"]); %>
					</p>
				</div>
			</div>
		</form>
	</body>
</HTML>
