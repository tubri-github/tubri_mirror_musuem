<%@ Page language="c#" Codebehind="DataSources.aspx.cs" AutoEventWireup="false" Inherits="LaFWWebApp.DataSources" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" >
<HTML>
	<HEAD>
		<title>LFWCN: Data sources.</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link type="text/css" rel="stylesheet" href="styles/LaFWCStyle.css">
		<script type="text/javascript" src="scripts/LaFWCScript.js"></script>
		<link href="graphics/favicon.ico" type="image/x-icon" rel="shortcut icon">
		<link href="graphics/favicon.ico" type="image/x-icon" rel="icon">
	</HEAD>
	<body>
		<form id="aspForm" method="post" runat="server">
			<div id="containerDiv">
				<div id="bannerDiv">
					<div id="logoDiv"><a href="./"><img id="logo" src="graphics/LaFWCN_logo.gif"></a></div>
					<div id="searchDiv">
						<% Response.Write(ConfigurationSettings.AppSettings["embellish"]); %>
					</div>
				</div>
				<div id="tabsDiv">
					<div id="tabsSleeveDiv">
						<ul id="tabs">
							<li>
								<a href="./">Home</a></li>
							<li>
								<a href="About.aspx">About this project</a></li>
							<li>
								<a href="Search.aspx">Search</a></li>
							<li style="BACKGROUND-IMAGE: url(graphics/active_tab.gif)">
								<a href="DataSources.aspx">Data sources</a></li>
							<li>
								<a href="SpeciesProf.aspx">Species profile</a></li>
							<li>
								<a href="Contact.aspx">Contact</a></li>
						</ul>
					</div>
				</div>
				<div id="tabsBandDiv"><!-- IE QUIRK --></div>
				<div id="mainBodyDiv">
					<h1>data sources details</h1>
					<table id="formatingTbl" width="100%">
						<tr>
							<td width="60%" height="400px" valign="top">
								<div id="DSMetadataDiv" runat="server">
									<p><u>Selected data source</u><br>
									</p>
									<p>name: TU Fish</p>
									<p>status: ready</p>
									<p>last cached: 01/28/2008 1:32:45 PM</p>
									<p>contact: Nelson E. Rios,<br>
										3705 Main St, Building A-3. Belle Chasse, LA 70075.<br>
										Phone: (504)-394-1711. FAX: (504)-394-5045.<br>
										Email: <a href="mailto:nelson@www.tubri.org/museum">nelson@www.tubri.org/museum</a>.
									</p>
									<p>
										Description: Tulane University Museum of Natural History Fish Collection.
									</p>
								</div>
							</td>
							<td width="40%" height="400px" valign="top">
								<div id="DSDiv" runat="server" class="contentDiv" style="WIDTH: 98%; HEIGHT: 100%" align="center">
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div id="footerDiv">
					<p align="center">
						<a href="./">Home</a> | <a href="About.aspx">About LFWCN</a> | <a href="http://www.tubri.org/museum">
							About TUMNH</a> | <a href="http://www.sci.tamucc.edu">About SCI-TAMUCC</a> |
						<a href="http://www.ulm.edu">About ULM</a> | <a href="http://www.wlf.state.la.us">About 
							LDWF</a> | <a href="Contact.aspx">Contact</a>
					</p>
					<br>
					<p>
						Developed by the Tulane University Museum of Natural History (TUMNH), 
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
