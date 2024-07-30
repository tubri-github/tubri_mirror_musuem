using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ASIH
{
	/// <summary>
	/// Summary description for SupplyVendor.
	/// </summary>
	public class SupplyVendor
	{
		public SupplyVendor()
		{
			//
			// TODO: Add constructor logic here
			//
		}
		public static void addSupplyVendorLink(int SupplyID, int VendorID, string Cat)
		{
			SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
			String insertCmd = "insert into SuppliesVendor (SupplyID, VendorID, Cat) values (@SupplyID, @VendorID, @Cat)";
			SqlCommand cmd = new SqlCommand(insertCmd, conn);
			cmd.Parameters.Add(new SqlParameter("@SupplyID", SqlDbType.Int, 11));
			cmd.Parameters["@SupplyID"].Value = SupplyID;
			cmd.Parameters.Add(new SqlParameter("@VendorID", SqlDbType.Int, 11));
			cmd.Parameters["@VendorID"].Value = VendorID;
			cmd.Parameters.Add(new SqlParameter("@Cat", SqlDbType.NChar, 11));
			cmd.Parameters["@Cat"].Value = Cat;
			cmd.CommandType = CommandType.Text;
			conn.Open();
			cmd.ExecuteNonQuery();
		}
	}
}
