using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Configuration;

namespace ASIH
{
	/// <summary>
	/// Summary description for WebForm1.
	/// </summary>
	public class WebForm1 : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.Button Button1;
		protected System.Web.UI.WebControls.DataList DataList1;
		protected System.Web.UI.HtmlControls.HtmlForm Form1;
		protected System.Web.UI.WebControls.Label Label8;
		int GsupplyID = 0;  //Supply ID of current item being added to datalist1 (for use in determining usercomments)
		protected System.Web.UI.WebControls.TextBox Textbox1;
		string searchstring = "";
		//protected DataGrid DataGrid2 = new DataGrid();
		//private SqlDataReader SuppliesSet;
		//private SqlDataReader VendorsSet;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
			//add postback code here
			

			this.DataList1.RepeatColumns = 1;
			if (this.Page.IsPostBack)
			{
				searchstring = this.Textbox1.Text;
				//validate search string here
				searchstring = searchstring.Replace("'","");
				
				this.GenerateDataLists();
			}
			
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{   
			this.Button1.Click += new System.EventHandler(this.Button1_Click);
			this.DataList1.ItemDataBound += new System.Web.UI.WebControls.DataListItemEventHandler(this.DataList1_OnItemDataBound);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void Button1_Click(object sender, System.EventArgs e)
		{
			//this.GenerateDataLists();
		}

		private void DataGrid2_onItemDataBound(object sender, System.Web.UI.WebControls.DataGridItemEventArgs e)
		{
			
			if (e.Item.ItemType ==  ListItemType.Item || e.Item.ItemType ==  ListItemType.AlternatingItem)
			{
				e.Item.Cells[0].Text = usercomments.GetUserComments(this.GsupplyID, int.Parse(e.Item.Cells[1].Text)).ToString();

			}
			
		}

		private void DataList1_OnItemDataBound(object sender, System.Web.UI.WebControls.DataListItemEventArgs e)
		{
			if (e.Item.ItemType ==  ListItemType.Item || e.Item.ItemType ==  ListItemType.AlternatingItem)
			{
				///////////////////////////////////////////////
				///Old code for adding user info via supplyid
				//Label label99 = new Label();
				//Label label98 = new Label();
				//label98.Text = "Added By(date revised): ";
				//System.Web.UI.WebControls.Label tempL;
				//int idL;
				//tempL = (Label)(e.Item.FindControl("Label1"));
				//idL = int.Parse(tempL.Text);
				//label99.Text = usercomments.GetUserComments(idL).ToString();
				//e.Item.Controls.Add(label98);
				//e.Item.Controls.Add(label99);
				//////////////////////////////////////////////////////
				
				DataGrid DataGrid2 = new DataGrid();
				DataGrid2.ItemDataBound += new System.Web.UI.WebControls.DataGridItemEventHandler(this.DataGrid2_onItemDataBound);
				
				DataGrid2.BorderWidth = 0;
				DataGrid2.CellPadding = 4;
				DataGrid2.CellSpacing = 0;
				DataGrid2.GridLines = GridLines.Horizontal;
				DataGrid2.ItemStyle.Font.Name = "Verdana";
				DataGrid2.ItemStyle.Font.Size = FontUnit.XXSmall;
				//DataGrid2.AlternatingItemStyle.BackColor = Color.LightGoldenrodYellow;
				DataGrid2.ShowHeader = true;
				//DataGrid2.HeaderStyle.BackColor = Color.WhiteSmoke;
				DataGrid2.HeaderStyle.ForeColor = Color.LightSlateGray;
				DataGrid2.HeaderStyle.Font.Bold = true;
				DataGrid2.HeaderStyle.Font.Size = FontUnit.XXSmall;
				DataGrid2.AutoGenerateColumns = false;
				
				System.Web.UI.WebControls.BoundColumn bc = new BoundColumn();
				
				bc.HeaderText = "Submitted by";
				//dc.Text ="click me";
				DataGrid2.Columns.Add(bc);

				
				bc = new BoundColumn();
				bc.DataField = "VendorID";
				bc.ItemStyle.Wrap = false;
				bc.Visible = false;
				DataGrid2.Columns.Add(bc);
				
				
				bc = new BoundColumn();
				bc.HeaderText = "Item No";
				bc.DataField = "Cat";
				bc.ItemStyle.Wrap = false;
				DataGrid2.Columns.Add(bc);
				
				bc = new BoundColumn();
				bc.HeaderText = "Vendor";
				bc.DataField = "VendorName";
				bc.ItemStyle.Wrap = false;
				DataGrid2.Columns.Add(bc);

				bc = new BoundColumn();
				bc.HeaderText = "Address";
				bc.DataField = "VendorAddress";
				bc.ItemStyle.Wrap = false;
				DataGrid2.Columns.Add(bc);

				//HyperLinkColumn qc = new HyperLinkColumn();
				//qc.HeaderText = "Vendor";
				//qc.DataTextField = "VendorName";
				//qc.DataNavigateUrlField = "Website";
				//qc.ItemStyle.Wrap = false;
				//hc.DataNavigateUrlFormatString = "\\";
				//qc.Target = "_blank";
				//DataGrid2.Columns.Add(qc);

				bc = new BoundColumn();
				bc.HeaderText = "Contact";
				bc.DataField = "Contact";
				bc.ItemStyle.Wrap = false;
				DataGrid2.Columns.Add(bc);

				bc = new BoundColumn();
				bc.HeaderText = "Phone";
				bc.DataField = "Phone";
				bc.ItemStyle.Wrap = false;
				DataGrid2.Columns.Add(bc);

				bc = new BoundColumn();
				bc.HeaderText = "Fax";
				bc.DataField = "Fax";
				bc.ItemStyle.Wrap = false;
				DataGrid2.Columns.Add(bc);

				HyperLinkColumn hc = new HyperLinkColumn();
				hc.HeaderText = "Website";
				hc.DataTextField = "Website";
				hc.DataNavigateUrlField = "Website";
				hc.ItemStyle.Wrap = false;
				//hc.DataNavigateUrlFormatString = "";
				hc.Target = "_blank";
				DataGrid2.Columns.Add(hc);
				
				System.Web.UI.WebControls.Label temp;
				int id;
				temp = (Label)(e.Item.FindControl("Label1"));
				id = int.Parse(temp.Text);
				this.GsupplyID = id;
				DataGrid2.DataSource = vendor.GetVendors(id);
				DataGrid2.DataBind();
				e.Item.Controls.Add(DataGrid2);
			}
		
		}

		private void TextBox1_TextChanged(object sender, System.EventArgs e)
		{
			this.GenerateDataLists();
		}
		private void GenerateDataLists()
		{
			int RecordsFound = 0;
			this.DataList1.Visible = false;
			//string SearchString;
			//SearchString = this.TextBox1.Text;
			this.Label8.Text = "";
			if (searchstring.Length > 2)
			{
				RecordsFound = supply.GetSuppliesCount(searchstring);
				this.Label8.Text = RecordsFound.ToString() + " Records found";
				SqlDataReader result = supply.GetSupplies(searchstring);
				this.DataList1.DataSource = result;
				this.DataList1.DataBind();
				result.Close();
				this.Textbox1.Text = "";
				this.DataList1.Visible = true;
			}
			else
			{
				this.Label8.Text = "Please enter a proper search parameter"; //display enter search term label
			}
		}
	}
}
