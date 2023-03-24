SELECT sohdn, tensp,
soluongN, dongiaN,
ngaynhap, tennv,
phong, tenhang
FROM Nhap,Sanpham,Nhanvien,Hangsx
WHERE YEAR(ngaynhap) = 2017 AND tenhang LIKE '%Samsung%'
ORDER BY sohdn ASC;