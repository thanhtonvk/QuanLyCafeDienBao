using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quan_ly_cua_hang
{
    class NhanVien
    {
        private string manv, matkhau, tennv, ngaysinh, quequan;
        public NhanVien(string manv,string matkhau,string tennv,string ngaysinh,string quequan)
        {
            this.manv = manv;
            this.matkhau = matkhau;
            this.tennv = tennv;
            this.ngaysinh = ngaysinh;
            this.quequan = quequan;
        }
        public string Manv { get => manv; set => manv = value; }
        public string Matkhau { get => matkhau; set => matkhau = value; }
        public string Tennv { get => tennv; set => tennv = value; }
        public string Ngaysinh { get => ngaysinh; set => ngaysinh = value; }
        public string Quequan { get => quequan; set => quequan = value; }
    }
}
