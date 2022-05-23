using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
namespace Quan_ly_cua_hang.Model
{
    class SanPhamDAO
    {
        public static List<string> getAllMaSP()
        {
            List<string> maspList = new List<string>();
            string sql = "select * from CHITIETHDN";
            using (SqlConnection connection = new SqlConnection(ConnectionString.connnectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand(sql, connection);
                SqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    maspList.Add(dataReader[1].ToString());
                }
                connection.Close();
            }
            return maspList;
        }
    }
}
