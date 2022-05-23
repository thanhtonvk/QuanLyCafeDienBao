using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Quan_ly_cua_hang;
namespace Quan_ly_cua_hang.GUI
{
    public partial class frm_KhachHang : Form
    {
        public frm_KhachHang()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string query = string.Format("USP_THEMKHACHHANG '{0}','{1}','{2}'",tb_makh,tb_ten.Text,tb_sdt.Text);
            SQL_Connect.Execute(query);
            loadDuLieu();
        }

        private void frm_KhachHang_Load(object sender, EventArgs e)
        {
            loadDuLieu();
        }
        public void loadDuLieu()
        {
            string query = "SELECT * FROM VIEW_DSKHACHHANG";
            dgv_dskh.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgv_dskh.AutoSizeRowsMode = DataGridViewAutoSizeRowsMode.AllCells;
            dgv_dskh.DataSource = SQL_Connect.getDataSet(query).Tables[0];
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string query = string.Format("USP_SUAKHACHHANG '{0}','{1}','{2}'",makh,tb_ten.Text,tb_sdt.Text);
            SQL_Connect.Execute(query);
            loadDuLieu();
        }
        string makh;
        private void dgv_dskh_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            foreach (DataGridViewRow row in dgv_dskh.SelectedRows)
            {
                makh = row.Cells[0].Value.ToString();
                tb_makh.Text = makh;
                tb_ten.Text = row.Cells[1].Value.ToString();
                tb_sdt.Text = row.Cells[2].Value.ToString();
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            string query = string.Format("USP_XOAKHACHHANG '{0}'", makh.Trim());
            SQL_Connect.Execute(query);
            loadDuLieu();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            string query = string.Format("USP_TIMKIEMKHACHHANG '{0}'", tb_timkiem.Text);
            dgv_dskh.DataSource = SQL_Connect.getDataSet(query).Tables[0];
        }

        private void button4_Click(object sender, EventArgs e)
        {
            frm_MainMenu mainMenu = new frm_MainMenu();
            mainMenu.Show();
            Visible = false;
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
