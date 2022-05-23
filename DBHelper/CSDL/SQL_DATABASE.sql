USE MASTER
GO
DROP DATABASE IF EXISTS QLCAFEDIENBAO
GO
CREATE DATABASE QLCAFEDIENBAO
GO
USE QLCAFEDIENBAO
--TAO BANG
GO
CREATE  TABLE KHACHHANG(
    MAKH CHAR(10) PRIMARY KEY, --MAKH SINH TU DONG
    TENKH NVARCHAR(50) NOT NULL,
    SDT CHAR(10),
)
GO
CREATE TABLE NHANVIEN(
    MANV CHAR(10) PRIMARY KEY,
    MATKHAU CHAR(10) NOT NULL,
    TENNV NVARCHAR(50) NOT NULL,
    NGAYSINH DATETIME,
    QUEQUAN NVARCHAR(100)
)
GO
CREATE TABLE SANPHAM(
    MASP CHAR(10) PRIMARY KEY,
    TENSP NVARCHAR(50),
    MOTA NVARCHAR(50) NOT NULL,
    HANSD NVARCHAR(30) NOT NULL,
    GIABAN FLOAT NOT NULL
)
GO
CREATE TABLE HOADONBAN(
    MAHDB CHAR(10) PRIMARY KEY,
    NGAYBAN DATETIME,
    MANV CHAR(10) NOT NULL,
    MAKH CHAR(10) NOT NULL
)
ALTER TABLE HOADONBAN ADD CONSTRAINT FK_MAKH FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE HOADONBAN ADD CONSTRAINT FK_MANV FOREIGN KEY (MANV) REFERENCES  NHANVIEN(MANV) ON DELETE CASCADE ON  UPDATE CASCADE
GO
CREATE TABLE CHITIETHDB(
    MAHDB CHAR(10) NOT NULL,
    MASP CHAR(10) NOT NULL,
    SOLUONG INT
)
ALTER TABLE CHITIETHDB ADD CONSTRAINT FK_MASP_CTHDB FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE CHITIETHDB ADD CONSTRAINT FK_MAHDB FOREIGN KEY (MAHDB) REFERENCES HOADONBAN(MAHDB) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE CHITIETHDB ADD CONSTRAINT PK_CHITIETHDB PRIMARY KEY(MAHDB,MASP)
GO
--INSERT DU LIEU
--KHACH HANG
INSERT INTO KHACHHANG VALUES('KH1','TRAN VAN A','013541251')
INSERT INTO KHACHHANG VALUES('KH2','TRAN VAN B','013541252')
INSERT INTO KHACHHANG VALUES('KH3','TRAN VAN C','013541254')
INSERT INTO KHACHHANG VALUES('KH4','TRAN VAN D','013544251')
INSERT INTO KHACHHANG VALUES('KH5','TRAN VAN E','013541251')
INSERT INTO KHACHHANG VALUES('KH6','TRAN VAN G','013001251')
INSERT INTO KHACHHANG VALUES('KH7','TRAN VAN H','013541111')
INSERT INTO KHACHHANG VALUES('KH8','TRAN VAN I','013541251')
INSERT INTO KHACHHANG VALUES('KH9','TRAN VAN K','013441251')
INSERT INTO KHACHHANG VALUES('KH10','TRAN VAN M','013441231')

