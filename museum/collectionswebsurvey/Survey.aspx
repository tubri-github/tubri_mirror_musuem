<%@ Page language="c#" Codebehind="Survey.aspx.cs" AutoEventWireup="false" Inherits="RCNSWebApp.Survey" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>CollectionsWeb Survey: Questions</title>
		<META content="text/html; charset=windows-1252" http-equiv="Content-Type">
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK rel="stylesheet" type="text/css" href="RCNSStyle.css">
		<script type="text/javascript" src="scripts/appScript.js"></script>
		<script language="javascript"><!--
			function toggleSite(id)
			{
				var sites = document.getElementsByName(id + '|bin_2');
				for (var i=0; i<sites.length; i++)
				{
					if (document.getElementById(id + '|bin_1_1').checked)
						sites[i].checked = false;
					sites[i].disabled = !document.getElementById(id + '|bin_1_0').checked;
				}
			}
		//--></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="ASPForm" method="post" runat="server">
			<div id="containerDiv">
				<div id="bannerDiv">
					<div id="logoDiv"><A onclick='return displayPauseModal("<% Response.Write(Session["surveyID"]); %>")' href="./" ><img style="DISPLAY: block" id="logo" runat="server"></A>
					</div>
				</div>
				<div id="menuDiv">
					<ul id="tabs">
						<li>
						</li>
						<li>
							<A onclick='return displayPauseModal("<% Response.Write(Session["surveyID"]); %>")' href="./" >
								Home</A>
						</li>
						<li>
							<a href="javascript:openInst()">Survey instructions</a></li>
						<li>
							<A onclick='return displayPauseModal("<% Response.Write(Session["surveyID"]); %>")' href="About.aspx" >
								About us</A>
						</li>
						<li>
							<A onclick='return displayPauseModal("<% Response.Write(Session["surveyID"]); %>")' href="Contacts.aspx" >
								Contacts</A>
						</li>
						<li>
						</li>
					</ul>
				</div>
				<div id="contentDiv">
					<div id="textDiv">
						<h2 id="title" runat="server">Survey</h2>
						<p style="FONT-STYLE: italic; FONT-FAMILY: verdana, arial, sans-serif; FONT-SIZE: 0.7em; FONT-WEIGHT: bold">Please 
							use the "Previous" and "Next" buttons, instead of your browser's "Back" and 
							"Forward" buttons to navigate the survey.<br>
							"Next" saves the current question and advances to the next.<br>
							"Previous" leaves the current question in its former state and returns to the 
							question before.</p>
						<table style="MARGIN-LEFT: 10px" border="0" cellSpacing="0" cellPadding="1" width="98%">
							<tr>
								<td colSpan="3"><asp:placeholder id="dynamicContent" Runat="server"></asp:placeholder></td>
							</tr>
							<tr height="10">
							</tr>
							<tr>
								<td align="center"><asp:button id="submitBtn" Runat="server" Text="Submit" Visible="False"></asp:button></td>
								<td id="btnRow" align="center" runat="server"><asp:button id="prevQBtn" Runat="server" Text="< Previous"></asp:button>&nbsp;&nbsp;|&nbsp;&nbsp;
									<asp:button id="pauseBtn" Runat="server" Text="Pause"></asp:button>&nbsp;&nbsp;|&nbsp;&nbsp;
									<asp:button id="nextQBtn" Runat="server" Text=" Next >"></asp:button></td>
								<td></td>
							</tr>
							<tr height="10">
							</tr>
							<tr>
								<td style="FONT-FAMILY: verdana, arial, san-serif; FONT-SIZE: 0.8em" colSpan="3" align="center"><span id="skipSpan" runat="server">Skip 
										to question number </span>
									<asp:dropdownlist id="questionNums" Runat="server" AutoPostBack="true"></asp:dropdownlist></td>
							</tr>
						</table>
					</div>
					<div id="footerDiv">
						<p>
							<% Response.Write(ConfigurationSettings.AppSettings["footNotes"]); %>
						</p>
						<div style="POSITION: relative; FLOAT: left; TOP: -59%; LEFT: 90%"><span>Sponsored by:</span><br>
							<a 
onclick='return displayPauseModal("<% Response.Write(Session["surveyID"]); %>")' 
href="http://www.nsf.gov" target=_blank><IMG style="MARGIN-TOP: 5px; DISPLAY: inline-block" src="graphics/nsf.gif"></a>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
