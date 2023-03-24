--Caau1--
SELECT Hangsx.tenhang, COUNT(Sanpham.masp) AS so_luong_sp
FROM Hangsx
JOIN Sanpham ON Hangsx.mahangsx = Sanpham.mahangsx
GROUP BY Hangsx.tenhang
ORDER BY so_luong_sp DESC;
--cau2--
SELECT Sanpham.masp, SUM(Nhap.dongiaN) AS tong_tien_nhap
FROM Nhap, Sanpham
WHERE YEAR(Nhap.ngaynhap) = 2018
GROUP BY Sanpham.masp;
--cau3--
SELECT Sanpham.tensp, SUM(Xuat.soluongX) AS tong_so_luong_xuat
FROM Xuat,Sanpham,Hangsx
WHERE YEAR(Xuat.ngayxuat) = 2018 AND Hangsx.mahangsx = 'Samsung' 
GROUP BY Sanpham.tensp
HAVING SUM(Xuat.soluongX) > 10000;
--cau4--
SELECT Nhanvien.phong, COUNT(Nhanvien.manv) AS so_luong_nhan_vien_nam
FROM Nhanvien
WHERE Nhanvien.gioitinh = 'Nam'
GROUP BY Nhanvien.phong;
--cau5--
SELECT Hangsx.tenhang, SUM(Nhap.soluongN) AS tong_so_luong_nhap
FROM Nhap, Hangsx
WHERE YEAR(Nhap.ngaynhap) = 2018
GROUP BY Hangsx.tenhang;
-- cauu 6 --
SELECT Nhanvien.manv, Nhanvien.tennv, SUM(Xuat.soluongX * Sanpham.giaban) AS tongtienxuat
FROM Xuat
INNER JOIN Sanpham ON Xuat.masp = Sanpham.masp
INNER JOIN Nhanvien ON Xuat.manv = Nhanvien.manv
WHERE YEAR(Xuat.ngayxuat) = 2018
GROUP BY Nhanvien.manv, Nhanvien.tennv
-- cau 7 --
SELECT manv, SUM(soluongN * dongiaN) AS tong_tien_nhap
FROM Nhap
WHERE MONTH(ngaynhap) = 8 AND YEAR(ngaynhap) = 2018
GROUP BY manv
HAVING SUM(soluongN * dongiaN) > 100000;
-- cau 8 --
SELECT *
FROM Sanpham
WHERE masp NOT IN (SELECT masp FROM Xuat)
-- cau 9 --
SELECT Sanpham.masp, Sanpham.tensp, Hangsx.tenhang, Nhap.ngaynhap, Xuat.ngayxuat
FROM Sanpham
JOIN Hangsx ON Sanpham.mahangsx = Hangsx.mahangsx
JOIN Nhap ON Sanpham.masp = Nhap.masp
JOIN Xuat ON Sanpham.masp = Xuat.masp
WHERE YEAR(Nhap.ngaynhap) = 2018 AND YEAR(Xuat.ngayxuat) = 2018;
-- cau 10 --
SELECT DISTINCT NV.manv, NV.tennv
FROM Nhap N 
JOIN Xuat X ON N.masp = X.masp AND N.manv = X.manv
JOIN Nhanvien NV ON N.manv = NV.manv;
-- cau 11 --
SELECT *
FROM Nhanvien
LEFT JOIN Nhap ON Nhanvien.manv = Nhap.manv
LEFT JOIN Xuat ON Nhanvien.manv = Xuat.manv
WHERE Nhap.manv IS NULL AND Xuat.manv IS NULL;