--NHANVIEN
GO
INSERT INTO NHANVIEN VALUES('NV1','123','NGUYEN THANH A','2001/03/15','HUNG YEN');
INSERT INTO NHANVIEN VALUES('NV2','123','NGUYEN THANH B','2000/03/15','HUNG YEN');
INSERT INTO NHANVIEN VALUES('NV3','123','NGUYEN THANH C','2002/03/15','HUNG YEN');
INSERT INTO NHANVIEN VALUES('NV4','123','NGUYEN THANH D','2003/03/15','HUNG YEN');
INSERT INTO NHANVIEN VALUES('NV5','123','NGUYEN THANH E','2001/04/15','HUNG YEN');
INSERT INTO NHANVIEN VALUES('NV6','123','NGUYEN THANH G','2001/09/15','HUNG YEN');
INSERT INTO NHANVIEN VALUES('NV7','123','NGUYEN THANH H','2001/04/15','HUNG YEN');
INSERT INTO NHANVIEN VALUES('NV8','123','NGUYEN THANH I','2001/01/15','HUNG YEN');
INSERT INTO NHANVIEN VALUES('NV9','123','NGUYEN THANH K','2001/09/15','HUNG YEN');
INSERT INTO NHANVIEN VALUES('NV10','123','NGUYEN THANH L','2001/12/15','HUNG YEN');
GO
--SANPHAM
INSERT INTO SANPHAM VALUES ('SP1',N'Trà chanh',N'không',N'6 tháng',5000)
INSERT INTO SANPHAM VALUES ('SP2',N'Trà chanh UTEHY',N'không',N'6 tháng',5000)
INSERT INTO SANPHAM VALUES ('SP3',N'Trà đào cam sả',N'không',N'12 tháng',3000)
INSERT INTO SANPHAM VALUES ('SP4',N'Bim bim',N'không',N'6 tháng',10000)
INSERT INTO SANPHAM VALUES ('SP5',N'Bánh Nabati',N'không',N'18 tháng',15000)
INSERT INTO SANPHAM VALUES ('SP6',N'Hướng dương',N'không',N'6 tháng',25000)
INSERT INTO SANPHAM VALUES ('SP7',N'Hướng dương vị cafe',N'không',N'24 tháng',20000)
INSERT INTO SANPHAM VALUES ('SP8',N'Cafe đen đá',N'không',N'9 tháng',70000)
INSERT INTO SANPHAM VALUES ('SP9',N'Cafe sữa',N'không',N'24 tháng',3500)
INSERT INTO SANPHAM VALUES ('SP10',N'Bò khô',N'không',N'12 tháng',6500)
GO
--HOADONBAN
INSERT INTO HOADONBAN  VALUES('HDB1',GETDATE(),'NV1','KH1')
INSERT INTO HOADONBAN  VALUES('HDB2',GETDATE(),'NV2','KH2')
INSERT INTO HOADONBAN  VALUES('HDB3',GETDATE(),'NV3','KH3')
INSERT INTO HOADONBAN  VALUES('HDB4',GETDATE(),'NV4','KH4')
INSERT INTO HOADONBAN  VALUES('HDB5',GETDATE(),'NV5','KH5')
INSERT INTO HOADONBAN  VALUES('HDB6',GETDATE(),'NV6','KH6')
INSERT INTO HOADONBAN  VALUES('HDB7',GETDATE(),'NV7','KH7')
INSERT INTO HOADONBAN  VALUES('HDB8',GETDATE(),'NV8','KH8')
INSERT INTO HOADONBAN  VALUES('HDB9',GETDATE(),'NV9','KH9')
INSERT INTO HOADONBAN  VALUES('HDB10',GETDATE(),'NV10','KH10')
--CTHOADONBAN
INSERT INTO CHITIETHDB VALUES ('HDB1','SP1',1)
INSERT INTO CHITIETHDB VALUES ('HDB2','SP2',1)
INSERT INTO CHITIETHDB VALUES ('HDB3','SP3',2)
INSERT INTO CHITIETHDB VALUES ('HDB4','SP4',1)
INSERT INTO CHITIETHDB VALUES ('HDB5','SP5',4)
INSERT INTO CHITIETHDB VALUES ('HDB6','SP6',1)
INSERT INTO CHITIETHDB VALUES ('HDB7','SP7',1)
INSERT INTO CHITIETHDB VALUES ('HDB8','SP8',3)
INSERT INTO CHITIETHDB VALUES ('HDB9','SP9',2)
INSERT INTO CHITIETHDB VALUES ('HDB10','SP10',1)
--QUAN LY NGUOI DUNG
----------------------------------------------------------------

