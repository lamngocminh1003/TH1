SELECT SUM(Xuat.soluongX * Sanpham.giaban) AS tongtien
FROM Xuat
INNER JOIN Sanpham ON Xuat.masp = Sanpham.masp
WHERE Xuat.ngayxuat =  '2018-09-02'