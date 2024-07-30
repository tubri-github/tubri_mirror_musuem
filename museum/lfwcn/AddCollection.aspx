<%@ Page language="c#" Codebehind="AddCollection.aspx.cs" AutoEventWireup="false" Inherits="LaFWWebApp.AddCollection" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" >
<HTML>
	<HEAD>
		<title>LFWCN: Add New Collection.</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="styles/LaFWCStyle.css" type="text/css" rel="stylesheet">
		<script src="scripts/LaFWCScript.js" type="text/javascript"></script>
		<LINK href="graphics/favicon.ico" type="image/x-icon" rel="shortcut icon">
		<LINK href="graphics/favicon.ico" type="image/x-icon" rel="icon">
	</HEAD>
	<body>
		<form id="aspForm" method="post" runat="server">
			<div id="containerDiv">
				<div id="bannerDiv">
					<div id="logoDiv"><A href="./"><IMG id="logo" src="graphics/LaFWCN_logo.gif"></A></div>
					<div id="searchDiv">
						<% Response.Write(ConfigurationSettings.AppSettings["embellish"]); %>
					</div>
				</div>
				<div id="tabsDiv">
					<div id="tabsSleeveDiv">
						<ul id="tabs">
							<li>
								<A href="./">Home</A>
							</li>
							<li>
								<A href="About.aspx">About this project</A>
							</li>
							<li>
								<A href="Search.aspx">Search</A>
							</li>
							<li>
								<a href="DataSources.aspx">Data sources</a>
							</li>
							<li>
								<a href="SpeciesProf.aspx">Species profile</a>
							</li>
							<li>
								<A href="Contact.aspx">Contact</A>
							</li>
						</ul>
					</div>
				</div>
				<div id="tabsBandDiv"><!-- IE QUIRK --></div>
				<div id="mainBodyDiv">
					<h1>New Collection Addition</h1>
					<table id="formatingTbl" width="100%">
						<tr>
							<td colSpan="4">
								<p>To add a collection, enter the provider's URL in the field bellow and click 
									"Probe" to display the data source's at that location. Then select the one you 
									want to add and click "Add" to add it or "Cancel" to abort and reset the form.
									<asp:label id="newColLbl" style="COLOR: blue" Runat="server"></asp:label></p>
							</td>
						</tr>
						<tr>
							<td vAlign="top" noWrap><span>Provider URL:</span></td>
							<td><asp:label id="providerURLErrorMsg" style="DISPLAY: none; COLOR: red" runat="server" EnableViewState="false"></asp:label><asp:textbox id="providerURL" runat="server" Columns="50" CssClass="looseText"></asp:textbox></td>
							<td vAlign="top" align="right"><asp:button id="dSprobeBtn" CssClass="button" Text="Probe" Runat="server"></asp:button></td>
							<td width="30%"></td>
						</tr>
						<tr>
							<td vAlign="top" noWrap><span>Select data source:</span></td>
							<td colSpan="2"><asp:label id="dSNameErrorMsg" style="DISPLAY: none; COLOR: red" runat="server" EnableViewState="false"></asp:label>
								<div style="OVERFLOW: auto"><asp:listbox id="dSName" runat="server" CssClass="BodyText" Rows="5"></asp:listbox></div>
							</td>
							<td width="30%"></td>
						</tr>
						<tr>
							<td vAlign="top" noWrap><span>Collection description:</span></td>
							<td colSpan="2"><asp:textbox id="description" Columns="50" CssClass="looseText" Runat="server" MaxLength="1000"></asp:textbox></td>
							<td width="30%"></td>
						</tr>
						<tr>
							<td vAlign="top" noWrap><span>Collection institution:</span></td>
							<td colSpan="2"><asp:textbox id="institution" Columns="50" CssClass="looseText" Runat="server"></asp:textbox></td>
							<td width="30%"></td>
						</tr>
						<tr>
							<td colSpan="4">
								<p>Please provide the contact information for this collection. Fields marked <font color="red">
										*</font> are required.</p>
								<asp:label id="reqFieldsErrorMsg" style="DISPLAY: none; COLOR: red" runat="server" EnableViewState="false"></asp:label></td>
						</tr>
						<tr>
							<td colSpan="3">
								<table width="100%">
									<tr>
										<td vAlign="top" noWrap><span>Name:</span></td>
										<td><asp:textbox id="contactName" Columns="30" CssClass="looseText" Runat="server"></asp:textbox><span><font color="red">*</font></span>
										</td>
										<td vAlign="top" noWrap><span>Email:</span></td>
										<td><asp:textbox id="contactEmail" Columns="30" CssClass="looseText" Runat="server"></asp:textbox><span><font color="red">*</font></span>
										</td>
									</tr>
									<tr>
										<td vAlign="top" noWrap><span>Phone:</span></td>
										<td><asp:textbox id="contactPhone" Columns="30" CssClass="looseText" Runat="server"></asp:textbox><span></span></td>
										<td vAlign="top" noWrap><span>Fax:</span></td>
										<td><asp:textbox id="contactFax" Columns="30" CssClass="looseText" Runat="server"></asp:textbox><span></span></td>
									</tr>
									<tr>
										<td vAlign="top" noWrap><span>Address:</span></td>
										<td colSpan="3"><asp:textbox id="contactAddr" Columns="73" CssClass="looseText" Runat="server"></asp:textbox></td>
									</tr>
								</table>
							</td>
							<td width="30%"></td>
						</tr>
						<tr>
							<td vAlign="top" align="left" colSpan="2"><asp:button id="addCancelBtn" CssClass="button" Text="Cancel" Runat="server"></asp:button></td>
							<td vAlign="top" align="right"><asp:button id="newDSBtn" CssClass="button" Text="Add" Runat="server"></asp:button></td>
							<td width="30%"></td>
						</tr>
					</table>
					<br>
				</div>
				<div id="footerDiv">
					<p align="center"><A href="./">Home</A> | <A href="About.aspx">About LFWCN</A> | <a href="http://www.tubri.org/museum">
							About TUMNH</a> | <a href="http://www.sci.tamucc.edu">About SCI-TAMUCC</a> |
						<a href="http://www.ulm.edu">About ULM</a> | <a href="http://www.wlf.state.la.us">About 
							LDWF</a> | <A href="Contact.aspx">Contact</A>
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