-- Quan ly nguoi dung
EXEC  sp_addlogin NV1,'NV1'
EXEC sp_adduser NV1,Nhanvien1

EXEC  sp_addlogin NV2,'NV2'
EXEC sp_adduser NV2,Nhanvien2

EXEC  sp_addlogin NV3,'NV3'
EXEC sp_adduser NV3,Nhanvien3

EXEC  sp_addlogin NV4,'NV4'
EXEC sp_adduser NV4,Nhanvien4

EXEC sp_addlogin AD,'ADMIN'
EXEC sp_adduser AD,QUANTRIVIEN

-- TAO NHOM NGUOI DUNG
EXEC sp_addrole NHANVIEN
EXEC sp_addrolemember NHANVIEN,Nhanvien1
EXEC sp_addrolemember NHANVIEN,Nhanvien2
EXEC sp_addrolemember NHANVIEN,Nhanvien3
EXEC sp_addrolemember NHANVIEN,Nhanvien4
-- CAP QUYEN TRUY CAP
GRANT INSERT,UPDATE,DELETE ON KHACHHANG TO NHANVIEN
GRANT INSERT,UPDATE,DELETE ON HOADONNHAP TO NHANVIEN
GRANT INSERT,UPDATE,DELETE ON CHITIETHDN TO NHANVIEN
GRANT INSERT,UPDATE,DELETE ON HOADONBAN TO NHANVIEN
GRANT INSERT,UPDATE,DELETE ON CHITIETHDB TO NHANVIEN
GO

-- CÁC CHỈ MỤC
----------------------------------------------------------------
--CHI MUC DON
CREATE NONCLUSTERED INDEX NONCLUSTERED_TENSP ON SANPHAM(TENSP)
GO
--CHI MUC DON CO HE SO DIEN DAY
CREATE NONCLUSTERED INDEX NONCLUSTERED_TENKH ON KHACHHANG(TENKH)
        WITH FILLFACTOR = 80;
GO
--CHI MUC PHUC HOP
CREATE NONCLUSTERED INDEX CHIMUCDOI_NONCLUSTERED_HDB ON HOADONBAN(MAHDB,MAKH)
GO
CREATE NONCLUSTERED INDEX CHIMUCDOI_NONCLUSTERED_SANPHAM ON SANPHAM(MASP,TENSP)
--VIEW
--CHI MUC TOAN VAN

----------------------------------------------------------------
GO
CREATE VIEW VIEW_DSKHACHHANG
AS
    SELECT * FROM KHACHHANG
GO
--HIỆN DS NHÂN VIÊN
CREATE VIEW VIEW_HIENNHANVIEN
AS
    SELECT * FROM NHANVIEN
GO

-- XEM THONG TIN CHI TIET HOA DON
CREATE VIEW VIEW_CHITIETHDN
AS
    SELECT HOADONNHAP.MAHDN,HOADONNHAP.NGAYNHAP,CHITIETHDN.SOLUONG,CHITIETHDN.DONGIA,(CHITIETHDN.SOLUONG*CHITIETHDN.DONGIA) [THÀNH TIỀN] FROM HOADONNHAP,CHITIETHDN WHERE HOADONNHAP.MAHDN = CHITIETHDN.MAHDN
GO
-- XEM THONG TIN HOA DON NHAP
CREATE VIEW VIEW_XEMHOADONNHAP
AS
    SELECT HOADONNHAP.MAHDN AS [MÃ HÓA ĐƠN],NHANVIEN.TENNV [NHÂN VIÊN],HOADONNHAP.NGAYNHAP [NGÀY NHẬP],SUM(CHITIETHDN.SOLUONG*CHITIETHDN.DONGIA) [TỔNG TIỀN THANH TOÁN] FROM HOADONNHAP,CHITIETHDN,NHANVIEN WHERE NHANVIEN.MANV = HOADONNHAP.MANV AND HOADONNHAP.MAHDN = CHITIETHDN.MAHDN
    GROUP BY HOADONNHAP.MAHDN,NHANVIEN.TENNV,HOADONNHAP.NGAYNHAP
