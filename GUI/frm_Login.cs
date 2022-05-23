using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Quan_ly_cua_hang.Model;
namespace Quan_ly_cua_hang.GUI
{
    public partial class frm_Login : Form
    {
        public frm_Login()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (NhanVienDAO.DangNhap(tb_taikhoan.Text, tb_matkhau.Text))
            {
                frm_MainMenu mainMenu = new frm_MainMenu();
                mainMenu.Show();
                Visible = false;
            }
            else if (tb_taikhoan.Text.Equals("admin") && tb_matkhau.Text.Equals("admin"))
            {
                frm_QuanLyNhanVien nhanVien = new frm_QuanLyNhanVien();
                nhanVien.Show();
                Visible = false;
            }
            else
            {
                MessageBox.Show("Tai khoan hoac mat khau khong chinh xac");
            }
        }

        private void frm_Login_Load(object sender, EventArgs e)
        {

        }
    }
}
