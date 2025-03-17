USE BTL_NHOM_7
GO

-- Thêm dữ liệu vào bảng BENH_NHAN
INSERT INTO BENH_NHAN (MaBenhNhan, TenBenhNhan, GioiTinh, NgaySinh, DiaChi)
VALUES 
    (1, N'Nguyễn Văn A', N'Nam', '1980-05-01', N'123 Lê Lợi, TP.HCM'),
    (2, N'Trần Thị B', N'Nữ', '1990-07-15', N'456 Trần Phú, Hà Nội'),
    (3, N'Lê Văn C', N'Nam', '1975-03-20', N'789 Nguyễn Trãi, TP.HCM');

-- Thêm dữ liệu vào bảng BAC_SI
INSERT INTO BAC_SI (MaBacSi, TenBacSi, ChuyenMon, SoDienThoai, DiaChi)
VALUES 
    (1, N'Dr. Phạm Văn D', N'Tim mạch', '0123456789', N'123 Nguyễn Trãi, TP.HCM'),
    (2, N'Dr. Nguyễn Thị E', N'Sản khoa', '0987654321', N'456 Lê Lợi, Hà Nội'),
    (3, N'Dr. Lê Văn F', N'Răng hàm mặt', '0123987654', N'789 Trần Hưng Đạo, TP.HCM');

-- Thêm dữ liệu vào bảng LICH_KHAM
INSERT INTO LICH_KHAM (MaLichKham, MaBenhNhan, MaBacSi, NgayKham, ThoiGianKham)
VALUES 
    (1, 1, 1, '2025-03-17', '08:00'),
    (2, 2, 2, '2025-03-18', '09:30'),
    (3, 3, 3, '2025-03-19', '14:00');

-- Thêm dữ liệu vào bảng THUOC
INSERT INTO THUOC (MaThuoc, TenThuoc, LoaiThuoc, GiaBan)
VALUES 
    (1, N'Aspirin', N'Thuốc giảm đau', 100.0),
    (2, N'Paracetamol', N'Thuốc hạ sốt', 50.0),
    (3, N'Amoxicillin', N'Thuốc kháng sinh', 200.0);

-- Thêm dữ liệu vào bảng HOA_DON
INSERT INTO HOA_DON (MaHoaDon, MaBenhNhan, NgayLapHoaDon, TongTien)
VALUES 
    (1, 1, '2025-03-17', 150.0),
    (2, 2, '2025-03-18', 100.0),
    (3, 3, '2025-03-19', 200.0);

-- Thêm dữ liệu vào bảng CHI_TIET_HOA_DON
-- Giả sử hóa đơn 1 có 2 mục: sử dụng thuốc 1 và thuốc 2, hóa đơn 2 có 1 mục: thuốc 3, hóa đơn 3 có 2 mục: thuốc 2 và thuốc 3
INSERT INTO CHI_TIET_HOA_DON (MaHoaDon, MaThuoc, SoLuong, DonGia)
VALUES 
    (1, 1, 1, 100.0),
    (1, 2, 1, 50.0),
    (2, 3, 1, 200.0),
    (3, 2, 2, 50.0),
    (3, 3, 1, 200.0);

SELECT * FROM BENH_NHAN;
SELECT * FROM BAC_SI;
SELECT * FROM LICH_KHAM;
SELECT * FROM THUOC;
SELECT * FROM HOA_DON;
SELECT * FROM CHI_TIET_HOA_DON;