GO
--TRUY VẤN VỚI TOÁN TỬ NÂNG CAO
---------------------------------------------------------------
-- SAN PHAM CO GIA CAO NHAT

SELECT * FROM SANPHAM WHERE SANPHAM.GIABAN = (SELECT MAX(GIABAN) FROM SANPHAM)
GO
-- SAN PHAM CO GIA THAP NHAT
SELECT * FROM SANPHAM WHERE SANPHAM.GIABAN = (SELECT MIN(GIABAN) FROM SANPHAM)
GO
-- DEM SO LUONG SAN PHAM
SELECT COUNT(MASP) [SO LUONG] FROM SANPHAM
GO

-- DEM SO LUONG CUA MOI SAN PHAM

SELECT SANPHAM.TENSP [TEN SP],COUNT(CHITIETHDN.SOLUONG) [SO LUONG] FROM CHITIETHDN,SANPHAM WHERE CHITIETHDN.MASP = SANPHAM.MASP GROUP BY SANPHAM.TENSP
GO
-- XEM THONG TIN HOA DON NHAP
  SELECT HOADONNHAP.MAHDN AS [MÃ HÓA ĐƠN],NHANVIEN.TENNV [NHÂN VIÊN],HOADONNHAP.NGAYNHAP [NGÀY NHẬP],SUM(CHITIETHDN.SOLUONG*CHITIETHDN.DONGIA) [TỔNG TIỀN THANH TOÁN] FROM HOADONNHAP,CHITIETHDN,NHANVIEN WHERE NHANVIEN.MANV = HOADONNHAP.MANV AND HOADONNHAP.MAHDN = CHITIETHDN.MAHDN
  GROUP BY HOADONNHAP.MAHDN,NHANVIEN.TENNV,HOADONNHAP.NGAYNHAP
GO
-- XEM THONG TIN HOA DON BAN HANG
SELECT HOADONBAN.MAHDB,HOADONBAN.NGAYBAN,KHACHHANG.TENKH,SUM(CHITIETHDB.SOLUONG) [SO LUONG MUA],SUM(CHITIETHDB.SOLUONG*SANPHAM.GIABAN) [TONG THANH TOAN] FROM HOADONBAN,CHITIETHDB,SANPHAM,KHACHHANG,NHANVIEN WHERE HOADONBAN.MAHDB = CHITIETHDB.MAHDB AND HOADONBAN.MAKH = KHACHHANG.MAKH AND HOADONBAN.MANV = NHANVIEN.MANV AND CHITIETHDB.MASP = SANPHAM.MASP
GROUP BY HOADONBAN.MAHDB,HOADONBAN.NGAYBAN,KHACHHANG.TENKH

-- KIEM TRA SOLUONG SAN PHAM CON
GO
DECLARE @SOLUONG INT
SET @SOLUONG = (SELECT COUNT(CHITIETHDN.SOLUONG) [SO LUONG] FROM CHITIETHDN,SANPHAM WHERE CHITIETHDN.MASP = SANPHAM.MASP)
IF @SOLUONG=0
    PRINT(N'SO LUONG SAN PHAM DA HET, HAY NHAP THEM')
ELSE IF @SOLUONG <10
    PRINT(N'SO LUONG SAN PHAM SAP HET')
ELSE PRINT(N'SO LUONG SAN PHAM CON NHIEU')
GO
-- THONG KE SO LUONG SAN PHAM DA BAN
SELECT SANPHAM.TENSP,COUNT(CHITIETHDB.SOLUONG) [DA BAN] FROM SANPHAM,CHITIETHDB WHERE SANPHAM.MASP = CHITIETHDB.MASP GROUP BY SANPHAM.TENSP 
GO
-- THONG KE SO LUONG SAN PHAM BAN TRONG THANG NAY
SELECT SANPHAM.TENSP, COUNT(CHITIETHDB.SOLUONG) [DA BAN],GETDATE() [NGAY THONG KE] FROM SANPHAM,CHITIETHDB,HOADONBAN WHERE  SANPHAM.MASP = CHITIETHDB.MASP  AND HOADONBAN.MAHDB = CHITIETHDB.MAHDB AND MONTH(HOADONBAN.NGAYBAN) = MONTH(GETDATE()) AND YEAR(HOADONBAN.NGAYBAN) = YEAR(GETDATE()) GROUP BY SANPHAM.TENSP
--Các thủ tục
----------------------------------------------------------------
--XEM KHÁCH HÀNG
GO

