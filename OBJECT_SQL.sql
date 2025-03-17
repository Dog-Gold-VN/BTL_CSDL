-- Tạo chỉ mục trên bảng BENH_NHAN cho cột TenBenhNhan
CREATE INDEX IDX_BenhNhan_Ten ON BENH_NHAN(TenBenhNhan);
GO
CREATE VIEW VIEW_BenhNhan_HoaDon AS
SELECT 
    BN.MaBenhNhan,
    BN.TenBenhNhan,
    BN.GioiTinh,
    BN.NgaySinh,
    HD.MaHoaDon,
    HD.NgayLapHoaDon,
    HD.TongTien
FROM BENH_NHAN BN
JOIN HOA_DON HD ON BN.MaBenhNhan = HD.MaBenhNhan;
GO
CREATE PROCEDURE SP_ThemBenhNhan
    @TenBenhNhan NVARCHAR(100),
    @GioiTinh NVARCHAR(10),
    @NgaySinh DATE,
    @DiaChi NVARCHAR(200)
AS
BEGIN
    INSERT INTO BENH_NHAN (TenBenhNhan, GioiTinh, NgaySinh, DiaChi)
    VALUES (@TenBenhNhan, @GioiTinh, @NgaySinh, @DiaChi);
END;
