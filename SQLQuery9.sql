SELECT sohdx, tensp, tenhang,
soluongX, giaban,
soluongX*giaban AS tienxuat,
mausac, donvitinh,
ngayxuat, tennv,
phong
FROM Xuat, Sanpham,Hangsx,Nhanvien
WHERE MONTH(ngayxuat) = 10 AND YEAR(ngayxuat) = 2018
ORDER BY sohdx ASC;