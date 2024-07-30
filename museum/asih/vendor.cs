using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ASIH
{
	/// <summary>
	/// Summary description for vendor.
	/// </summary>
	public class vendor
	{
		public vendor()
		{
			//
			// TODO: Add constructor logic here
			//
		}
		
		public static SqlDataReader GetVendorsAndUsers(int productID)
		{
			//returns a datareader of vendors for a given product
			SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
			SqlCommand cmd = new SqlCommand(@"Select * from SuppliesVendor INNER JOIN Vendors ON SuppliesVendor.VendorID = Vendors.VendorID WHERE SupplyID = " + productID, conn);
			cmd.CommandType = CommandType.Text;
			conn.Open();
			SqlDataReader result = cmd.ExecuteReader(CommandBehavior.CloseConnection);


			return result;

		}
		
		public static SqlDataReader GetVendors(int productID)
		{
			//returns a datareader of vendors for a given product
			SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
			SqlCommand cmd = new SqlCommand(@"Select * from SuppliesVendor INNER JOIN Vendors ON SuppliesVendor.VendorID = Vendors.VendorID WHERE SupplyID = " + productID, conn);
			cmd.CommandType = CommandType.Text;
			conn.Open();
			SqlDataReader result = cmd.ExecuteReader(CommandBehavior.CloseConnection);


			return result;

		}
		public static SqlDataReader GetVendors()
		{
			//returns a datareader of vendors for a given product
			SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
			SqlCommand cmd = new SqlCommand(@"Select * from SuppliesVendor INNER JOIN Vendors ON SuppliesVendor.VendorID = Vendors.VendorID", conn);
			cmd.CommandType = CommandType.Text;
			conn.Open();
			SqlDataReader result = cmd.ExecuteReader(CommandBehavior.CloseConnection);
			return result;

		}
		public static void addNewVendor(string VendorName, string VendorAddress, string Contact, string Phone, string Fax, string Email, string Website)
		{
			SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
			String insertCmd = "insert into Vendors (VendorName, VendorAddress, Contact, Phone, Fax, Email, Website) values (@VendorName, @VendorAddress, @Contact, @Phone, @Fax, @Email, @Website)";
			SqlCommand cmd = new SqlCommand(insertCmd, conn);
			cmd.Parameters.Add(new SqlParameter("@VendorName", SqlDbType.NChar, 11));
			cmd.Parameters["@VendorName"].Value = VendorName;
			cmd.Parameters.Add(new SqlParameter("@VendorAddress", SqlDbType.NChar, 11));
			cmd.Parameters["@VendorAddress"].Value = VendorAddress;
			cmd.Parameters.Add(new SqlParameter("@Contact", SqlDbType.NChar, 11));
			cmd.Parameters["@Contact"].Value = Contact;
			cmd.Parameters.Add(new SqlParameter("@Phone", SqlDbType.NChar, 11));
			cmd.Parameters["@Phone"].Value = Phone;
			cmd.Parameters.Add(new SqlParameter("@Fax", SqlDbType.NChar, 11));
			cmd.Parameters["@Fax"].Value = Fax;
			cmd.Parameters.Add(new SqlParameter("@Email", SqlDbType.NChar, 11));
			cmd.Parameters["@Email"].Value = Email;
			cmd.Parameters.Add(new SqlParameter("@Website", SqlDbType.NChar, 11));
			cmd.Parameters["@Website"].Value = Website;
			cmd.CommandType = CommandType.Text;
			conn.Open();
			cmd.ExecuteNonQuery();
		}
	}
}
