using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
namespace Quan_ly_cua_hang.Model
{
    class NhanVienDAO
    {
        public static NhanVien nv;
        public static List<NhanVien> getAllNhanVien()
        {
            List<NhanVien> nhanViens = new List<NhanVien>();
            SqlConnection connection = new SqlConnection(ConnectionString.connnectionString);
            connection.Open();
            string query = "SELECT * FROM NHANVIEN";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                NhanVien nhanVien = new NhanVien(dataReader[0].ToString().Trim(),dataReader[1].ToString().Trim(), dataReader[2].ToString().Trim(), dataReader[3].ToString().Trim(), dataReader[4].ToString().Trim());
                nhanViens.Add(nhanVien);
            }
            connection.Close();
            return nhanViens;
        }
        public static bool DangNhap(string manv,string matkhau)
        {
            bool check = false;
            foreach(NhanVien nhanvien in getAllNhanVien())
            {
                if (manv.Equals(nhanvien.Manv) && matkhau.Equals(nhanvien.Matkhau))
                {
                    check = true;
                    nv = nhanvien;
                }
            }
            return check;
        }

    }
}
