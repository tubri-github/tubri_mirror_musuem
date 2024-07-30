<%@ Page language="c#" Codebehind="PermitEditInfo.aspx.cs" AutoEventWireup="false" Inherits="PermitWebApp.PermitEditInfo" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
  <HEAD>
		<title>LFWCN: Permit report.</title>
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
								<asp:hyperlink id="permitReportLink" Runat="server">PermitReport</asp:hyperlink></li>
							<li style="BACKGROUND-IMAGE: url(graphics/active_tab.gif)">
								<asp:hyperlink id="pEditLink" Runat="server">Edit Profile</asp:hyperlink></li>
							<!-- <li>
								<asp:hyperlink id="logoutLBtn" Runat="server">Logout</asp:hyperlink></li> -->
						</ul>
						<div id="logoutDiv"><asp:button id="logoutb" Runat="server" Text=Logout CssClass=button ></asp:button></div>
						
					</div>
				</div>
				<div id="tabsBandDiv"><!-- IE QUIRK --></div>
				<div id="mainBodyDiv">
					<h1>Edit your profile
					</h1>
					<table align="center">
						<tr>
							<td><asp:label style="DISPLAY: none" id="EditErr" Runat="server"></asp:label></td>
						</tr>
					</table>
					<table id="editProfileTbl" align="center">
						<tr>
							<td vAlign="top">
								<p>Username:</p>
							</td>
							<td><asp:textbox id="uName" Runat="server" Enabled="False" MaxLength="50"></asp:textbox></td>
						</tr>
						<tr>
							<td vAlign="top">
								<p>First name:</p>
							</td>
							<td><asp:textbox id="fName" runat="server" MaxLength="50"></asp:textbox></td>
						</tr>
						<tr>
							<td vAlign="top">
								<p>Last name:</p>
							</td>
							<td><asp:textbox id="lName" runat="server" MaxLength="50"></asp:textbox></td>
						</tr>
						<tr>
							<td vAlign="top">
								<p>E-mail:</p>
							</td>
							<td><asp:textbox id="email" runat="server" MaxLength="50"></asp:textbox></td>
						</tr>
						<!--<tr>
							<td vAlign="top"><p>Insitution:</p>
							</td>
							<td><asp:textbox id="org" runat="server" MaxLength="50"></asp:textbox></td>
						</tr> 
						<tr>
							<td vAlign="top"><p>Address line
								</p>
							</td>
							<td><asp:textbox id="addr1" runat="server" MaxLength="50"></asp:textbox></td>
						</tr>
						<tr>
							<td vAlign="top"><p>City:</p>
							</td>
							<td><asp:textbox id="city" runat="server" MaxLength="50"></asp:textbox></td>
						</tr>
						<tr>
							<td vAlign="top"><p>State or Province:</p>
							</td>
							<td><asp:textbox id="state" runat="server" MaxLength="50"></asp:textbox></td>
						</tr>
						<tr>
							<td vAlign="top"><p>Zip:</p>
							</td>
							<td><asp:textbox id="zipCode" runat="server" MaxLength="15"></asp:textbox></td>
						</tr>-->
						<tr>
							<td vAlign="top">
								<p>Phone:</p>
							</td>
							<td><asp:textbox id="phone" runat="server" MaxLength="25"></asp:textbox></td>
						</tr>
						<tr>
							<td vAlign="top">
								<p>Fax:</p>
							</td>
							<td><asp:textbox id="fax" runat="server" MaxLength="25"></asp:textbox></td>
						</tr>
					</table>
					<table align="center">
						<tr>
							<td><span>If you wish to change your password please check the box to enter your new 
									password.</span></td>
							<td><asp:checkbox id="pwdbox" Runat="server" ></asp:checkbox></td><!--<input type="checkBox" onclick="if (this.checked) {enablePwdField()}">--->
						</tr>
					</table>
					<table align="center">
						<tr>
							<td vAlign="top">
								<p>Password:</p>
							</td>
							<td><asp:textbox id="pwd" Enabled=false Runat="server" MaxLength="25" TextMode="Password"></asp:textbox></td>
						</tr>
						<tr>
							<td vAlign="top">
								<p>Re-type password:</p>
							</td>
							<td><asp:textbox id="pwdRepeat" Enabled=False runat="server" MaxLength="25" TextMode="Password" EnableViewState="False"></asp:textbox></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><asp:button style="FLOAT: left" id="editBtn" Runat="server" Text="EDIT" CssClass="button"></asp:button><asp:button style="FLOAT: right" id="resetBtn" Runat="server" Text="RESET" CssClass="button"></asp:button></td>
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
	</body>
</HTML>
