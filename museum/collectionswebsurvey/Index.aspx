<%@ Page language="c#" Codebehind="Index.aspx.cs" AutoEventWireup="false" Inherits="RCNSWebApp.Index" validateRequest="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
  <HEAD>
		<title>CollectionsWeb Survey: Home</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="RCNSStyle.css" type="text/css" rel="stylesheet">
		<script src="scripts/appScript.js" type="text/javascript"></script>
</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="ASPForm" method="post" runat="server">
			<input id="hiddenSurveyID" type="hidden" runat="server" value="-1">
			<div id="processDivBorder" style="BORDER-RIGHT: black 1px solid; BORDER-TOP: black 1px solid; DISPLAY: none; Z-INDEX: 100; RIGHT: 0px; LEFT: 0px; BORDER-LEFT: black 1px solid; WIDTH: 200px; BORDER-BOTTOM: black 1px solid; POSITION: absolute; HEIGHT: 60px">
				<div id="processDiv"><span>Processing, please wait...</span><br>
					<IMG src="graphics/spinner.gif">
				</div>
			</div>
			<div id="containerDiv">
				<div id="bannerDiv">
					<div id="logoDiv"><A href="./"><img id="logo" style="DISPLAY: block" runat="server"></A>
					</div>
				</div>
				<div id="menuDiv">
					<ul id="tabs">
						<li>
						</li>
						<li>
							<A class="activeA" href="./">Home</A>
						</li>
						<li>
							<A href="Instructions.aspx">Survey instructions</A>
						</li>
						<li>
							<A href="About.aspx">About us</A>
						</li>
						<li>
							<A href="Contacts.aspx">Contacts</A>
						</li>
						<li>
						</li>
					</ul>
				</div>
				<div id="contentDiv">
					<div id="textDiv">
						<h2>home</h2>
						<asp:literal id="errorMsg" Runat="server"></asp:literal>
						<p>Welcome to the Status and Trends Survey of U.S. Natural History Collections. We 
							are directing the survey at collection curators, but the questions request 
							financial data that may require administrative input. Thus, we suggest that 
							users download a hardcopy of the survey at the link below and compile all of 
							the requested information on this copy, then return to the website to enter 
							your information online. Please bookmark this site so that you can find it 
							later.<br>
							Prior to taking this survey, you will need to identify yourself and select your 
							collection from the list that appears after choosing the state it resides in. 
							Then, click on "Start New Survey" to begin the survey or <a href="" onclick="resumeSurvey(); return false;">
								click here to resume an existing survey</a>. If your collection's name does not 
							appear in the list, please <a href="http://www.biodiversitycollectionsindex.org/static/index.html" target="_blank">
								click here</a> to go to the Biodiversity Collections Index's (BCI) website 
							and register it. <span style="font-weight: bold">Please register your collection even if it resides within a larger museum or institution that is already registered in BCI.</span>
							Once you have registered in BCI, return to the survey and choose your newly registered collection from the dropdown list.
							Please <A href="About.aspx">click here to learn more about the survey</A>, 
							or <A href="Contacts.aspx"> here to contact us</A> for inquiries.<br>
							<A href="survey.pdf" target="_blank">Download survey printout.</A>
						</p>
						<table style="FONT-SIZE: 0.75em; MARGIN-LEFT: 10px; FONT-FAMILY: verdana, arial, sans-serif"
							cellSpacing="0" cellPadding="1" border="0">
							<tr>
								<td class="cellTitle">User Identification Section</td>
								<td></td>
								<td class="cellTitle">Collection Identification Section</td>
							</tr>
							<tr>
								<td class="cellContent" vAlign="top">
									<table style="FONT-SIZE: 100%" cellSpacing="0" cellPadding="1" border="0">
										<tr>
											<td>First name:</td>
											<td noWrap><asp:textbox id="fName" Runat="server" ToolTip="background info" MaxLength="50" Columns="20"></asp:textbox><span style="COLOR: red">*</span><asp:requiredfieldvalidator id="fName_RFV" Runat="server" ControlToValidate="fName" ErrorMessage="<br>First name required!"
													Display="Dynamic"></asp:requiredfieldvalidator></td>
										</tr>
										<tr>
											<td>Last name:</td>
											<td noWrap><asp:textbox id="lName" Runat="server" MaxLength="50" Columns="20"></asp:textbox><span style="COLOR: red">*</span><asp:requiredfieldvalidator id="lName_RFV" Runat="server" ControlToValidate="lName" ErrorMessage="<br>Last name Required!"
													Display="Dynamic"></asp:requiredfieldvalidator></td>
										</tr>
										<tr>
											<td>Institutional email address:</td>
											<td noWrap><asp:textbox id="email" Runat="server" MaxLength="50" Columns="20"></asp:textbox><span style="COLOR: red">*</span><asp:requiredfieldvalidator id="email_RFV" Runat="server" ControlToValidate="email" ErrorMessage="<br>Email address required!"
													Display="Dynamic"></asp:requiredfieldvalidator>
												<asp:regularexpressionvalidator id="email_FV" Runat="server" ControlToValidate="email" ErrorMessage="<br>invalid format, i.e.: john@yahoo.com "
													Display="Dynamic" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:regularexpressionvalidator></td>
										</tr>
									</table>
								</td>
								<td></td>
								<td class="cellContent" vAlign="top">
									<div id="statesDiv">What state is your collection located in?<br>
										<br>
										<asp:dropdownlist id="statesDDL" runat="server" onchange="getCollections()">
											<asp:ListItem></asp:ListItem>
											<asp:ListItem Value="AL">Alabama</asp:ListItem>
											<asp:ListItem Value="AK">Alaska</asp:ListItem>
											<asp:ListItem Value="AZ">Arizona</asp:ListItem>
											<asp:ListItem Value="AR">Arkansas</asp:ListItem>
											<asp:ListItem Value="CA">California</asp:ListItem>
											<asp:ListItem Value="CO">Colorado</asp:ListItem>
											<asp:ListItem Value="CT">Connecticut</asp:ListItem>
											<asp:ListItem Value="DC">District of Columbia</asp:ListItem>
											<asp:ListItem Value="DE">Delaware</asp:ListItem>
											<asp:ListItem Value="FL">Florida</asp:ListItem>
											<asp:ListItem Value="GA">Georgia</asp:ListItem>
											<asp:ListItem Value="HI">Hawaii</asp:ListItem>
											<asp:ListItem Value="ID">Idaho</asp:ListItem>
											<asp:ListItem Value="IL">Illinois</asp:ListItem>
											<asp:ListItem Value="IN">Indiana</asp:ListItem>
											<asp:ListItem Value="IA">Iowa</asp:ListItem>
											<asp:ListItem Value="KS">Kansas</asp:ListItem>
											<asp:ListItem Value="KY">Kentucky</asp:ListItem>
											<asp:ListItem Value="LA">Louisiana</asp:ListItem>
											<asp:ListItem Value="ME">Maine</asp:ListItem>
											<asp:ListItem Value="MD">Maryland</asp:ListItem>
											<asp:ListItem Value="MA">Massachusetts</asp:ListItem>
											<asp:ListItem Value="MI">Michigan</asp:ListItem>
											<asp:ListItem Value="MN">Minnesota</asp:ListItem>
											<asp:ListItem Value="MS">Mississippi</asp:ListItem>
											<asp:ListItem Value="MO">Missouri</asp:ListItem>
											<asp:ListItem Value="MT">Montana</asp:ListItem>
											<asp:ListItem Value="NE">Nebraska</asp:ListItem>
											<asp:ListItem Value="NV">Nevada</asp:ListItem>
											<asp:ListItem Value="NH">New Hampshire</asp:ListItem>
											<asp:ListItem Value="NJ">New Jersey</asp:ListItem>
											<asp:ListItem Value="NM">New Mexico</asp:ListItem>
											<asp:ListItem Value="NY">New York</asp:ListItem>
											<asp:ListItem Value="NC">North Carolina</asp:ListItem>
											<asp:ListItem Value="ND">North Dakota</asp:ListItem>
											<asp:ListItem Value="OH">Ohio</asp:ListItem>
											<asp:ListItem Value="OK">Oklahoma</asp:ListItem>
											<asp:ListItem Value="OR">Oregon</asp:ListItem>
											<asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
											<asp:ListItem Value="RI">Rhode Island</asp:ListItem>
											<asp:ListItem Value="SC">South Carolina</asp:ListItem>
											<asp:ListItem Value="SD">South Dakota</asp:ListItem>
											<asp:ListItem Value="TN">Tennessee</asp:ListItem>
											<asp:ListItem Value="TX">Texas</asp:ListItem>
											<asp:ListItem Value="UT">Utah</asp:ListItem>
											<asp:ListItem Value="VT">Vermont</asp:ListItem>
											<asp:ListItem Value="VA">Virginia</asp:ListItem>
											<asp:ListItem Value="WA">Washington</asp:ListItem>
											<asp:ListItem Value="WV">West Virginia</asp:ListItem>
											<asp:ListItem Value="WI">Wisconsin</asp:ListItem>
											<asp:ListItem Value="WY">Wyoming</asp:ListItem>
										</asp:dropdownlist></div>
									<div id="collectionsDiv" style="DISPLAY: none"><br>
										Select your collection from the list <a href="http://www.biodiversitycollectionsindex.org/static/index.html" target="_blank">
											or register with BCI by clicking here.</a><br>
										<asp:listbox id="collectionsLB" Runat="server" onchange="displayInfo()"></asp:listbox><span style="COLOR: red">*</span><span id="lBErrorMsg" style="COLOR: red"></span><br>
										<br>
										<span id="colInfo"></span>
									</div>
								</td>
							</tr>
							<tr id="submitRow" style="DISPLAY: none">
								<td align="right" colSpan="3"><asp:button id="iDentifyBtn" Runat="server" Text="Start New Survey"></asp:button></td>
							</tr>
						</table>
					</div>
					<div id="footerDiv">
						<p>
							<% Response.Write(ConfigurationSettings.AppSettings["footNotes"]); %>
						</p>
						<div style="LEFT: 90%; FLOAT: left; POSITION: relative; TOP: -59%"><span>Sponsored by:</span><br>
							<a href="http://www.nsf.gov" target="_blank"><IMG style="MARGIN-TOP: 5px; DISPLAY: inline-block" src="graphics/nsf.gif"></a>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