--THÊM KHÁCH HÀNG
CREATE PROCEDURE USP_THEMKHACHHANG
                @MAKH CHAR(10),@TENKH NVARCHAR(50),@SDT CHAR(10)
AS
BEGIN
    INSERT INTO KHACHHANG
    VALUES(@MAKH,@TENKH,@SDT)
END
GO
--SỬA KHÁCH HÀNG
CREATE PROCEDURE USP_SUAKHACHHANG
                @MAKH CHAR(10),@TENKH NVARCHAR(50),@SDT CHAR(10)
AS
BEGIN
    UPDATE KHACHHANG SET TENKH =@TENKH,SDT =@SDT
    WHERE MAKH =@MAKH
END
GO
-- XÓA KHÁCH HÀNG
CREATE PROCEDURE USP_XOAKHACHHANG
                    @MAKH CHAR(10)
AS
BEGIN
    DELETE FROM KHACHHANG WHERE MAKH =@MAKH
END
GO
--TÌM KIẾM KHÁCH HÀNG
CREATE PROCEDURE USP_TIMKIEMKHACHHANG
                    @TUKHOA NVARCHAR(50)
AS
BEGIN
    SELECT * FROM KHACHHANG WHERE Khachhang.TENKH = @TUKHOA OR TENKH LIKE @TUKHOA OR SDT LIKE @TUKHOA OR TENKH LIKE '%'+@TUKHOA+'%'
END

GO
--THÊM NHÂN VIÊN
CREATE PROCEDURE USP_THEMNHANVIEN
                    @MANV CHAR(10),@MATKHAU CHAR(10),@TENNV NVARCHAR(50),@NGAYSINH DATETIME,@QUEQUAN VARCHAR(100)
AS
BEGIN
    INSERT INTO NHANVIEN VALUES (@MANV,@MATKHAU,@TENNV,@NGAYSINH+'',@QUEQUAN)
END
GO

GO
--SỬA NHÂN VIÊN
CREATE PROCEDURE USP_SUANHANVIEN
                    @MANV CHAR(10),@MATKHAU CHAR(10),@TENNV NVARCHAR(50),@NGAYSINH DATETIME,@QUEQUAN VARCHAR(100)
AS
BEGIN
    UPDATE NHANVIEN SET MATKHAU = @MATKHAU,TENNV= @TENNV,NGAYSINH= @NGAYSINH+'',QUEQUAN =@QUEQUAN
    WHERE MANV = @MANV
END
GO
--XOA NHAN VIEN
CREATE PROCEDURE USP_XOANHANVIEN
                    @MANV CHAR(10)
AS
BEGIN
    DELETE FROM NHANVIEN WHERE MANV = @MANV
END
GO
--TIM KIEM NHAN VIEN
CREATE PROCEDURE USP_TIMKIEMNHANVIEN @TUKHOA NVARCHAR(30)
AS
BEGIN
    SELECT * FROM NHANVIEN WHERE MANV LIKE @TUKHOA OR TENNV LIKE '%'+@TUKHOA+'%'
END
GO


--HÀM
----------------------------------------------------------------
--THEM HOA DON NHAP
CREATE PROCEDURE USP_THEMHOADONHAP
                    @MAHDN CHAR(10),@NGAYNHAP DATETIME,@MANV CHAR(10)
AS
BEGIN
    INSERT INTO HOADONNHAP
    VALUES(@MAHDN,@NGAYNHAP+'',@MANV)
