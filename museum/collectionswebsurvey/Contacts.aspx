<%@ Page language="c#" Codebehind="Contacts.aspx.cs" AutoEventWireup="false" Inherits="RCNSWebApp.Contacts" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>CollectionsWeb Survey:	Contacts</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link type="text/css" rel="stylesheet" href="RCNSStyle.css">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="ASPForm" method="post" runat="server">
			<div id="containerDiv">
				<div id="bannerDiv">
					<div id="logoDiv">
						<a href="./"><img id="logo" runat="server" style="DISPLAY: block"></a>
					</div>
				</div>
				<div id="menuDiv">
					<ul id="tabs">
						<li></li>
						<li>
							<a href="./">Home</a></li>
						<li>
							<a href="Instructions.aspx">Survey instructions</a></li>
						<li>
							<a href="About.aspx">About us</a></li>
						<li>
							<a href="Contacts.aspx" class="activeA">Contacts</a></li>
						<li></li>
					</ul>
				</div>
				<div id="contentDiv">
					<div id="textDiv">
						<h2>contacts</h2>
						<p>
							About this site:<br> 
							<span style="margin-left: 90px">Hank Bart, Director and Curator of Fishes<br></span>
							<span style="margin-left: 90px">Tulane University Museum of Natural History<br></span>
							<span style="margin-left: 90px">3705 Main Street<br></span>
							<span style="margin-left: 90px">Belle Chasse, LA 70037, USA<br></span>
							<span style="margin-left: 90px">Voice: 504-394-1711<br></span>
							<span style="margin-left: 90px">e-mail: <a href="mailto:hank@www.tubri.org/museum">hank@www.tubri.org/museum</a></span>
						</p>
						<p>
							About the RCN:<br> 
							<span style="margin-left: 90px">Alan Prather<br></span>
							<span style="margin-left: 90px">Michigan State University Herbarium<br></span>
							<span style="margin-left: 90px">166 Plant Biology Building<br></span>
							<span style="margin-left: 90px">East Lansing, Michigan 48824-1312, USA<br></span>
							<span style="margin-left: 90px">Voice: 517.355.4695<br></span>
						</p>
						<p>
							About BCI:<br>
							<span style="margin-left: 90px"><a href="http://www.biodiversitycollectionsindex.org/static/help.html" target="_blank">http://www.biodiversitycollectionsindex.org/static/help.html</a></span>
						</p>
					</div>
					<div id="footerDiv">
						<p>
								<% Response.Write(ConfigurationSettings.AppSettings["footNotes"]); %>
						</p>
						<div style="position: relative; float: left; left: 90%; top: -59%">
							<span>Sponsored by:</span><br>
							<a href="http://www.nsf.gov" target="_blank"><img src="graphics/nsf.gif" style="margin-top: 5px; display: inline-block" /></a>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
