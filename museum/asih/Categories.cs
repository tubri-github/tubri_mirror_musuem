using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ASIH
{
	/// <summary>
	/// Summary description for Categories.
	/// </summary>
	public class Categories
	{
		public Categories()
		{
			//
			// TODO: Add constructor logic here
			//
		}
		public static void addCategory(string Category)
		{
			SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
			String insertCmd = "insert into Categories (Category) values (@Category)";
			SqlCommand cmd = new SqlCommand(insertCmd, conn);
			cmd.Parameters.Add(new SqlParameter("@Category", SqlDbType.NChar, 11));
			cmd.Parameters["@Category"].Value = Category;
			cmd.CommandType = CommandType.Text;
			conn.Open();
			cmd.ExecuteNonQuery();
		}
	}
}
