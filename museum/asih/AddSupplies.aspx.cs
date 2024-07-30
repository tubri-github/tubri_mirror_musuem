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
	/// Summary description for AddSupplies.
	/// </summary>
	public class AddSupplies : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.TextBox TextBox1;
		protected System.Web.UI.WebControls.Label Label1;
		protected System.Web.UI.WebControls.Label Label2;
		protected System.Web.UI.WebControls.TextBox TextBox2;
		protected System.Web.UI.WebControls.TextBox TextBox3;
		protected System.Web.UI.WebControls.TextBox TextBox4;
		protected System.Web.UI.WebControls.TextBox TextBox5;
		protected System.Web.UI.WebControls.TextBox TextBox6;
		protected System.Web.UI.WebControls.TextBox TextBox7;
		protected System.Web.UI.WebControls.DropDownList DropDownList1;
		protected System.Web.UI.WebControls.Button Button1;
		protected System.Web.UI.WebControls.Label Label3;
		protected System.Web.UI.WebControls.Label Label4;
		protected System.Web.UI.WebControls.ListBox ListBox1;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
			SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
			SqlCommand cmd = new SqlCommand(@"Select * from Vendors", conn);
			cmd.CommandType = CommandType.Text;
			conn.Open();
			SqlDataReader result = cmd.ExecuteReader(CommandBehavior.CloseConnection);
			this.DropDownList1.DataSource = result;
			this.DropDownList1.DataTextField = "VendorName";
			this.DropDownList1.DataValueField = "VendorID";
			this.DropDownList1.DataBind();
			cmd.CommandText = "Select * from vendors";
			cmd.CommandType = CommandType.Text;
			conn.Open();
			result = cmd.ExecuteReader(CommandBehavior.CloseConnection);
			this.ListBox1.DataSource = result;
			this.ListBox1.DataTextField = "VendorName";
			this.ListBox1.DataValueField = "VendorID";
			this.ListBox1.DataBind();

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
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void Button1_Click(object sender, System.EventArgs e)
		{
			
			SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
			
			String insertCmd = "insert into supplies (CategoryID, Supply, Description, CatNo, Notes, Vendor, Remarks) values (@CategoryID, @Supply, @Description, @CatNo, @Notes, @Vendor, @Remarks)";
			//String insertCmd = "insert into supplies (Supply) values (@Supply)";
			SqlCommand cmd = new SqlCommand(insertCmd, conn);
			cmd.Parameters.Add(new SqlParameter("@CategoryID", SqlDbType.NChar, 11));
			cmd.Parameters["@CategoryID"].Value = this.DropDownList1.SelectedItem.Value;
			cmd.Parameters.Add(new SqlParameter("@Supply", SqlDbType.NChar, 11));
			cmd.Parameters["@Supply"].Value = this.TextBox1.Text;
			cmd.Parameters.Add(new SqlParameter("@Description", SqlDbType.NChar, 11));
			cmd.Parameters["@Description"].Value = this.DropDownList1.SelectedItem.Text;
			cmd.Parameters.Add(new SqlParameter("@CatNo", SqlDbType.NChar, 11));
			cmd.Parameters["@CatNo"].Value = this.TextBox3.Text;
			cmd.Parameters.Add(new SqlParameter("@Notes", SqlDbType.NChar, 11));
			cmd.Parameters["@Notes"].Value = this.TextBox4.Text;
			cmd.Parameters.Add(new SqlParameter("@Vendor", SqlDbType.NChar, 11));
			cmd.Parameters["@Vendor"].Value = this.TextBox5.Text;
			cmd.Parameters.Add(new SqlParameter("@Remarks", SqlDbType.NChar, 11));
			cmd.Parameters["@Remarks"].Value = this.TextBox6.Text;
			cmd.CommandType = CommandType.Text;
			conn.Open();
			
			cmd.ExecuteNonQuery();
			
		}
	}
}
