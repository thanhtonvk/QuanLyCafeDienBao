using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Quan_ly_cua_hang
{
    class SQL_Connect
    {
        public static DataSet getDataSet(string query)
        {

            DataSet dataSet = new DataSet();
            using (SqlConnection connection = new SqlConnection(ConnectionString.connnectionString))
            {
                connection.Open();
                SqlDataAdapter dataAdapter = new SqlDataAdapter(query, connection);
                dataAdapter.Fill(dataSet);
                connection.Close();
            }
            return dataSet;
        }
        public static int Execute(string query)
        {
            int rs = -1;
            SqlConnection connection = new SqlConnection(ConnectionString.connnectionString);
            connection.Open();
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                rs = command.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                MessageBox.Show("Thất bại" + e.Message);
            }
            return rs;
        }
    }
}
