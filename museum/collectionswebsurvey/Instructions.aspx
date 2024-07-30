<%@ Page language="c#" Codebehind="Instructions.aspx.cs" AutoEventWireup="false" Inherits="RCNSWebApp.Instructions" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>CollectionsWeb Survey: Instructions</title>
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
							<a href="Instructions.aspx" class="activeA">Survey instructions</a></li>
						<li>
							<a href="About.aspx">About us</a></li>
						<li>
							<a href="Contacts.aspx">Contacts</a></li>
						<li></li>
					</ul>
				</div>
				<div id="contentDiv">
					<div id="textDiv">
						<h2>survey instructions</h2>
						<p>Prior to taking the survey, you will need to identify yourself and select your collection from the list that appears after choosing the state it resides within.  Then, click the text that reads "Start New Survey".  If your collection's name does not appear in the list, you will be instructed to click a link that will send you to the Biodiversity Collections Index's (BCI) website, so you can register it. <span style="font-weight: bold">Please register your collection even if it resides within a larger museum or institution that is already registered in BCI.</span> Once you have registered in BCI, return to the survey and choose your newly registered collection from the dropdown list.</p>
						<p>We have programmed features that allow you to pause the survey without completing it, skip questions, return to previous questions, change your answers, or navigate among question in the survey.  In the event that you pause the survey, you will be assigned a number that you will need to rejoin the survey later (your partially completed survey data will be saved under this number). Write this number down.  When you are ready to rejoin the survey, click on the text that reads “<span style="color: red; text-decoration: underline">click here to resume an existing survey</span>”. This will launch a Java script that may be blocked by your web browser. If this happens, click on the information bar at the top of the page and select “Temporarily Allow Scripted Windows” or add the survey site to your trusted sites list in your web browser. Then click again on the text “<span style="color: red; text-decoration: underline">click here to resume an existing survey</span> and enter the number to rejoin the survey.</p> 
						<p>We have tried to anticipate everything that can go wrong when taking the survey, but I’m sure other problems will be detected. So, if you have a problem, please contact Hank Bart (<a href="mailto:hank@museum.tulane.edu?subject=CollectionsWeb Survey">hank@museum.tulane.edu</a>).  Please type “CollectionsWeb Survey” in the subject line of your message.</p>
						<p>This is an <span style="font-weight: bold">extremely important survey</span> and it is extremely important that <span style="font-weight: bold">all</span> U.S. NHC participate.  Thus, we will leave the survey up at least until the end of this year.  We will be monitoring input and sending out periodic reminders.  But please complete your right away.</p>
						<p>Many thanks in advance,</p>
						<p>Hank Bart, CollectionsWeb Steering Committee</p>
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
