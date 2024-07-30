<%@ Page language="c#" Codebehind="Error.aspx.cs" AutoEventWireup="false" Inherits="LaFWWebApp.Error" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" >
<HTML>
	<HEAD>
		<title>LFWCN: Error.</title>
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
							<li>
								<a href="DataSources.aspx">Data sources</a></li>
							<li>
								<a href="SpeciesProf.aspx">Species profile</a></li>
							<li>
								<a href="Contact.aspx">Contact</a></li>
						</ul>
					</div>
				</div>
				<div id="tabsBandDiv"><!-- IE QUIRK --></div>
				<div id="mainBodyDiv" runat="server">
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
