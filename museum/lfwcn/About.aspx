<%@ Page language="c#" Codebehind="About.aspx.cs" AutoEventWireup="false" Inherits="LaFWWebApp.About" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" >
<HTML>
	<HEAD>
		<title>LFWCN: About LFWCN.</title>
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
							<li style="BACKGROUND-IMAGE: url(graphics/active_tab.gif)">
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
				<div id="mainBodyDiv">
					<h1>about LFWCN</h1>
					<p>
						Our objectives are to:
					</p>
					<ul>
						<li>
						Create a prototype Louisiana Fish &amp; Wildlife Conservation Network for fish 
						data linking natural history collection and Louisiana State wildlife databases.
						<li>
						Computerize a reasonable portion of existing Louisiana Scientific Permit data.
						<li>
						Georeference data in University of Louisiana Monroe Fish Collection &amp; 
						Louisiana Scientific Permit databases.
						<li>
						Develop an online portal to query and map networked data for the purposes of 
						conservation.
						<li>
						Develop an online portal to enter Louisiana Scientific Permit data.
						<li>
							Utilize the Louisiana Fish &amp; Wildlife Conservation Network to:
							<br>
							1) analyze trends in occurrence and abundance of all of Louisiana’s inland 
							fishes over time
							<br>
							2) model critical habitat areas for threatened and endangered species
							<br>
							3) recommend areas and/or species in need of greater sampling.</li>
					</ul>
					<br>
					<p>
						The ultimate goal of this project is the production of a web portal application 
						capable of providing resource managers, readily accessible information on 
						distribution and abundance trends of fish species, with special emphasis on low 
						and declining populations, and the means to identify factors contributing to 
						species declines and suggest steps that should be taken to protect the species. 
						The portal also gives managers ways of monitoring fish populations and critical 
						habitat in the future, and provides information on the location and condition 
						of key habitats required by the species as well.<br>
						Finally, the resulting application facilitates interagency review of the trends 
						and encourages broad participation in conservation planning, and provides 
						Internet resources for rapid assembly of the most up-to-date summaries of 
						species population trends.
					</p>
				</div>
				<div id="footerDiv">
					<p align="center">
						<a href="./">Home</a> | <a href="About.aspx">About LFWCN</a> | <a href="http://www.museum.tulane.edu">
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
						Wildlife and Fisheries (LDWF).
					</p>
					<p>
						<% Response.Write(ConfigurationSettings.AppSettings["footNotes"]); %>
					</p>
				</div>
			</div>
		</form>
	</body>
</HTML>
