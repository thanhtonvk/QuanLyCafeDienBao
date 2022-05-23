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
    public partial class frm_BanHang : Form
    {
        public frm_BanHang()
        {
            InitializeComponent();
        }

        private void frm_BanHang_Load(object sender, EventArgs e)
        {
            loadDataSanPham();
            loadDuLieuKhachHang();

        }
        private void loadDataSanPham()
        {
            string query = "select * from sanpham";
            dgv_dssp.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgv_dssp.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCells;
            dgv_dssp.DataSource = SQL_Connect.getDataSet(query).Tables[0];
        }
        public void loadDuLieuKhachHang()
        {
            string query = "SELECT * FROM VIEW_DSKHACHHANG";
            dgv_dskh.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgv_dskh.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCells;
            dgv_dskh.DataSource = SQL_Connect.getDataSet(query).Tables[0];
        }
        public void loadCTHoaDonBan()
        {
            string query = string.Format("USP_CHITIETHDB '{0}'", tb_mahdb.Text.Trim());
            dgv_Chitiethdb.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgv_Chitiethdb.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCells;
            dgv_Chitiethdb.DataSource = SQL_Connect.getDataSet(query).Tables[0];
        }
        string makh;
        private void dgv_dskh_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            foreach (DataGridViewRow row in dgv_dskh.SelectedRows)
            {
                makh = row.Cells[0].Value.ToString();
                lb_makh.Text = makh;
            }
        }
        string masp;
        private void dgv_dssp_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            foreach (DataGridViewRow row in dgv_dssp.SelectedRows)
            {
                masp = row.Cells[0].Value.ToString();
            }
           
        }
        public static string mahdb;
        private void button1_Click(object sender, EventArgs e)
        {
            if (makh == null)
            {
                MessageBox.Show("Vui lòng chọn khách hàng");
            }
            else
            {
                string query = string.Format("USP_THEMHOADONBAN '{0}','{1}','{2}','{3}'", tb_mahdb.Text, DateTime.Now.ToString("yyyy-MM-dd"), NhanVienDAO.nv.Manv, makh);
                SQL_Connect.Execute(query);
                MessageBox.Show("Thêm hóa đơn thành công, chọn sản phẩm cần mua");
            }
            mahdb = tb_mahdb.Text;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            string query = string.Format("USP_THEMCHITIETHDB '{0}','{1}',{2}", tb_mahdb.Text, masp, 1);
            SQL_Connect.Execute(query);
            loadCTHoaDonBan();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            frm_ThanhToanHDB thanhToanHDB = new frm_ThanhToanHDB();
            thanhToanHDB.Show();
            Visible = false;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            frm_MainMenu mainMenu = new frm_MainMenu();
            mainMenu.Show();
            Visible = false;
        }
    }
}
