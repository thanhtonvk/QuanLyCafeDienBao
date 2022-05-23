
namespace Quan_ly_cua_hang.GUI
{
    partial class frm_BanHang
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dgv_dssp = new System.Windows.Forms.DataGridView();
            this.dgv_Chitiethdb = new System.Windows.Forms.DataGridView();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.dgv_dskh = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.tb_mahdb = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.lb_makh = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dssp)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_Chitiethdb)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dskh)).BeginInit();
            this.SuspendLayout();
            // 
            // dgv_dssp
            // 
            this.dgv_dssp.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            this.dgv_dssp.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_dssp.Location = new System.Drawing.Point(333, 148);
            this.dgv_dssp.Name = "dgv_dssp";
            this.dgv_dssp.Size = new System.Drawing.Size(352, 339);
            this.dgv_dssp.TabIndex = 13;
            this.dgv_dssp.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_dssp_CellClick);
            // 
            // dgv_Chitiethdb
            // 
            this.dgv_Chitiethdb.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            this.dgv_Chitiethdb.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_Chitiethdb.Location = new System.Drawing.Point(688, 148);
            this.dgv_Chitiethdb.Name = "dgv_Chitiethdb";
            this.dgv_Chitiethdb.Size = new System.Drawing.Size(288, 339);
            this.dgv_Chitiethdb.TabIndex = 26;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(340, 132);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(108, 13);
            this.label5.TabIndex = 27;
            this.label5.Text = "Danh sách sản phẩm";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(685, 132);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(95, 13);
            this.label6.TabIndex = 28;
            this.label6.Text = "Thông tin hóa đơn";
            // 
            // dgv_dskh
            // 
            this.dgv_dskh.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            this.dgv_dskh.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_dskh.Location = new System.Drawing.Point(12, 148);
            this.dgv_dskh.Name = "dgv_dskh";
            this.dgv_dskh.Size = new System.Drawing.Size(315, 339);
            this.dgv_dskh.TabIndex = 29;
            this.dgv_dskh.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_dskh_CellClick);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 132);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(119, 13);
            this.label1.TabIndex = 30;
            this.label1.Text = "Danh sách khách hàng";
            // 
            // tb_mahdb
            // 
            this.tb_mahdb.Location = new System.Drawing.Point(113, 90);
            this.tb_mahdb.Name = "tb_mahdb";
            this.tb_mahdb.Size = new System.Drawing.Size(131, 20);
            this.tb_mahdb.TabIndex = 31;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 93);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(86, 13);
            this.label2.TabIndex = 32;
            this.label2.Text = "Mã hóa đơn bán";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(287, 97);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(103, 13);
            this.label3.TabIndex = 33;
            this.label3.Text = "Mã khách hàng: ";
            // 
            // lb_makh
            // 
            this.lb_makh.AutoSize = true;
            this.lb_makh.Location = new System.Drawing.Point(390, 97);
            this.lb_makh.Name = "lb_makh";
            this.lb_makh.Size = new System.Drawing.Size(82, 13);
            this.lb_makh.TabIndex = 34;
            this.lb_makh.Text = "Mã khách hàng";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(505, 90);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(117, 25);
            this.button1.TabIndex = 35;
            this.button1.Text = "Thêm hóa đơn bán";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(843, 93);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(133, 23);
            this.button2.TabIndex = 36;
            this.button2.Text = "Tiến hành thanh toán";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(565, 462);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(117, 25);
            this.button3.TabIndex = 37;
            this.button3.Text = "Thêm vào hóa đơn";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(12, 12);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(86, 22);
            this.button4.TabIndex = 38;
            this.button4.Text = "Thoát";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // frm_BanHang
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1005, 499);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.lb_makh);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.tb_mahdb);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dgv_dskh);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.dgv_Chitiethdb);
            this.Controls.Add(this.dgv_dssp);
            this.Name = "frm_BanHang";
            this.Text = "Bán hàng";
            this.Load += new System.EventHandler(this.frm_BanHang_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dssp)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_Chitiethdb)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dskh)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.DataGridView dgv_dssp;
        private System.Windows.Forms.DataGridView dgv_Chitiethdb;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DataGridView dgv_dskh;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox tb_mahdb;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label lb_makh;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;
    }
}