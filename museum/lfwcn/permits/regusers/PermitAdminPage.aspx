<%@ Page language="c#" Codebehind="PermitAdminPage.aspx.cs" AutoEventWireup="false" Inherits="PermitWebApp.regusers.PermitAdminPage" %>
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
							<li style="BACKGROUND-IMAGE: url(graphics/active_tab.gif)">
								<asp:hyperlink id="reportReviewLink" Runat="server">Review Reports</asp:hyperlink></li>
							<li>
								<asp:hyperlink id="AssignRenewLink" Runat="server">Assign/Renew Permit</asp:hyperlink></li>
							</ul>
						<div id="logoutDiv"><asp:button id="logoutb" Runat="server" CssClass="button" Text="Logout"></asp:button></div>
					</div>
				</div>
				<div id="tabsBandDiv"><!-- IE QUIRK --></div>
				<div id="mainBodyDiv">
					<h1>Following Reports has been submitted by:</h1>
					<div style="OVERFLOW: auto; WIDTH: 900px; HEIGHT: 200px" id="ListReportDiv" runat="server"></div>
					<table align="right">
							<tr>
								<TD><asp:button id="btnPrint" runat="server" Visible="False" CssClass="button" Text="Report Print Preview"></asp:button></TD>
							</tr>
						</table>
					<div style="OVERFLOW: auto; WIDTH: 900px; HEIGHT: 200px" id="ReviewReportDiv" runat="server">
						
						<div id="namedateDiv" runat="server"></div>
						<table border="0" cellSpacing="0" cellPadding="1" width="100%">
							<tr>
								<td><asp:datagrid id="DataGrid1" runat="server" CellPadding="3" BackColor="White" BorderWidth="1px"
										BorderStyle="None" BorderColor="#CCCCCC" Width="100%">
										<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#CA6500"></SelectedItemStyle>
										<ItemStyle ForeColor="#000066"></ItemStyle>
										<HeaderStyle Font-Bold="False" ForeColor="Black" BackColor="#FFF6E2"></HeaderStyle>
										<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
										<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
									</asp:datagrid></td>
							</tr>
						</table>
					</div>
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
