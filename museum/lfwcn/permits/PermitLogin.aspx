<%@ Page language="c#" Codebehind="PermitLogin.aspx.cs" AutoEventWireup="false" Inherits="PermitWebApp.PermitLogin" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
  <HEAD>
		<title>PermitLogin</title>
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
							<li style="BACKGROUND-IMAGE: url(graphics/active_tab.gif)">
								<A href="PermitLogin.aspx">Login</A>
							</li>
							<li>
								<A href="PermitApplication.aspx">Permit Application</A>
							</li>
							<li>
								<A href="PermitRegistration.aspx">Register</A>
							</li>
						</ul>
					</div>
				</div>
				<div id="tabsBandDiv"><!-- IE QUIRK  --></div>
				<div id="mainBodyDiv"><asp:label id="msg" Runat="server"></asp:label>
					<h1>Registered Users please enter your Login information
					</h1>
					<table id="login_table" align="center">
						<tr>
							<td>
								<p><label>Username:</label></p>
							</td>
							<td><asp:textbox id="username" Runat="server"></asp:textbox></td>
						</tr>
						<tr>
							<td>
								<p><label>Password:</label></p>
							</td>
							<td><asp:textbox id="password" Runat="server" TextMode="Password"></asp:textbox></td>
						</tr>
						<tr>
							<td></td>
							<td><asp:button id="Login" Runat="server" CssClass="button" Text="Login"></asp:button></td>
						</tr>
						<tr>
							<td>
								<p><asp:linkbutton id="resetpswd" Runat="server">Forgot your password?</asp:linkbutton></p>
							</td>
						</tr>
					</table>
					<asp:label id="resetText" Runat="server"></asp:label>
					<table align="center">
						<tr>
							<td><asp:textbox id="email" Runat="server" Visible="False"></asp:textbox></td>
							<td><asp:button id="pwd_button" Runat="server" CssClass="button" Text="Submit" Visible="False"></asp:button></td>
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
		<DIV></DIV>
		<DIV></DIV>
		<DIV></DIV></FORM>
	</body>
</HTML>
