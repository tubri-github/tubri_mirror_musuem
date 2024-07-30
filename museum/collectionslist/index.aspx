<%@ Page language="c#" Codebehind="index.aspx.cs" AutoEventWireup="false" Inherits="CollectionsList.index" EnableSessionState="False" enableViewState="False"%>
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
			<TABLE id="Table1" style="Z-INDEX: 105; LEFT: 8px; POSITION: absolute; TOP: 8px" cellSpacing="0"
				cellPadding="0" width="300" border="0">
				<TR>
					<TD>
						<asp:Panel id="Panel1" runat="server" Width="777px">
							<P><FONT color="#ffffff">Listed below are the current list of collection in the 
									database.&nbsp; Please find your collection&nbsp;in the list and click the edit 
									record link. If your collection is not listed,&nbsp;click the add new record 
									link to create a new entry in the database.</FONT></P>
							<P><FONT color="#ffffff">Thank You.</FONT>&nbsp;</P>
						</asp:Panel></TD>
				</TR>
				<TR>
					<TD><BR>
						<asp:HyperLink id="HyperLink2" runat="server" NavigateUrl="db.aspx" ForeColor="White" EnableViewState="False">Add New Record</asp:HyperLink></TD>
				</TR>
				<TR>
					<TD>
						<asp:DataGrid id="DataGrid1" runat="server" Width="800px" AutoGenerateColumns="False" BorderColor="DarkKhaki"
							BorderStyle="Double" BorderWidth="3px" BackColor="White" CellPadding="4" GridLines="Horizontal"
							EnableViewState="False">
							<FooterStyle ForeColor="#333333" BackColor="White"></FooterStyle>
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#339966"></SelectedItemStyle>
							<ItemStyle ForeColor="#333333" BackColor="White"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#336666"></HeaderStyle>
							<Columns>
								<asp:TemplateColumn>
									<ItemStyle Wrap="False"></ItemStyle>
									<ItemTemplate>
										<asp:HyperLink id=HyperLink1 runat="server" NavigateUrl='<%# "db.aspx?id=" + DataBinder.Eval(Container, "DataItem.CollectionID") %>'>Edit Record</asp:HyperLink>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:BoundColumn DataField="Collection" HeaderText="Collection"></asp:BoundColumn>
								<asp:BoundColumn DataField="Acronym" HeaderText="Acronym"></asp:BoundColumn>
								<asp:BoundColumn DataField="Specimens" HeaderText="Specimens"></asp:BoundColumn>
								<asp:BoundColumn DataField="Dept" HeaderText="Dept."></asp:BoundColumn>
								<asp:BoundColumn DataField="Division" HeaderText="Division"></asp:BoundColumn>
								<asp:BoundColumn DataField="Institution" HeaderText="Institution"></asp:BoundColumn>
								<asp:BoundColumn DataField="Address" HeaderText="Address"></asp:BoundColumn>
								<asp:BoundColumn DataField="City" HeaderText="City"></asp:BoundColumn>
								<asp:BoundColumn DataField="State" HeaderText="State"></asp:BoundColumn>
								<asp:BoundColumn DataField="Zip" HeaderText="Zip Code"></asp:BoundColumn>
								<asp:BoundColumn DataField="Contact" HeaderText="Contact"></asp:BoundColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Center" ForeColor="White" BackColor="#336666" Mode="NumericPages"></PagerStyle>
						</asp:DataGrid></TD>
				</TR>
				<TR>
					<TD>
						<P>
							<asp:HyperLink id="HyperLink3" runat="server" NavigateUrl="db.aspx" ForeColor="White" EnableViewState="False">Add New Record</asp:HyperLink><BR>
						</P>
						<P>
							<asp:HyperLink id="HyperLink4" runat="server" NavigateUrl="thankyou.html" ForeColor="White" EnableViewState="False">Exit</asp:HyperLink></P>
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
