<%@ Page language="c#" Codebehind="login.aspx.cs" AutoEventWireup="false" Inherits="CollectionsList.login" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Collections Web: List of Natural History Collections</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="#336666" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<DIV style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" ms_positioning="text2D">
				<P><FONT color="#ffffff" size="5"><STRONG>Collections Web:</STRONG></FONT></P>
				<P><FONT color="#ffffff"><FONT size="5">List of Natural History Collections in the United 
							States of America</FONT>
						<BR>
						<BR>
						To view, edit and/or add collections to the list, please enter the password you 
						were provided and click Enter.<BR>
					</FONT>
				</P>
				<P><FONT color="#ffffff">
						<asp:Label id="Label1" runat="server" ForeColor="White">Password</asp:Label>:&nbsp;&nbsp;
						<asp:TextBox id="TextBox1" runat="server" TextMode="Password"></asp:TextBox>&nbsp;&nbsp;
						<asp:Button id="Button1" runat="server" Text="Enter"></asp:Button>&nbsp;
						<asp:Label id="Label2" runat="server" ForeColor="#FFC0C0"></asp:Label></P>
				</FONT><INPUT type="text" style="VISIBILITY: hidden;POSITION: absolute"></DIV>
		</form>
	</body>
</HTML>
