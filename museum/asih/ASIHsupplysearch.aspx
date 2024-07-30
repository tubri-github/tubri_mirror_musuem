<%@ Page language="c#" Codebehind="ASIHsupplysearch.aspx.cs" AutoEventWireup="false" Inherits="ASIH.WebForm1" buffer="True" enableViewState="True"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>ASIH Supplies Database</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="#ffdd66" ms_positioning="GridLayout">
		<TABLE id="Table1" style="WIDTH: 711px; HEIGHT: 209px" cellSpacing="1" cellPadding="1" width="711" border="0">
			<TR>
				<TD style="HEIGHT: 169px"></TD>
				<TD style="HEIGHT: 169px">
					<h2>ASIH SUPPLIES AND RESOURCES DATABASE</h2>
					<IMG height="96" hspace="10" src="logot.gif" width="78" align="right" border="0">
					<p>The ASIH Supplies and Resources database is a searchable list of products and 
						vendors used by various collections of fishes and herps. This list is not 
						complete and does not represent all of the collections that responded to the 
						survey sent in 2002. Note that under submitted by of each entry is the acronym 
						of the museum and a date that indicates who submited the information. If users 
						of this list have any questions, comments or would like to submit names of 
						products and sources, please email <A href="mailto:nelson@museum.tulane.edu">Nelson 
						Rios</A> or <A href="mailto:rosales@mail.utexas.edu">Jessica Rosales
						</A>
					</p>
				</TD>
				<TD style="HEIGHT: 169px"></TD>
			</TR>
			<TR>
				<TD></TD>
				<TD><br>
					<H2>Enter your query to search the ASIH Supply Database:</H2>
				</TD>
			</TR>
		</TABLE>
		<form id="Form1" style="TABLE-LAYOUT: auto" method="post" runat="server">
			<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="501" border="0">
				<TR>
					<TD style="WIDTH: 357px; HEIGHT: 28px"><asp:textbox id="Textbox1" runat="server" Height="26px" Width="210px" MaxLength="50" AutoPostBack="True"></asp:textbox><asp:button id="Button1" runat="server" Height="24px" Width="79px" Text="Search"></asp:button></TD>
					<TD style="HEIGHT: 28px"></TD>
					<TD style="HEIGHT: 28px"><asp:label id="Label8" runat="server" Height="16px" Width="122px"></asp:label></TD>
				</TR>
			</TABLE>
			<TABLE id="Table2" cellSpacing="0" cellPadding="0" width="800" border="0">
				<TR>
					<TD></TD>
					<TD style="HEIGHT: 50px"><asp:datalist id="DataList1" runat="server" Height="50px" Width="647px" EnableViewState="False" BorderColor="#ffdd66" BorderWidth="1px" CellPadding="4" BorderStyle="None" BackColor="#ffdd66" GridLines="Vertical" ForeColor="Black" ShowHeader="False" ShowFooter="False" RepeatColumns="1" Visible="false">
							<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#CE5D5A"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="#FFDD66"></AlternatingItemStyle>
							<ItemStyle Font-Size="X-Small" Font-Names="Verdana" Font-Italic="True" BackColor="Khaki"></ItemStyle>
							<ItemTemplate>
								<asp:Label id=Label1 runat="server" Visible="False" Text='<%# DataBinder.Eval(Container.DataItem, "SupplyID") %>'>
								</asp:Label>Product:
								<asp:Label id=Label2 runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "SupplyName") %>' Font-Bold="True">
								</asp:Label><BR>
								Description:&nbsp;
								<asp:Label id=Label3 runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "SupplyDescription") %>'>
								</asp:Label><BR>
								Remarks:
								<asp:Label id=Label5 runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Remarks") %>'>
								</asp:Label><BR>
							</ItemTemplate>
							<FooterStyle BackColor="#CCCC99"></FooterStyle>
							<SeparatorTemplate>
							</SeparatorTemplate>
							<HeaderStyle Font-Bold="True" ForeColor="White" BorderStyle="None" BackColor="#6B696B"></HeaderStyle>
						</asp:datalist></TD>
					<TD></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 2px"></TD>
					<TD>
						<hr>
						<center><A href="http://www.asih.org">ASIH Home</A>
							<hr>
							<basefont size="2">
								This page maintained by ASIH<br>
								Last modified 2004
								<br>
								© 2004 ASIH
							</basefont>
						</center>
					</TD>
					<TD style="WIDTH: 25px"></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
