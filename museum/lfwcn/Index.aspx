<%@ Page language="c#" Codebehind="Index.aspx.cs" AutoEventWireup="false" Inherits="LaFWWebApp.Index" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" >
<HTML>
	<HEAD>
		<title>LFWCN: Home.</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="styles/LaFWCStyle.css" type="text/css" rel="stylesheet">
		<script src="scripts/LaFWCScript.js" type="text/javascript"></script>
		<LINK href="graphics/favicon.ico" type="image/x-icon" rel="shortcut icon">
		<LINK href="graphics/favicon.ico" type="image/x-icon" rel="icon">
	</HEAD>
	<body>
		<form id="aspForm" method="post" runat="server">
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
							<li style="BACKGROUND-IMAGE: url(graphics/active_tab.gif)">
								<A href="./">Home</A>
							</li>
							<li>
								<A href="About.aspx">About this project</A>
							</li>
							<li>
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
					<h1>welcome to the louisiana fish &amp; wildlife<br>
						conservation network (LFWCN)</h1>
					<table id="formatingTbl" width="100%">
						<tr>
							<td vAlign="top" width="60%" height="300">
								<p>LFWCN is an initiative born from the need for a computer information system for 
									Fish and Wildlife conservation in Louisiana. The development team for this 
									project is led by, Dr. Henry L. Bart Jr. and Nelson E. Rios of the <a href="http://www.tubri.org/museum">
										Tulane University Museum of Natural History</a>, and Dr. Frank L. Pezold 
									III of the <a href="http://www.sci.tamucc.edu">College of Science and Technology at 
										Texas A&amp;M University-Corpus Christi</a>, with contributions from the <a href="http://www.ulm.edu">
										University of Louisiana Monroe</a>. Funding and sponsoring are provided by 
									the <a href="http://www.wlf.state.la.us">Louisiana Department of Wildlife and 
										Fisheries</a>.
								</p>
								<p>This fish data prototype system's objectives are, among others, to link natural 
									history collections and Louisiana State Wildlife databases, and computerize 
									Louisiana Scientific Permit data. <A href="About.aspx">Click here</A> for more 
									information about the project.
								</p>
							</td>
							<td width="40%" height="300">
								<div class="contentDiv" id="homeDSDiv" style="WIDTH: 98%; HEIGHT: 100%" align="center"
									runat="server"></div>
							</td>
						</tr>
						<tr>
							<td width="100%" colSpan="2"></td>
						</tr>
					</table>
				</div>
				<div id="footerDiv">
					<p align="center"><A href="./">Home</A> | <A href="About.aspx">About LFWCN</A> | <a href="http://www.tubri.org/museum">
							About TUMNH</a> | <a href="http://www.sci.tamucc.edu">About SCI-TAMUCC</a> |
						<a href="http://www.ulm.edu">About ULM</a> | <a href="http://www.wlf.state.la.us">About 
							LDWF</a> | <A href="Contact.aspx">Contact</A>
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
