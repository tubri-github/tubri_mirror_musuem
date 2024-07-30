<%@ Page language="c#" Codebehind="PermitApplication.aspx.cs" AutoEventWireup="false" Inherits="PermitWebApp.PermitApplication" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>PermitApplication</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK rel="stylesheet" type="text/css" href="styles/LaFWCStyle.css">
		<script type="text/javascript" src="scripts/PermitScript1.js"></script>
		<LINK rel="shortcut icon" type="image/x-icon" href="graphics/favicon.ico">
		<LINK rel="icon" type="image/x-icon" href="graphics/favicon.ico">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<div id="containerDiv">
				<div id="bannerDiv">
					<div id="logoDiv"><a href="../"><IMG id="logo" src="graphics/LaFWCN_logo.gif"></a></div>
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
							<li style="BACKGROUND-IMAGE: url(graphics/active_tab.gif)">
								<A href="PermitApplication.aspx">Permit Application</A>
							</li>
							<li>
								<A href="PermitRegistration.aspx">Register</A>
							</li>
						</ul>
					</div>
				</div>
				<div id="tabsBandDiv"><!-- IE QUIRK  --></div>
				<div id="mainBodyDiv">
					<h1>Application For Scientific Collecting Permit</h1>
					<asp:Label ID="errorMsg" Runat="server" style="DISPLAY: none"></asp:Label>
					<p>Fields marked <font color="red">*</font> are required.</p>
					<table>
						<TBODY>
							<tr>
								<td><asp:Label ID="AppNameErrMsg" Runat="server" style="DISPLAY: none; COLOR: red"></asp:Label></td>
								<td><asp:Label ID="AppdateErrMsg" Runat="server" style="DISPLAY: none; COLOR: red"></asp:Label></td>
							</tr>
							<tr>
								<td>
									<p>Applicant's Name:</p>
								</td>
								<td>
									<p>Application Date:</p>
								</td>
							</tr>
							<tr>
								<td><asp:textbox id="appName" Runat="server"></asp:textbox><font class="looseText" color="red">*</font></td>
								<td><asp:textbox id="appDate" Runat="server"></asp:textbox><font class="looseText" color="red">*</font></td>
							</tr>
							<tr>
								<td>
									<p>Official Title and Institution/affiliation:</p>
								</td>
								<td>
									<p>Type Of Permit Applied For:</p>
								</td>
							</tr>
							<tr>
								<td>
									<asp:textbox id="officialtitle" Runat="server"></asp:textbox>
								</td>
								<td>
									<asp:dropdownlist id="permitType" Runat="server"></asp:dropdownlist>
								</td>
							</tr>
							<tr>
								<td>
									<p>Address:</p>
								</td>
								<td>
									<p>City:</p>
								</td>
							</tr>
							<tr>
								<td><asp:textbox id="addr" Runat="server"></asp:textbox></td>
								<td><asp:textbox id="city" Runat="server"></asp:textbox></td>
							</tr>
						</TBODY>
					</table>
					<table>
						<tr>
							<td>
								<p>State:</p>
							</td>
							<td><asp:textbox id="state" Runat="server"></asp:textbox></td>
							<td>
								<p>Zip:</p>
							</td>
							<td>
								<asp:textbox id="zip" Runat="server"></asp:textbox>
							</td>
						</tr>
						<tr>
							<td>
								<p>Permit#
									<br>
									Assigned
									<br>
									Last Year:</p>
							</td>
							<td><asp:textbox id="permitNumLastYear" Runat="server"></asp:textbox></td>
						</tr>
						<tr>
							<td></td>
							<td><asp:Label ID="PhoneErrMsg" Runat="server" style="DISPLAY: none; COLOR: red"></asp:Label>
							</td>
							<td><asp:Label ID="emailErrMsg" Runat="server" style="DISPLAY: none; COLOR: red"></asp:Label></td>
						</tr>
						<tr>
							<td>
								<p>Telephone#:</p>
							</td>
							<td><asp:textbox id="phone" Runat="server"></asp:textbox><font class="looseText" color="red">*</font></td>
							<td>
								<p>E-mail:</p>
							</td>
							<td><asp:textbox id="email" Runat="server"></asp:textbox><font class="looseText" color="red">*</font></td>
						</tr>
						<tr>
							<td>
								<p>Fax:</p>
							</td>
							<td><asp:textbox id="fax" Runat="server"></asp:textbox></td>
						</tr>
					</table>
					<table>
						<tr>
							<td>
								<p>Purpose Of Scientific collection:</p>
							</td>
						</tr>
						<tr>
							<td><asp:textbox id="sciColl" Runat="server" Width="620" Height="65" TextMode="MultiLine"></asp:textbox></td>
						</tr>
						<tr>
							<td>
								<p>Areas Where Collection Will Be Made:</p>
							</td>
						</tr>
						<tr>
							<td><asp:textbox id="collArea" Runat="server" Width="620" Height="65" TextMode="MultiLine"></asp:textbox></td>
						</tr>
						<tr>
							<td>
								<p>Types of Gear Or Equipment To Be Used And Technique Of develpoment:</p>
							</td>
						</tr>
						<tr>
							<td><asp:textbox id="gearType" Runat="server" Width="620" Height="65" TextMode="MultiLine"></asp:textbox></td>
						</tr>
						<tr>
							<td>
								<p>Types And Numbers Of Organisms To Be Collected:</p>
							</td>
						</tr>
						<tr>
							<td><asp:textbox id="typeNumOrg" Runat="server" Width="620" Height="65" TextMode="MultiLine"></asp:textbox></td>
						</tr>
						<tr>
							<td>
								<p>How Will Specimens Be Disposed Of:</p>
							</td>
						</tr>
						<tr>
							<td><asp:textbox id="spDisposed" Runat="server" Width="620" Height="65" TextMode="MultiLine"></asp:textbox></td>
						</tr>
					</table>
					<!--<asp:checkbox id="certify" Runat="server"></asp:checkbox>
					<p>I certify that the information provided on this application is correct to the 
						best of my knowledge.</p>-->
					<table align="center">
						<tr>
							<td><asp:button id="submit" Runat="server" CssClass="button" Text="Submit"></asp:button></td>
							<td><asp:Button ID="clear" Runat="server" CssClass="button" Text="Clear"></asp:Button></td>
						</tr>
					</table>
				</div>
				<div id="footerDiv">
					<p align="center"><a href="../">Home</a> | <a href="../About.aspx">About LFWCN</a> |
						<a href="http://www.tubri.org/museum">About TUMNH</a> | <a href="http://www.sci.tamucc.edu">
							About SCI-TAMUCC</a> | <a href="http://www.ulm.edu">About ULM</a> | <a href="http://www.wlf.state.la.us">
							About LDWF</a> | <a href="../Contact.aspx">Contact</a>
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
		<P></P>
		</TR></TBODY></TABLE>
		<DIV></DIV>
		<DIV></DIV>
		</FORM>
	</body>
</HTML>
