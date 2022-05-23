using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Quan_ly_cua_hang.GUI
{
    public partial class frm_MainMenu : Form
    {
        public frm_MainMenu()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            frm_SanPham sanPham = new frm_SanPham();
            sanPham.Show();
            Visible = false;
        }

        private void button2_Click(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            frm_BanHang banHang = new frm_BanHang();
            banHang.Show();
            Visible = false;
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            frm_KhachHang khachHang = new frm_KhachHang();
            khachHang.Show();
            Visible = false;
        }
    }
}
