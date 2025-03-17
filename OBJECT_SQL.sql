USE BTL_NHOM_7
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
GO
CREATE FUNCTION UF_TinhTuoi (@NgaySinh DATE)
RETURNS INT
AS
BEGIN
    DECLARE @Tuoi INT;
    SET @Tuoi = DATEDIFF(YEAR, @NgaySinh, GETDATE());
    RETURN @Tuoi;
END;
GO
ALTER TABLE HOA_DON
ADD LastModified DATETIME NULL;
GO
CREATE TRIGGER TR_UpdateHoaDon
ON HOA_DON
AFTER UPDATE
AS
BEGIN
    -- Giả sử có thêm cột LastModified trong bảng HOA_DON
    UPDATE HOA_DON
    SET LastModified = GETDATE()
    FROM HOA_DON HD
    INNER JOIN inserted i ON HD.MaHoaDon = i.MaHoaDon;
END;
GO

