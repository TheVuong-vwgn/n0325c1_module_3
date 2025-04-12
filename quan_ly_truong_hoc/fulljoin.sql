select ma_hs, ho_ten_hs, l.ma_lop, ten_lop
from hoc_sinh hs
left join lop l on hs.ma_lop = l.ma_lop
union
select ma_hs, ho_ten_hs, l.ma_lop, ten_lop
from hoc_sinh hs
right join lop l on hs.ma_lop = l.ma_lop;

select mh.ma_mh, ten_mh, ma_gv, ho_ten_gv 
from mon_hoc mh
left join phu_trach_bo_mon pt on pt.ma_mh = mh.ma_mh
left join giao_vien gv on gv.ma_gv = pt.ma_gvpt
union
select mh.ma_mh, ten_mh, ma_gv, ho_ten_gv 
from mon_hoc mh
right join phu_trach_bo_mon pt on pt.ma_mh = mh.ma_mh
right join giao_vien gv on gv.ma_gv = pt.ma_gvpt;
