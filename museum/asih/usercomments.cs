using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ASIH
{
	/// <summary>
	/// Implements the users table
	/// </summary>
	public class usercomments
	{
		public usercomments()
		{
			//
			// TODO: Add constructor logic here
			//
		}
		public static string GetUserComments(int SupplyID)
		{
			//returns a string of users(dates updated) for a given supplyid
			SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
			SqlCommand cmd = new SqlCommand(@"Select * from supplyusers2 WHERE SupplyID = " + SupplyID , conn);
			cmd.CommandType = CommandType.Text;
			conn.Open();
			string strResult = "";
			SqlDataReader result = cmd.ExecuteReader(CommandBehavior.CloseConnection);
			int count = usercomments.GetUsersCommentsCount(SupplyID);
			for (int i = 0; i < count; i++)
				{
					result.Read();
					strResult = strResult + result.GetString(1) + "(" + result.GetString(3) + ")"  + "; ";
					//strResult = count.ToString();
				}
			return strResult;

		}

		public static int GetUsersCommentsCount(int SupplyID)
		{
			//returns a string of users(dates updated) for a given supplyid
			SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
			SqlCommand cmd = new SqlCommand(@"Select Count(*) from supplyusers2 WHERE SupplyID = " + SupplyID, conn);
			cmd.CommandType = CommandType.Text;
			conn.Open();
			int count = 0;
			SqlDataReader result = cmd.ExecuteReader(CommandBehavior.CloseConnection);
			result.Read();
			count = result.GetInt32(0);
			conn.Close();
			return count;

		}
		public static int GetUsersCommentsCount(int SupplyID, int VendorID)
		{
			//returns a string of users(dates updated) for a given supplyid and vendor id
			SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
			SqlCommand cmd = new SqlCommand(@"Select Count(*) from supplyusers2 WHERE SupplyID = " + SupplyID + " AND VendorID = " + VendorID, conn);
			cmd.CommandType = CommandType.Text;
			conn.Open();
			int count = 0;
			SqlDataReader result = cmd.ExecuteReader(CommandBehavior.CloseConnection);
			result.Read();
			count = result.GetInt32(0);
			conn.Close();
			return count;

		}

		public static string GetUserComments(int SupplyID, int VendorID)
		{
			//needs work
			//returns a string of users(dates updated) for a given supplyid
			SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
			SqlCommand cmd = new SqlCommand(@"Select * from supplyusers2 WHERE SupplyID = " + SupplyID + " AND VendorID = " + VendorID, conn);
			cmd.CommandType = CommandType.Text;
			conn.Open();
			string strResult = "";
			SqlDataReader result = cmd.ExecuteReader(CommandBehavior.CloseConnection);
			int count = usercomments.GetUsersCommentsCount(SupplyID, VendorID);
			for (int i = 0; i < count; i++)
			{
				result.Read();
				strResult = strResult + result.GetString(1) + "(" + result.GetString(3) + ")"  + "; ";
				//strResult = count.ToString();
			}
			return strResult;

		}
		public static void addUserComments(int SupVenID, string Usedby, string UserComments, string DateLastRevised)
		{
			SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
			String insertCmd = "insert into UserComments (SupVenID, Usedby, UserComments, DateLastRevised) values (@SupVenID, @Usedby, @UserComments @DateLastRevised)";
			SqlCommand cmd = new SqlCommand(insertCmd, conn);
			cmd.Parameters.Add(new SqlParameter("@SupVenID", SqlDbType.Int, 11));
			cmd.Parameters["@SupVenID"].Value = SupVenID;
			cmd.Parameters.Add(new SqlParameter("@Usedby", SqlDbType.NChar, 11));
			cmd.Parameters["@Usedby"].Value = Usedby;
			cmd.Parameters.Add(new SqlParameter("@UserComments", SqlDbType.NChar, 11));
			cmd.Parameters["@UserComments"].Value = UserComments;
			cmd.Parameters.Add(new SqlParameter("@DateLastRevised", SqlDbType.NChar, 11));
			cmd.Parameters["@DateLastRevised"].Value = DateLastRevised;
			cmd.CommandType = CommandType.Text;
			conn.Open();
			cmd.ExecuteNonQuery();
		}
	}
}
