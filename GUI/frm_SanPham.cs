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
    public partial class frm_SanPham : Form
    {
        public frm_SanPham()
        {
            InitializeComponent();
        }

        private void frm_SanPham_Load(object sender, EventArgs e)
        {
            loadData();
        }
        private void loadData()
        {
            string query = "select * from sanpham";
            dgv_dssp.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgv_dssp.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCells;
            dgv_dssp.DataSource = SQL_Connect.getDataSet(query).Tables[0];
        }

        private void button4_Click(object sender, EventArgs e)
        {
            frm_MainMenu mainMenu = new frm_MainMenu();
            mainMenu.Show();
            Visible = false;
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string query = string.Format("USP_THEMSP '{0}',N'{1}',N'{2}',N'{3}',{4}", cb_masp.Text, tb_tensp.Text, tb_cauhinh.Text, tb_mau.Text, tb_giaban.Text);
            SQL_Connect.Execute(query);
            loadData();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            string query = string.Format("USP_XOASP '{0}'", cb_masp.Text);
            SQL_Connect.Execute(query);
            loadData();
        }
        string masp;
        private void dgv_dssp_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            foreach (DataGridViewRow row in dgv_dssp.SelectedRows)
            {
                masp = row.Cells[0].Value.ToString();
                cb_masp.Text = masp;
                tb_tensp.Text = row.Cells[1].Value.ToString();
                tb_cauhinh.Text = row.Cells[2].Value.ToString();
                tb_mau.Text = row.Cells[3].Value.ToString();
                tb_giaban.Text = row.Cells[4].Value.ToString();
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string query = string.Format("USP_SUASP '{0}',N'{1}',N'{2}',N'{3}',{4}", cb_masp.Text, tb_tensp.Text, tb_cauhinh.Text, tb_mau.Text, tb_giaban.Text);
            SQL_Connect.Execute(query);
            loadData();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            string query = string.Format("USP_TIMKIEMSP '{0}'", tb_timkiem.Text);
            dgv_dssp.DataSource = SQL_Connect.getDataSet(query).Tables[0];
        }
    }
}