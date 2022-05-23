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
    public partial class frm_ThanhToanHDB : Form
    {
        public frm_ThanhToanHDB()
        {
            InitializeComponent();
        }

        private void frm_ThanhToanHDB_Load(object sender, EventArgs e)
        {
            loadDSSPMua();
            loadThanhToan();
        }
        string mahdb = frm_BanHang.mahdb;
        private void loadDSSPMua()
        {
            string query = string.Format("USP_CHITIETHDB '{0}'", mahdb);
            dgv_dsspban.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgv_dsspban.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCells;
            dgv_dsspban.DataSource = SQL_Connect.getDataSet(query).Tables[0];
        }
        private void loadThanhToan()
        {
            string query = string.Format("USP_HOADONTHANHTOAN '{0}'", mahdb);
            dgv_thanhtoan.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgv_thanhtoan.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCells;
            dgv_thanhtoan.DataSource = SQL_Connect.getDataSet(query).Tables[0];
        }

        private void button1_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Thanh toán thành công");
            frm_BanHang banHang = new frm_BanHang();
            banHang.Show();
            Visible = false;
        }
    }
}
