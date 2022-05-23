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
    public partial class frm_QuanLyNhanVien : Form
    {
        public frm_QuanLyNhanVien()
        {
            InitializeComponent();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void frm_QuanLyNhanVien_Load(object sender, EventArgs e)
        {
            loadDataNhanVien();
        }
        private void loadDataNhanVien()
        {
            string query = "select * from nhanvien";
            dgv_dssp.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgv_dssp.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCells;
            dgv_dssp.DataSource = SQL_Connect.getDataSet(query).Tables[0];
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string query = string.Format("USP_THEMNHANVIEN '{0}','{1}',N'{2}',N'{3}',N'{4}'", tb_manv.Text, tb_matkhau.Text, tb_tennv.Text, tb_ngaysinh.Text, tb_quequan.Text);
            SQL_Connect.Execute(query);
            loadDataNhanVien();
        }
        string manv;
        private void dgv_dssp_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            foreach (DataGridViewRow row in dgv_dssp.SelectedRows)
            {
                manv = row.Cells[0].Value.ToString();
                tb_manv.Text = manv;
                tb_matkhau.Text = row.Cells[1].Value.ToString();
                tb_tennv.Text = row.Cells[2].Value.ToString();
                tb_ngaysinh.Text = row.Cells[3].Value.ToString();
                tb_quequan.Text = row.Cells[4].Value.ToString();
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string query = string.Format("USP_SUANHANVIEN '{0}','{1}',N'{2}',N'{3}',N'{4}'", tb_manv.Text, tb_matkhau.Text, tb_tennv.Text, tb_ngaysinh.Text, tb_quequan.Text);
            SQL_Connect.Execute(query);
            loadDataNhanVien();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            string query = string.Format("USP_XOANHANVIEN '{0}'", tb_manv.Text);
            SQL_Connect.Execute(query);
            loadDataNhanVien();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            string query = string.Format("USP_TIMKIEMNHANVIEN '{0}'", tb_timkiem.Text);
            dgv_dssp.DataSource = SQL_Connect.getDataSet(query).Tables[0];
        }

        private void button4_Click(object sender, EventArgs e)
        {
            frm_Login login = new frm_Login();
            login.Show();
            Visible = false;
        }
    }
}
