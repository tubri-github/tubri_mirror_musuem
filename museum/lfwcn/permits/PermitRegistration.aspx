<%@ Page language="c#" Codebehind="PermitRegistration.aspx.cs" AutoEventWireup="false" Inherits="PermitWebApp.PermitRegistration" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>PermitRegistration</title>
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
					<div id="logoDiv"><a href="../"><IMG id="logo" src="graphics/LaFWCN_logo.gif"></A></div>
					<div id="searchDiv">
						<% Response.Write(ConfigurationSettings.AppSettings["embellish"]); %>
					</div>
				</div>
				<div id="tabsDiv">
					<div id="tabsSleeveDiv">
						<ul id="tabs">
							<li>
								<A href="PermitLogin.aspx">Login</A>
							</li>
							<li>
								<A href="PermitApplication.aspx">Permit Application</A>
							</li>
							<li style="BACKGROUND-IMAGE: url(graphics/active_tab.gif)">
								<A href="PermitRegistration.aspx">Register</A>
							</li>
						</ul>
					</div>
				</div>
				<div id="tabsBandDiv"><!-- IE QUIRK  --></div>
				<div id="mainBodyDiv">
					<p>Please complete the form below to register.</p>
					<p>Fields marked <font color="red">*</font> are required.</p>
					<p>Fields marked <font color="red">*</font><font class="looseText" color="red">*</font> are required and has to be atleast 6 characters or more.</p>
					<table align="center">
						<tr>
							<td><asp:label style="DISPLAY: none" id="aNameErr" Runat="server"></asp:label></td>
						</tr>
					</table>
					<table id="registrationTable" align="center">
						<tr>
							<td>
								<p><label>Name
										<br>
										(as in Application form): </label>
								</p>
							</td>
							<td><asp:textbox id="appName" Runat="server"></asp:textbox><font class="looseText" color="red">*</font></td>
							<!--<td><p>(as in Application form for Scientific Collecting Permit)</p></td>	--></tr>
						<tr>
							<td><asp:label style="DISPLAY: none" id="fNameErr" Runat="server"></asp:label></td>
						</tr>
						<tr>
							<td vAlign="middle">
								<p><label>First Name:</label></p>
							</td>
							<td vAlign="middle"><asp:textbox id="firstName" Runat="server"></asp:textbox><font class="looseText" color="red">*</font>
							</td>
						</tr>
						<tr>
							<td><asp:label style="DISPLAY: none" id="lNameErr" Runat="server"></asp:label></td>
						</tr>
						<tr>
							<td>
								<p><label>Last Name:</label></p>
							</td>
							<td><asp:textbox id="lastName" Runat="server"></asp:textbox><font class="looseText" color="red">*</font>
							</td>
						</tr>
						<tr>
							<td><asp:label style="DISPLAY: none" id="permitNumErr" Runat="server"></asp:label></td>
						</tr>
						<tr>
							<td>
								<p><label>Permit Number:</label></p>
							</td>
							<td><asp:textbox id="permitteeNum" Runat="server"></asp:textbox><font class="looseText" color="red">*</font>
							</td>
						</tr>
						<tr>
							<td><asp:label style="DISPLAY: none" id="UNameErr" Runat="server"></asp:label></td>
						</tr>
						<tr>
							<td>
								<p><label>User Name:</label></p>
							</td>
							<td><asp:textbox id="userName" Runat="server"></asp:textbox><font class="looseText" color="red">*</font><font class="looseText" color="red">*</font>
							</td>
						</tr>
						<tr>
							<td><asp:label style="DISPLAY: none" id="passErr" Runat="server"></asp:label></td>
						</tr>
						<tr>
							<td>
								<p><label>Password:</label></p>
							</td>
							<td><asp:textbox id="password" Runat="server" TextMode="Password"></asp:textbox><font class="looseText" color="red">*</font><font class="looseText" color="red">*</font>
							</td>
						</tr>
						<tr>
							<td><asp:label style="DISPLAY: none" id="retypeErr" Runat="server"></asp:label></td>
						</tr>
						<tr>
							<td>
								<p><label>Re-type
										<br>
										Password:</label></p>
							</td>
							<td><asp:textbox id="retypePassword" Runat="server" TextMode="Password"></asp:textbox><font class="looseText" color="red">*</font><font class="looseText" color="red">*</font>
							</td>
						</tr>
						<!--<tr>
							<td>
								<p><label>Company:</label></p>
							</td>
							<td>
								<asp:TextBox ID="company" Runat="server"></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td>
								<p><label>Address Line1:</label></p>
							</td>
							<td>
								<asp:TextBox ID="address1"  Runat="server"></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td>
								<p><label>Address Line2:</label></p>
							</td>
							<td>
								<asp:TextBox ID="address2"  Runat="server"></asp:TextBox>
							</td>
						</tr>
						
						<tr>
							<td>
								<p><label>State or Provinence:</label></p>
							</td>
							<td>
								<asp:TextBox ID="state" Visible=False Runat="server"></asp:TextBox>
							</td>
						</tr>
						<tr>	
							<td>
								<p><label >Zip or <br>Postal Code:</label></p>
							</td>
							<td>
								<asp:TextBox ID="zip"  Runat="server"></asp:TextBox>
							</td>
						</tr> --></table>
				</div>
				<table align="center">
					<tr>
						<td><asp:button id="register" Runat="server" CssClass="button" Text="Register"></asp:button></td>
						<td></td>
						<td><asp:button id="clear" Runat="server" CssClass="button" Text="Clear"></asp:button></td>
					</tr>
				</table>
				<div id="footerDiv">
				
				<p align="center"><a href="../">Home</a> | <a href="../About.aspx">About LFWCN</a> | <a href="http://www.tubri.org/museum">
							About TUMNH</a> | <a href="http://www.sci.tamucc.edu">About SCI-TAMUCC</a> |
						<a href="http://www.ulm.edu">About ULM</a> | <a href="http://www.wlf.state.la.us">About 
							LDWF</a> | <a href="../Contact.aspx">Contact</a>
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
	</body>
</HTML>
