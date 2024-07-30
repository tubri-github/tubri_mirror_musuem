<%@ Page language="c#" Codebehind="PermitAssignRenew.aspx.cs" AutoEventWireup="false" Inherits="PermitWebApp.regusers.PermitAssignRenew" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
  <HEAD>
		<title>PermitAdmin</title>
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
						<ul id="tabs">
							<li>
								<asp:hyperlink id="reportReviewLink" Runat="server">Review Reports</asp:hyperlink></li>
							<li style="BACKGROUND-IMAGE: url(graphics/active_tab.gif)">
								<asp:hyperlink id="AssignRenewLink" Runat="server">Assign/Renew Permit</asp:hyperlink></li>
							</ul>
						<div id="logoutDiv"><asp:button id="logoutb" Runat="server" CssClass="button" Text="Logout"></asp:button></div>
					</div>
				</div>
				<div id="tabsBandDiv"><!-- IE QUIRK --></div>
				<div id="mainBodyDiv"><asp:label id="errMsg" Runat="server"></asp:label>
					<table>
						<tr>
							<td>
								<span>Please Enter the applicants name inorder to Assign/Renew Permit numbers.</span>
							</td>
							<td><asp:textbox id="AppName" Runat="server"></asp:textbox></td>
						</tr>
					</table>
					<table>
						<tr>
							<td><span>Assign New Permit</span>
							</td>
							<td><asp:checkbox id="AssignPNum" Runat="server" AutoPostBack="True"></asp:checkbox></td>
							<td><span>Renew Permit</span>
							</td>
							<td><asp:checkbox id="renewPNum" Runat="server" AutoPostBack="True"></asp:checkbox></td>
						</tr>
					</table>
					<asp:label id="msg" Runat="server"></asp:label>
					<table>
						<tr>
							<td><span>Fresh Water Permit</span>
							<td><asp:textbox id="FreshPNum" Runat="server"></asp:textbox></td>
							</td></tr>
						<tr>
							<td><span>Salt Water Permit</span>
							<td><asp:textbox id="SaltPNum" Runat="server"></asp:textbox></td>
							</td></tr>
					</table>
					<table>
						<tr>
							<td><asp:button id="review" Runat="server" CssClass="button" Text="Review"></asp:button></td>
						</tr>
						<tr>
							<td><asp:label id="preDisplay" Runat="server"></asp:label></td>
						</tr>
						<tr>
							<td><asp:button id="save" Runat="server" CssClass="button" Text="Save" Visible="False"></asp:button></td>
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
		</form></ASP:LABLE>
	</body>
</HTML>
