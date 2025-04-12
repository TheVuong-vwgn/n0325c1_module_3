select distinct dia_chi
from hoc_sinh;

select dia_chi
from hoc_sinh
group by dia_chi;

select ho_ten_hs, gioi_tinh
from hoc_sinh
group by ho_ten_hs, gioi_tinh;

select ho_ten_hs
from hoc_sinh
group by ho_ten_hs, gioi_tinh;

select kq.ma_mh, mh.ten_mh, kq.diem_thi_cuoi_ky
from ket_qua_hoc_tap kq join mon_hoc mh on kq.ma_mh = mh.ma_mh
where kq.diem_thi_cuoi_ky is not null
group by mh.ma_mh, kq.diem_thi_cuoi_ky;

select distinct gv.ma_gv, gv.ho_ten_gv from giao_vien gv join phu_trach_bo_mon ptbm on gv.ma_gv = ptbm.ma_gvpt;

select month(ktc.ngay_gio_thi_cuoi_ky) as thang, year(ktc.ngay_gio_thi_cuoi_ky) as nam from ket_qua_hoc_tap ktc
where ktc.diem_thi_cuoi_ky is not null 
group by thang, nam;