END
GO
-- THEM SAN PHAM
CREATE PROCEDURE USP_THEMSP @MASP CHAR(10),@TENSP NVARCHAR(50),@CAUHINH NVARCHAR(50),@HANSD NVARCHAR(30),@GIABAN FLOAT
AS
BEGIN
    INSERT INTO SANPHAM VALUES(@MASP,@TENSP,@CAUHINH,@HANSD,@GIABAN)
END
GO
-- SUA SAN PHAM
CREATE PROCEDURE USP_SUASP  @MASP CHAR(10),@TENSP NVARCHAR(50),@CAUHINH NVARCHAR(50),@HANSD NVARCHAR(30),@GIABAN FLOAT
AS
BEGIN
    UPDATE SANPHAM SET TENSP = @TENSP,CAUHINH = @CAUHINH,HANSD = @HANSD,GIABAN = @GIABAN WHERE MASP = @MASP
END
GO
--XOA SAN PHAM
CREATE PROCEDURE USP_XOASP @MASP CHAR(10)
AS
BEGIN
    DELETE FROM SANPHAM WHERE MASP = @MASP
END
GO
--TIM KIEM SAN PHAM
CREATE PROCEDURE USP_TIMKIEMSP @TUKHOA NVARCHAR(30)
AS
BEGIN
    SELECT * FROM SANPHAM WHERE MASP = @TUKHOA OR TENSP = @TUKHOA
END

-- XEM DANH SACH SAN PHAM
GO
CREATE VIEW VIEW_DSSANPHAM AS
SELECT * FROM SANPHAM
GO
--THEM HOA DON BAN
CREATE PROCEDURE USP_THEMHOADONBAN @MAHDB CHAR(10) ,@NGAYBAN DATETIME,@MANV CHAR(10),@MAKH CHAR(10)
AS
BEGIN
    INSERT INTO HOADONBAN
    VALUES(@MAHDB,@NGAYBAN+'',@MANV,@MAKH)
END
GO
--THEM CHI TIET HOA DON BAN
CREATE PROCEDURE USP_THEMCHITIETHDB @MAHDB CHAR(10),@MASP CHAR(10),@SOLUONG INT
AS
BEGIN
    INSERT INTO CHITIETHDB VALUES (@MAHDB,@MASP,@SOLUONG)
END
GO
--XEM THONGTINHOADON
CREATE VIEW VIEW_THONGTINHOADON AS
SELECT HOADONBAN.MAHDB,HOADONBAN.NGAYBAN,CHITIETHDB.MASP,CHITIETHDB.SOLUONG FROM HOADONBAN,CHITIETHDB WHERE HOADONBAN.MAHDB = CHITIETHDB.MAHDB
GO
--XEM THONG TIN HOA DON BAN
CREATE VIEW VIEW_HOADONBAN AS
SELECT HOADONBAN.MAHDB,HOADONBAN.NGAYBAN,SANPHAM.TENSP,CHITIETHDB.SOLUONG,SANPHAM.GIABAN FROM HOADONBAN,CHITIETHDB,SANPHAM WHERE HOADONBAN.MAHDB = CHITIETHDB.MAHDB AND CHITIETHDB.MASP = SANPHAM.MASP
GO
--XEM HOA DON THANH TOAN
GO
CREATE VIEW VIEW_HOADONTHANHTOAN AS
SELECT HOADONBAN.MAHDB,HOADONBAN.NGAYBAN,KHACHHANG.TENKH,SUM(CHITIETHDB.SOLUONG) [SO LUONG MUA],SUM(CHITIETHDB.SOLUONG*SANPHAM.GIABAN) [TONG THANH TOAN] FROM HOADONBAN,CHITIETHDB,SANPHAM,KHACHHANG,NHANVIEN WHERE HOADONBAN.MAHDB = CHITIETHDB.MAHDB AND HOADONBAN.MAKH = KHACHHANG.MAKH AND HOADONBAN.MANV = NHANVIEN.MANV AND CHITIETHDB.MASP = SANPHAM.MASP
GROUP BY HOADONBAN.MAHDB,HOADONBAN.NGAYBAN,KHACHHANG.TENKH
GO
--XEM CHITIETHDB THEO MAHDB
CREATE PROCEDURE USP_CHITIETHDB @MAHDB CHAR(10)
AS
BEGIN
SELECT HOADONBAN.MAHDB,HOADONBAN.NGAYBAN,CHITIETHDB.MASP,CHITIETHDB.SOLUONG FROM HOADONBAN,CHITIETHDB WHERE HOADONBAN.MAHDB = @MAHDB AND HOADONBAN.MAHDB = CHITIETHDB.MAHDB
END
go
select * from hoadonban
select * from CHITIETHDB

