SELECT sohdn, tensp, tenhang, soluongN, dongiaN, mausac,
donvitinh, ngaynhap, tennv, phong, soluongN * dongiaN AS tiennhap
FROM Nhap, Sanpham , Nhanvien , Hangsx
ORDER BY sohdn ASC