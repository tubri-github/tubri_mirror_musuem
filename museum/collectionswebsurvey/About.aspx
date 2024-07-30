<%@ Page language="c#" Codebehind="About.aspx.cs" AutoEventWireup="false" Inherits="RCNSWebApp.About" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>CollectionsWeb Survey: About us</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link type="text/css" rel="stylesheet" href="RCNSStyle.css">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="ASPForm" method="post" runat="server">
			<div id="containerDiv">
				<div id="bannerDiv">
					<div id="logoDiv">
						<a href="./"><img id="logo" runat="server" style="DISPLAY: block"></a>
					</div>
				</div>
				<div id="menuDiv">
					<ul id="tabs">
						<li>
						</li>
						<li>
							<a href="./">Home</a></li>
						<li>
							<a href="Instructions.aspx">Survey instructions</a></li>
						<li>
							<a href="About.aspx" class="activeA">About us</a></li>
						<li>
							<a href="Contacts.aspx">Contacts</a></li>
						<li>
						</li>
					</ul>
				</div>
				<div id="contentDiv">
					<div id="textDiv">
						<h2>about us</h2>
						<p>						
							The CollectionsWeb Survey of U.S. Natural History Collections is an activity of the Community Building in U.S. Natural History Collections Research Coordination Network 
							(<a href="http://www.collectionsweb.org/" target="_blank">http://www.collectionsweb.org/</a>), which was established to build a more effective community to address challenges and 
							explore opportunities in U.S. Natural History Collections (NHC).
						</p>
						<p>
							One of the first steps in any community building process is identifying who your community is.  When we proposed this project, we realized that there was no 
							single inventory of U.S. NHC and that a comprehensive survey of U.S. NHC had not been undertaken for several years.
						</p>
						<p>
							Within the past two years, surveys of 291 Federal Scientific Collections (<a href="http://www.ostp.gov/galleries/NSTC%20Reports/Revision_1-22_09_CL.pdf" target="_blank">
							http://www.ostp.gov/galleries/NSTC%20Reports/Revision_1-22_09_CL.pdf</a>) and 611 Federally Funded Scientific Collections (<a href="http://www.nsf.gov/pubs/2009/nsf09044/nsf09044.pdf" target="_blank">
							http://www.nsf.gov/pubs/2009/nsf09044/nsf09044.pdf</a>) have been conducted (respectively) by the Interagency Working Group on Scientific 
							Collections and the National Science Foundation.  However, by our estimates, these surveys reached less than half of U.S. NHC.  Moreover, although the results of 
							these surveys give us valuable insight into challenges currently facing U.S. NHC, they provide little basis for comparison to earlier surveys for assessing long term trends.
						</p>
						<p>
							Our goal in building this site is to inventory all U.S. NHC, produce a comprehensive database of U.S. NHC information, and establish a baseline for periodically assessing 
							status and trends.  Our survey is based on a survey instrument produced by the Association of Systematics Collections (ASC, now the Natural Science Collections Alliance), 
							first conducted in 1988 (baseline data). Our questions and background information are based on the 1995 report of the 1993 ASC survey, entitled Status, Resources and Needs 
							of Systematics Collections by Diane Zorich and K. Elaine Hoagland.
						</p>
						<p>
							We are partnering with the Biodiversity Collections Index (<a href="http://www.biodiversitycollectionsindex.org/" target="_blank">BCI, http://www.biodiversitycollectionsindex.org/</a>) 
							to produce an index of U.S. NHC.  BCI is a community-driven, open-access project initiated by the Global Biodiversity Information Facility (GBIF), Biodiversity 
							Information Standards (TDWG) and Royal Botanic Garden Edinburgh (RBGE). It is a global registry of Biodiversity Collections, which aims to provide a Globally 
							Unique Identifiers (GUIDs) to every natural history collection on earth. There are already taxon specific lists that provide acronyms for use in written publications, 
							but these lists don't provide unambiguous machine readable IDs.
						</p>
						<p>
							We plan to make all of the data collected at this site a permanent resource for the NHC community by posting the content on the web site of Natural Science Collections Alliance 
							or the Society for the Preservation of Natural History Collections.
						</p>
					</div>
					<div id="footerDiv">
						<p>
							<% Response.Write(ConfigurationSettings.AppSettings["footNotes"]); %>
						</p>
						<div style="LEFT: 90%; FLOAT: left; POSITION: relative; TOP: -59%">
							<span>Sponsored by:</span><br>
							<a href="http://www.nsf.gov" target="_blank"><img src="graphics/nsf.gif" style="MARGIN-TOP: 5px; DISPLAY: inline-block"></a>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</HTML>
