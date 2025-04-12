select ho_ten_hs
from hoc_sinh hs
where ma_lop = 'L0001'
order by ho_ten_hs
limit 5 offset 10;

select ho_ten_gv, mh.ten_mh
from phu_trach_bo_mon pt
join mon_hoc mh on mh.ma_mh = pt.ma_mh
join giao_vien gv on gv.ma_gv = pt.ma_gvpt
join lop l on l.ma_gvcn = gv.ma_gv
where ten_lop = 'Lớp 5A'
order by mh.ten_mh
limit 5 offset 5; 