-- XEM HOA DON THANH TOAN THEO MAHDB
GO
CREATE PROCEDURE USP_HOADONTHANHTOAN @MAHDB CHAR(10)
AS
BEGIN
    SELECT HOADONBAN.MAHDB,HOADONBAN.NGAYBAN,KHACHHANG.TENKH,SUM(CHITIETHDB.SOLUONG) [SO LUONG MUA],SUM(CHITIETHDB.SOLUONG*SANPHAM.GIABAN) [TONG THANH TOAN] FROM HOADONBAN,CHITIETHDB,SANPHAM,KHACHHANG,NHANVIEN WHERE HOADONBAN.MAHDB = CHITIETHDB.MAHDB AND HOADONBAN.MAKH = KHACHHANG.MAKH AND HOADONBAN.MANV = NHANVIEN.MANV AND CHITIETHDB.MASP = SANPHAM.MASP AND HOADONBAN.MAHDB = @MAHDB
GROUP BY HOADONBAN.MAHDB,HOADONBAN.NGAYBAN,KHACHHANG.TENKH
END
--------------------------------------------------------------------------------------
--HAM
--------------------------------------------------------------------------------------
GO
--TIM TEN NHAN VIEN
CREATE FUNCTION FUNC_TIMTENNHANVIEN
(@MANV CHAR(10))
RETURNS NVARCHAR(50)
AS
BEGIN
    DECLARE @TENNV NVARCHAR(50)
    SET @TENNV = (SELECT TENNV FROM NHANVIEN WHERE MANV =@MANV)
    RETURN @TENNV
END

GO
-- TIM KHACH HANG THEO MA
CREATE FUNCTION FUNC_TIMTENKH (@MAKH CHAR(10))
RETURNS NVARCHAR(50)
AS
BEGIN
    DECLARE @TENKH NVARCHAR(50)
    SET @TENKH = (SELECT TENKH FROM KHACHHANG WHERE MAKH = @MAKH)
    RETURN @TENKH
END
GO
-- TINH TIEN THU TỪ 1 SAN PHAM

CREATE FUNCTION FUNC_TINHTIENSANPHAM(@MASP INT)
RETURNS INT
AS
BEGIN
    DECLARE @TONG INT
    SET @TONG = (SELECT SUM((CHITIETHDB.SOLUONG)*SANPHAM.GIABAN) FROM SANPHAM,CHITIETHDB WHERE SANPHAM.MASP =@MASP AND SANPHAM.MASP = CHITIETHDB.MASP)
    RETURN @TONG
END
GO
-- HIEN THI DANH SACH KHACH HANG DA MUA SAN PHAM
CREATE FUNCTION FUNC_DANHSACHKHDAMUA()
RETURNS TABLE AS RETURN(
    SELECT * FROM KHACHHANG WHERE KHACHHANG.MAKH IN (SELECT MAKH FROM HOADONBAN)
)
GO
-- LAY THONG TIN SAN PHAM THEO HOA DON BAN
CREATE FUNCTION FUNC_THONGTINSANPHAM()
RETURNS TABLE AS RETURN(
    SELECT * FROM SANPHAM WHERE SANPHAM.MASP IN (SELECT MASP FROM HOADONBAN)
)
GO
--TRIGGER
-----------------------------------------------------------------------------
--TRIGER AFTER(FOR)
--FOR INSERT
CREATE TRIGGER TG_THEMHOADONBAN 
ON HOADONBAN
FOR INSERT
AS
BEGIN
    IF NOT EXISTS (SELECT * FROM KHACHHANG,INSERTED WHERE INSERTED.MAKH = KHACHHANG.MAKH)
    PRINT('MA KHACH HANG KHONG TON TAI')
