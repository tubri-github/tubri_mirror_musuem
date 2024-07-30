<%@ Page language="c#" Codebehind="SpeciesProf.aspx.cs" AutoEventWireup="false" Inherits="LaFWWebApp.SpeciesProf" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" >
<HTML>
	<HEAD>
		<title>LFWCN: Species profile.</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link type="text/css" rel="stylesheet" href="styles/LaFWCStyle.css">
		<script type="text/javascript" src="scripts/LaFWCScript.js"></script>
		<link href="graphics/favicon.ico" type="image/x-icon" rel="shortcut icon">
		<link href="graphics/favicon.ico" type="image/x-icon" rel="icon">
	</HEAD>
	<body>
		<form id="aspForm" method="post" runat="server">
			<div id="containerDiv">
				<div id="bannerDiv">
					<div id="logoDiv"><a href="./"><img id="logo" src="graphics/LaFWCN_logo.gif"></a></div>
					<div id="searchDiv">
						<% Response.Write(ConfigurationSettings.AppSettings["embellish"]); %>
					</div>
				</div>
				<div id="tabsDiv">
					<div id="tabsSleeveDiv">
						<ul id="tabs">
							<li>
								<a href="./">Home</a></li>
							<li>
								<a href="About.aspx">About this project</a></li>
							<li>
								<a href="Search.aspx">Search</a></li>
							<li>
								<a href="DataSources.aspx">Data sources</a></li>
							<li style="BACKGROUND-IMAGE: url(graphics/active_tab.gif)">
								<a href="SpeciesProf.aspx">Species profile</a></li>
							<li>
								<a href="Contact.aspx">Contact</a></li>
						</ul>
					</div>
				</div>
				<div id="tabsBandDiv"><!-- IE QUIRK --></div>
				<div id="mainBodyDiv">
					<h1>species profile</h1>
					<p style="FONT-WEIGHT: bold">Louisiana's Rare Fish of Conservation Concern, 
						Louisiana Natural Heritage Program (LNHP) - 2008</p>
					<div id="listDiv">
						<p><a href="javascript:displayProfile('aoxydesoto.htm')">Acipenser oxyrinchus desotoi</a> GULF STURGEON</p>
						<p><a href="javascript:displayProfile('salbus.htm')">Scaphirhynchus albus</a> PALLID STURGEON</p>
						<p><a href="javascript:displayProfile('pspath.htm')">Polyodon spathula</a> PADDLEFISH</p>
						<p><a href="javascript:displayProfile('aalabamae2.htm')">Alosa alabamae</a> ALABAMA SHAD</p>
						<p><a href="javascript:displayProfile('canom.htm')">Campostoma anomalum</a> CENTRAL STONEROLLER</p>
						<p><a href="javascript:displayProfile('nboops.htm')">Notropis boops</a> BIGEYE SHINER</p>
						<p><a href="javascript:displayProfile('npott.htm')">Notropis potteri</a> CHUB SHINER</p>
						<p><a href="javascript:displayProfile('nsabinae.htm')">Notropis sabinae</a> SABINE SHINER</p>
						<p><a href="javascript:displayProfile('pmirabilis.htm')">Phenacobius mirabilis</a> SUCKERMOUTH MINNOW</p>
						<p><a href="javascript:displayProfile('ccamura.htm')">Cyprinella camura</a> BLUNTFACE SHINER</p>
						<p><a href="javascript:displayProfile('cwhipplei.htm')">Cyprinella whipplei</a> STEELCOLOR SHINER</p>
						<p><a href="javascript:displayProfile('phubbsi.htm')">Pteronotropis hubbsi</a> BLUEHEAD SHINER</p>
						<p><a href="javascript:displayProfile('nsignipinnis.htm')">Pteronotropis signipinnis</a> FLAGFIN SHINER</p>
						<p><a href="javascript:displayProfile('pwelaka.htm')">Pteronotropis welaka</a> BLUENOSE SHINER</p>
						<p><a href="javascript:displayProfile('nbuccatus.htm')">Ericymba buccata</a> SILVERJAW MINNOW</p>
						<p><a href="javascript:displayProfile('celong.htm')">Cycleptus elongatus</a> BLUE SUCKER</p>
						<p><a href="javascript:displayProfile('cmeridionalis3.htm')">Cycleptus meridionalis</a> SOUTHEASTERN BLUE SUCKER</p>
						<p><a href="javascript:displayProfile('mcari.htm')">Moxostoma carinatum</a> RIVER REDHORSE</p>
						<p><a href="javascript:displayProfile('nmunitus.htm')">Noturus munitus</a> FRECKLEBELLY MADTOM</p>
						<p><a href="javascript:displayProfile('feuryz.htm')">Fundulus euryzonus</a> BROADSTRIPE TOPMINNOW</p>
						<p><a href="javascript:displayProfile('sscovelli.htm')">Syngnathus scovelli</a> GULF PIPEFISH</p>
						<p><a href="javascript:displayProfile('casprel.htm')">Crystallaria asprella</a> CRYSTAL DARTER</p>
						<p><a href="javascript:displayProfile('aclara.htm')">Ammocrypta clara</a> WESTERN SAND DARTER</p>
						<p><a href="javascript:displayProfile('ecaeruleum.htm')">Etheostoma caeruleum</a> RAINBOW DARTER</p>
						<p><a href="javascript:displayProfile('plent.htm')">Percina lenticula</a> FRECKLED DARTER</p>
						<p><a href="javascript:displayProfile('pmacro.htm')">Percina macrolepida</a> BIGSCALE LOGPERCH</p>
						<p><a href="javascript:displayProfile('paurora.htm')">Percina aurora</a> PEARL DARTER</p>
						<p><a href="javascript:displayProfile('pcopelandi.htm')">Percina copelandi</a> CHANNEL DARTER</p>
					</div>
				</div>
				<div id="footerDiv">
					<p align="center">
						<a href="./">Home</a> | <a href="About.aspx">About LFWCN</a> | <a href="http://www.tubri.org/museum">
							About TUMNH</a> | <a href="http://www.sci.tamucc.edu">About SCI-TAMUCC</a> |
						<a href="http://www.ulm.edu">About ULM</a> | <a href="http://www.wlf.state.la.us">About 
							LDWF</a> | <a href="Contact.aspx">Contact</a>
					</p>
					<br>
					<p>
						Developed by the Tulane University Museum of Natural History (TUMNH), 
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
