<%@ Page language="c#" Codebehind="db.aspx.cs" AutoEventWireup="false" Inherits="CollectionsList._db" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Collections Web: List of Natural History Collections</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout" bgColor="#336666">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 111; LEFT: 8px; WIDTH: 826px; POSITION: absolute; TOP: 8px; HEIGHT: 291px"
				cellSpacing="1" cellPadding="1" width="826" border="0">
				<TR>
					<TD></TD>
					<TD><FONT size="5" color="#ffffff">Natural History Collections List<BR>
						</FONT>
					</TD>
					<TD><FONT color="#ffffff"></FONT></TD>
				</TR>
				<TR>
					<TD><FONT color="#ffffff"></FONT></TD>
					<TD>
						<P><FONT size="2" color="#ffffff">To submit your collection to the list of natural 
								history collections, fill out the form below and click submit.</FONT></P>
						<P><FONT size="2" color="#ffffff">Collection:&nbsp;&nbsp;<BR>
							</FONT>
							<asp:TextBox id="txt_Collection" runat="server" Width="500px" MaxLength="200"></asp:TextBox><BR>
							<FONT size="2" color="#ffffff">Acronym:&nbsp;
								<BR>
							</FONT>
							<asp:TextBox id="txtAcronym" runat="server" Width="150px" MaxLength="80"></asp:TextBox><BR>
							<FONT size="2" color="#ffffff">Specimens:&nbsp;
								<BR>
							</FONT>
							<asp:TextBox id="txtNumSpecimens" runat="server" Width="150px" MaxLength="80"></asp:TextBox><BR>
							<FONT size="2" color="#ffffff">Department: &nbsp;<BR>
							</FONT>
							<asp:TextBox id="txtDept" runat="server" Width="500px" MaxLength="200"></asp:TextBox><BR>
							<FONT size="2" color="#ffffff">Division:&nbsp;
								<BR>
							</FONT>
							<asp:TextBox id="txtDivision" runat="server" Width="500px" MaxLength="200"></asp:TextBox><BR>
							<FONT size="2" color="#ffffff">Institution:&nbsp;
								<BR>
							</FONT>
							<asp:TextBox id="txtInstitution" runat="server" Width="500px" MaxLength="200"></asp:TextBox><BR>
							<FONT size="2" color="#ffffff">Address:&nbsp;
								<BR>
							</FONT>
							<asp:TextBox id="txtAddress" runat="server" Width="500px" MaxLength="200"></asp:TextBox><BR>
							<FONT size="2" color="#ffffff">City:&nbsp;
								<BR>
							</FONT>
							<asp:TextBox id="txtCity" runat="server" Width="500px" MaxLength="80"></asp:TextBox><BR>
							<FONT size="2" color="#ffffff">State:&nbsp;
								<BR>
							</FONT>
							<asp:TextBox id="txtState" runat="server" Width="150px" MaxLength="80"></asp:TextBox><BR>
							<FONT size="2" color="#ffffff">Zip Code:&nbsp;<BR>
							</FONT>
							<asp:TextBox id="txtZip" runat="server" Width="150px" MaxLength="80"></asp:TextBox><BR>
							<FONT size="2" color="#ffffff">Contact:&nbsp;
								<BR>
							</FONT>
							<asp:TextBox id="txtContact" runat="server" Width="400px" MaxLength="500"></asp:TextBox><BR>
						</P>
					</TD>
					<TD></TD>
				</TR>
				<TR>
					<TD vAlign="top"></TD>
					<TD vAlign="top">
						<asp:Button id="Button1" runat="server" Text="Submit"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Button id="Button2" runat="server" Text="Cancel"></asp:Button>
						&nbsp;
						<asp:Label id="Label1" runat="server" DESIGNTIMEDRAGDROP="173" Width="297px" Visible="False"
							Font-Size="Smaller" ForeColor="LightCoral" Height="40px">There was a problem with your submission.  Please try again.  If this problem continues, please contact nelson@www.tubri.org/museum</asp:Label><BR>
						<BR>
					</TD>
					<TD vAlign="top"></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
