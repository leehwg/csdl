---BT 3.21
CREATE PROCEDURE thekho
(
	@thoigian char(6),
	@makho char(8),
	@mathuoc char(8)
)
AS
BEGIN
SELECT n1.Sophieu [So phieu nhap], '' as [So phieu xuat], 
	n2.Soluong[So luong nhap], 0[So luong xuat]
FROM nhap n1
JOIN NHAP_CHITIET n2
ON n1.Thoigian = n2.Thoigian and n1.Sophieu = n2.Sophieu
WHERE n1.Thoigian = @thoigian and n1.Makhonhap = @makho
	and n2.Mathuoc = @mathuoc
UNION ALL
SELECT '', x1.Sophieu, 0, x2.Soluong
FROM XUATKHOA x1
JOIN XUATKHOA_CHITIET x2
ON x1.Thoigian = x2.Thoigian and x1.Sophieu = x2.Sophieu
WHERE x1.Thoigian = @thoigian and x1.Makhoxuat = @makho
	and x2.Mathuoc = @mathuoc
END

---bt3.22
CREATE PROCEDURE tonghopnhap
(
@thoigiandau char(6),
@thoigiancuoi char(6),
@makho char(6)
)
AS
BEGIN
SELECT n2.mathuoc, sum(n2.Soluong) [Tong so luong] 
		, sum(n2.Thanhtien) [Tong thanh tien]
FROM nhap n1
JOIN  NHAP_CHITIET n2
ON n1.Thoigian = n2.Thoigian and n1.Sophieu = n2.Sophieu
WHERE n1.Makhonhap = @makho and 
right(n1.Thoigian,4) + left(n1.Thoigian,2) between
						@thoigiandau and @thoigiancuoi
GROUP BY n2.mathuoc
END

---bt3.23
CREATE PROCEDURE xemphieuxuat
(
@thoigian char(6),
@makhoa char(8),
@mathuoc char(8)
)
AS
BEGIN
SELECT n1.Thoigian, n1.Makhoanhap, n1.Sophieu,
			n2.Dongia, n2.Thanhtien
FROM XUATKHOA n1
JOIN  XUATKHOA_CHITIET n2
ON n1.Thoigian = n2.Thoigian and n1.Sophieu = n2.Sophieu
WHERE n1.Thoigian = @thoigian and n1.Makhoanhap = @makhoa
	and n2.Mathuoc = @mathuoc
END