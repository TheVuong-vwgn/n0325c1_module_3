select ho_ten_hs from hoc_sinh where ma_hs not in ( select distinct ma_hs from ket_qua_hoc_tap);

select ho_ten_gv from giao_vien where ma_gv not in (select distinct ma_gvpt from phu_trach_bo_mon);

select ho_ten_gv from giao_vien where ma_gv not in ( select distinct ma_gvcn from lop);

select ten_mh from mon_hoc where ma_mh not in (select distinct ma_mh from ket_qua_hoc_tap);

select dia_chi , count(*) as so_luong_hoc_sinh
from hoc_sinh
group by dia_chi
having so_luong_hoc_sinh > 3;

select ten_mh, avg(diem_thi_cuoi_ky) as diem_tb_cuoi_ky
from mon_hoc mh
join ket_qua_hoc_tap kq on mh.ma_mh = kq.ma_mh
group by mh.ma_mh , mh.ten_mh
having diem_tb_cuoi_ky between 5 and 10;

select hs.ma_hs, hs.ho_ten_hs, avg(diem_thi_cuoi_ky) as diemtb
from hoc_sinh hs join ket_qua_hoc_tap kq on hs.ma_hs = kq.ma_hs
group by hs.ma_hs, hs.ho_ten_hs
having diemtb > 8;