END
--FOR DELETE
GO
CREATE TRIGGER TG_XOAKHACHHANG
ON KHACHHANG
FOR DELETE
AS
BEGIN
    IF NOT EXISTS (SELECT * FROM KHACHHANG,deleted WHERE deleted.MAKH = KHACHHANG.MAKH)
    PRINT('MA KHACH HANG KHONG TON TAI')
    ELSE DELETE KHACHHANG FROM KHACHHANG,DELETED WHERE KHACHHANG.MAKH = deleted.MAKH
END
GO
--FOR UPDATE
CREATE TRIGGER TG_UPDATESANPHAM
ON SANPHAM
FOR UPDATE
AS
BEGIN
    IF NOT EXISTS(SELECT * FROM SANPHAM,INSERTED WHERE SANPHAM.MASP = INSERTED.MASP)
    PRINT('MA SAN PHAM KHONG TON TAI')
END
--FOR DELETE
GO
CREATE TRIGGER TG_XOAKHACHHANG_INSTEADOF
ON KHACHHANG
INSTEAD OF DELETE
AS
BEGIN
     IF NOT EXISTS (SELECT * FROM KHACHHANG,deleted WHERE deleted.MAKH = KHACHHANG.MAKH)
    PRINT('MA KHACH HANG KHONG TON TAI')
    ELSE DELETE KHACHHANG FROM KHACHHANG,DELETED WHERE KHACHHANG.MAKH = deleted.MAKH
END
GO
--FOR UPDATE
CREATE TRIGGER TG_UPDATESANPHAM_INSTEADOF
ON SANPHAM
INSTEAD OF UPDATE
AS
BEGIN
    IF NOT EXISTS(SELECT * FROM SANPHAM,INSERTED WHERE SANPHAM.MASP = INSERTED.MASP)
    PRINT('MA SAN PHAM KHONG TON TAI')
END
GO
--TRIGGER DAY CHUYEN
CREATE TRIGGER TG_KHACHHANG ON KHACHHANG FOR DELETE AS
BEGIN
    DELETE HOADONBAN FROM HOADONBAN,DELETED WHERE HOADONBAN.MAKH = DELETED.MAKH
END
GO
--TRIGGER TU DONG CAP NHAT DU LIEU
CREATE TRIGGER TG_CAPNHATSOLUONGSANPHAMKHINHAP ON CHITIETHDB 
INSTEAD OF INSERT 
AS
BEGIN
    UPDATE CHITIETHDN SET CHITIETHDN.SOLUONG = (CHITIETHDN.SOLUONG - inserted.SOLUONG) FROM INSERTED WHERE CHITIETHDN.MASP = INSERTED.MASP 
END
GO
-- XOA TOAN BO CHI TIET HOA DON NHAP KHI XOA HOA DON NHAP
CREATE TRIGGER TG_XOAHOADONNHAP ON HOADONNHAP
FOR DELETE AS
BEGIN
    DELETE CHITIETHDN FROM DELETED,CHITIETHDN WHERE DELETED.MAHDN = CHITIETHDN.MAHDN
END
GO
-- XOA TOAN BO CHI TIET HOA DON BAN KHI XOA HOA DON BAN
CREATE TRIGGER TG_XOAHOADONBAN ON HOADONBAN
FOR DELETE AS
BEGIN
    DELETE CHITIETHDB FROM DELETED, CHITIETHDB WHERE DELETED.MAHDB = CHITIETHDB.MAHDB
END
GO
DISABLE TRIGGER ALL ON CHITIETHDB