<%@ Page language="c#" Codebehind="Contact.aspx.cs" AutoEventWireup="false" Inherits="LaFWWebApp.Contact" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" >
<HTML>
  <HEAD>
		<title>LFWCN: Contacts.</title>
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
							<li style="BACKGROUND-IMAGE: url(graphics/active_tab.gif)">
								<a href="Contact.aspx">Contact</a></li>
						</ul>
					</div>
				</div>
				<div id="tabsBandDiv"><!-- IE QUIRK --></div>
				<div id="mainBodyDiv">
					<h1>Project participants' contacts</h1>
					<p>
						Louisiana Department of Wildlife and Fisheries<br>
						2000 Quail Drive Baton Rouge, LA 70808 (225) 765-2800.
					</p>
					<ul>
						<li>
							<font style="FONT-WEIGHT: bold">LDWF contact name</font>.</li></ul>
					<br>
					<p>
						College of Science and Technology, Texas A&amp;M University, Corpus Christi<br>
						6300 Ocean Drive, Corpus Christi, TX 78412.<br>
						Phone: (361)-825-3655. FAX: (361)-825-5789.
					</p>
					<ul>
						<li>
							<font style="FONT-WEIGHT: bold">Dr. Frank L. Pezold, III</font>, Dean of the 
							College of Science and Technology, Texas A&amp;M University, Corpus Christi.<br>
							Email: <a href="mailto:frank.pezold@tamucc.edu">frank.pezold@tamucc.edu</a>. 
  
						<li>
							<font style="FONT-WEIGHT: bold">Ms. Leslie Patterson</font>.<br>
							Email: <a href="mailto:lpatterson@islander.tamucc.edu">lpatterson@islander.tamucc.edu</a>
						</li>
					</ul>
					<br>
					<p>
						Tulane University Museum of Natural History<br>
						3705 Main St, Building A-3. Belle Chasse, LA 70075.<br>
						Phone: (504)-394-1711. FAX: (504)-394-5045.
					</p>
					<ul>
						<li>
							<font style="FONT-WEIGHT: bold">Dr. Henry L. Bart, Jr.</font>, Principal 
							Investigator, Curator of Fishes and Director of the Tulane University Museum of 
							Natural History, Associate Professor of Ecology, Evolution and Organismal 
							Biology.<br>
							Email: <a href="mailto:hank@www.tubri.org/museum">hank@www.tubri.org/museum</a>.
							<br>
							More information on <a class="BodyText" href="http://www.tubri.org/museum/hank">Dr.
								Hank Bart's web page</a>.
						</li>
						<li>
							<font style="FONT-WEIGHT: bold">Mr. Nelson E. Rios</font>, GEOLocate Developer 
							and Manager of Collections and Informatics for the Tulane University Museum of 
							Natural History.<br>
							Email:<a href="mailto:nelson@www.tubri.org/museum">nelson@www.tubri.org/museum</a>.
						</li>
						<li>
							<font style="FONT-WEIGHT: bold">Mr. Justin Mann</font>.<br>
							Email:<a href="mailto:jmann@tulane.edu">jmann@tulane.edu</a>.
						</li>
						<li>
							<font style="FONT-WEIGHT: bold">Mr. Djihbrihou Abibou</font>, Programmer 
							Analyst.<br>
							Email:<a href="mailto:djihbril@www.tubri.org/museum">djihbril@www.tubri.org/museum</a>.
						</li>
						<li>
							<font style="FONT-WEIGHT: bold">Ms. Shwetha G. Belame</font>, Programmer<br>
							Email:<a href="mailto:Shwetha@www.tubri.org/museum">Shwetha@www.tubri.org/museum</a>.
						</li>
					</ul>
					<br>
					<p>
						Contributing Natural History Collection from: University of Louisiana Monroe<br>
						700 University Ave., Monroe, LA 71209.<br>
						Phone: (318)-342-1000.
					</p>
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
