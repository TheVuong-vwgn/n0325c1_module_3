select ho_ten_hs
from hoc_sinh
where ma_hs in (
	select ma_hs
    from ket_qua_hoc_tap
    where hoc_ky = 'Học kỳ 1'
);

SELECT ho_ten_hs
FROM hoc_sinh
WHERE EXISTS (
    SELECT 1
    FROM ket_qua_hoc_tap
    WHERE hoc_sinh.ma_hs = ket_qua_hoc_tap.ma_hs
    AND ket_qua_hoc_tap.ma_mh = 'MH001'
    AND ket_qua_hoc_tap.hoc_ky = 'Học kỳ 1'
);

select ho_ten_gv
from giao_vien
where ma_gv in (
	select ma_gvcn
    from lop
    where ma_gvcn is not null
);

select ho_ten_hs
from hoc_sinh
where ma_lop in (
	select ma_lop
    from lop
    where ten_lop = 'Lớp 1A' or ten_lop = 'Lớp 1B'
);

select ho_ten_hs
from hoc_sinh
where ma_lop in ('L0001','L0002');

select ho_ten_hs
from hoc_sinh
where ma_hs in (
	select ma_hs
    from ket_qua_hoc_tap
    where hoc_ky = 'Học kỳ 1' and diem_thi_giua_ky in (8.0, 8.5, 9.0) and diem_thi_cuoi_ky in (8.0, 8.5, 9.0)
);