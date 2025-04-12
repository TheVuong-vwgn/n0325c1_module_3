use quan_ly_truong_hoc;

select hs.ma_hs, hs.ho_ten_hs, hs.gioi_tinh, lop.ma_lop, lop.ten_lop, lop.nam_hoc, lop.ma_gvcn, gv.ho_ten_gv
from hoc_sinh hs 
join lop on hs.ma_lop = lop.ma_lop
join giao_vien gv on lop.ma_gvcn = gv.ma_gv;

select hs.ma_hs, hs.ho_ten_hs, kqht.hoc_ky, mh.ma_mh, mh.ten_mh, kqht.diem_thi_giua_ky, kqht.diem_thi_giua_ky
from hoc_sinh hs
join ket_qua_hoc_tap kqht on hs.ma_hs = kqht.ma_hs
join mon_hoc mh on kqht.ma_mh = mh.ma_mh;

select kqht.ma_hs, hs.ho_ten_hs, kqht.hoc_ky, kqht.ma_mh, mh.ten_mh, kqht.diem_thi_giua_ky, kqht.diem_thi_giua_ky, hs.ma_lop, lop.ma_gvcn, gv.ho_ten_gv
from hoc_sinh hs 
join ket_qua_hoc_tap kqht on hs.ma_hs = kqht.ma_hs
join mon_hoc mh on kqht.ma_mh = mh.ma_mh
join lop on hs.ma_lop = lop.ma_lop
join giao_vien gv on lop.ma_gvcn = gv.ma_gv;

select kqht.ma_hs, hs.ho_ten_hs, hs.ma_lop, lop.ma_gvcn, gv.ho_ten_gv, kqht.hoc_ky, mh.ma_mh
, mh.ten_mh, kqht.diem_thi_giua_ky, kqht.diem_thi_giua_ky, lop.ma_gvcn as ma_gvpt, gv.ho_ten_gv as ho_ten_gvpt
from ket_qua_hoc_tap kqht 
join hoc_sinh hs on kqht.ma_hs = hs.ma_hs
join lop on hs.ma_lop = lop.ma_lop
join giao_vien gv on lop.ma_gvcn = gv.ma_gv
join mon_hoc mh on kqht.ma_mh = mh.ma_mh
left join giao_vien gvpt on lop.ma_gvcn = gvpt.ma_gv;

select kqht.ma_hs, hs.ho_ten_hs, hs.ma_lop, kqht.hoc_ky, mh.ma_mh
, mh.ten_mh, kqht.diem_thi_giua_ky, kqht.diem_thi_giua_ky, lop.ma_gvcn as ma_gvpt, gv.ho_ten_gv as ho_ten_gvpt
from ket_qua_hoc_tap kqht 
join hoc_sinh hs on kqht.ma_hs = hs.ma_hs
join lop on hs.ma_lop = lop.ma_lop
join giao_vien gv on lop.ma_gvcn = gv.ma_gv
join mon_hoc mh on kqht.ma_mh = mh.ma_mh
left join giao_vien gvpt on lop.ma_gvcn = gvpt.ma_gv
where hs.gioi_tinh = 'Nữ' and (kqht.diem_thi_giua_ky >= 9 or kqht.diem_thi_cuoi_ky >= 9);

select hs.ma_hs, hs.ho_ten_hs, kq.ma_mh, mh.ten_mh, kq.diem_thi_giua_ky, kq.diem_thi_cuoi_ky, lop.ma_lop,
pt.ma_gvpt, gv.ho_ten_gv
from hoc_sinh hs
join  ket_qua_hoc_tap kq  on kq.ma_hs = hs.ma_hs
join  mon_hoc mh  on mh.ma_mh = kq.ma_mh
join  lop on hs.ma_lop = lop.ma_lop
join  giao_vien gv on gv.ma_gv = lop.ma_gvcn
join  phu_trach_bo_mon pt  on pt.ma_mh = mh.ma_mh
where pt.ma_gvpt is not null ;

SELECT mh.ma_mh, mh.ten_mh, l.ma_lop, kq.hoc_ky FROM ket_qua_hoc_tap kq
JOIN mon_hoc mh ON kq.ma_mh = mh.ma_mh
JOIN hoc_sinh hs ON kq.ma_hs = hs.ma_hs
JOIN lop l ON hs.ma_lop = l.ma_lop
WHERE YEAR(kq.ngay_gio_thi_cuoi_ky) = 2023;

SELECT mh.ma_mh, mh.ten_mh, l.ma_lop, kq.hoc_ky FROM ket_qua_hoc_tap kq
JOIN mon_hoc mh ON kq.ma_mh = mh.ma_mh
JOIN hoc_sinh hs ON kq.ma_hs = hs.ma_hs
JOIN lop l ON hs.ma_lop = l.ma_lop
WHERE YEAR(kq.ngay_gio_thi_cuoi_ky) = 2023 AND MONTH(kq.ngay_gio_thi_cuoi_ky) = 8;

SELECT kq.ma_mh, hs.ma_lop, kq.hoc_ky FROM ket_qua_hoc_tap kq
JOIN hoc_sinh hs ON kq.ma_hs = hs.ma_hs
WHERE kq.ngay_gio_thi_cuoi_ky < '2023-08-20';


SELECT kq.ma_mh, hs.ma_lop, kq.hoc_ky FROM ket_qua_hoc_tap kq
JOIN hoc_sinh hs ON kq.ma_hs = hs.ma_hs
WHERE kq.ngay_gio_thi_cuoi_ky = '2023-08-13';

SELECT kq.ma_mh, hs.ma_lop, kq.hoc_ky FROM ket_qua_hoc_tap kq
JOIN hoc_sinh hs ON kq.ma_hs = hs.ma_hs
WHERE kq.ngay_gio_thi_cuoi_ky > '2023-08-20';
