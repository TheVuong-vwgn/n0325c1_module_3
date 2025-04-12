select l.ma_lop, l.ten_lop, l.ma_gvcn, gv.ho_ten_gv
from lop l
left join giao_vien gv on l.ma_gvcn = gv.ma_gv;

select hs.ma_hs, hs.ho_ten_hs, kq.hoc_ky, kq.ma_mh, mh.ten_mh, kq.diem_thi_giua_ky, kq.diem_thi_cuoi_ky
from hoc_sinh hs
left join ket_qua_hoc_tap kq on hs.ma_hs = kq.ma_hs
left join mon_hoc mh on kq.ma_mh = mh.ma_mh;

select hs.ma_hs, hs.ho_ten_hs, l.ma_lop, l.ten_lop, l.ma_gvcn, gv.ho_ten_gv
from hoc_sinh hs
left join lop l on hs.ma_lop = l.ma_lop
left join giao_vien gv on l.ma_gvcn = gv.ma_gv;

select gv.ma_gv, gv.ho_ten_gv, l.ma_lop, l.ten_lop, pt.ma_mh, pt.hoc_ky, mh.ten_mh
from giao_vien gv
left join phu_trach_bo_mon pt on gv.ma_gv = pt.ma_gvpt
left join lop l on pt.ma_lop = l.ma_lop
left join mon_hoc mh on pt.ma_mh = mh.ma_mh;