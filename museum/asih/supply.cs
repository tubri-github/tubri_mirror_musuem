using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ASIH
{
	/// <summary>
	/// Summary description for supply.
	/// </summary>
	public class supply
	{
		public supply()
		{
			//
			// TODO: Add constructor logic here
			//
		}
		public static SqlDataReader GetSupplies(string SearchItem)
		{
			//returns a datareader of vendors for a given product
			SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
			SqlCommand cmd = new SqlCommand(@"Select * from SuppliesCategory WHERE SupplyName LIKE @SupplyName OR SupplyDescription LIKE @SupplyDesc" , conn);
			cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@SupplyName", "%" + SearchItem + "%" );
            cmd.Parameters.AddWithValue("@SupplyDesc", "%" + SearchItem + "%");
			conn.Open();
			SqlDataReader result = cmd.ExecuteReader(CommandBehavior.CloseConnection);
			
			//conn.Close();
			return result;

		}
		public static int GetSuppliesCount(string SearchItem)
		{
			//returns a datareader of vendors for a given product
			int count = 0;
			SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
            SqlCommand cmd = new SqlCommand(@"Select Count(*) from SuppliesCategory WHERE SupplyName LIKE @SupplyName OR SupplyDescription LIKE @SupplyDesc", conn);
			cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@SupplyName", "%" + SearchItem + "%");
            cmd.Parameters.AddWithValue("@SupplyDesc", "%" + SearchItem + "%");
			conn.Open();
			SqlDataReader result = cmd.ExecuteReader(CommandBehavior.CloseConnection);
			result.Read();
			count = result.GetInt32(0);
			conn.Close();
			return count;

		}
		public static void addNewSupply(string SupplyName, string SupplyDesc, string Remarks, int CategoryID, string SupplyImage)
		{
			SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
			String insertCmd = "insert into supplies (SupplyName, SupplyDescription, Remarks, CategoryID, SupplyImage) values (@SupplyName, @SupplyDescription, @Remarks, @CategoryID, @SupplyImage)";
			//String insertCmd = "insert into supplies (Supply) values (@Supply)";
			SqlCommand cmd = new SqlCommand(insertCmd, conn);
			cmd.Parameters.Add(new SqlParameter("@SupplyName", SqlDbType.NChar, 11));
			cmd.Parameters["@SupplyName"].Value = SupplyName;
			cmd.Parameters.Add(new SqlParameter("@SupplyDescription", SqlDbType.NChar, 11));
			cmd.Parameters["@SupplyDescription"].Value = SupplyDesc;
			cmd.Parameters.Add(new SqlParameter("@Remarks", SqlDbType.NChar, 11));
			cmd.Parameters["@Remarks"].Value = Remarks;
			cmd.Parameters.Add(new SqlParameter("@CategoryID", SqlDbType.Int, 11));
			cmd.Parameters["@CategoryID"].Value = CategoryID;
			cmd.Parameters.Add(new SqlParameter("@SupplyImage", SqlDbType.NChar, 11));
			cmd.Parameters["@SupplyImage"].Value = SupplyImage;
			cmd.CommandType = CommandType.Text;
			conn.Open();
			cmd.ExecuteNonQuery();
		}
		public static void FillListBox(System.Web.UI.WebControls.ListBox vListBox)
		{
			SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
			SqlCommand cmd = new SqlCommand(@"Select * from Supplies", conn);
			cmd.CommandType = CommandType.Text;
			conn.Open();
			SqlDataReader result = cmd.ExecuteReader(CommandBehavior.CloseConnection);
			vListBox.DataSource = result;
			vListBox.DataTextField = "SupplyName";
			vListBox.DataValueField = "SupplyID";
			vListBox.DataBind();
		}

	}
}
