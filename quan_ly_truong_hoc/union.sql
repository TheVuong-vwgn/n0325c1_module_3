select ho_ten_hs, gioi_tinh, dia_chi
from hoc_sinh
where gioi_tinh = 'Nam' and dia_chi like '%Thanh Khê%'
union 
select ho_ten_hs, gioi_tinh, dia_chi
from hoc_sinh
where gioi_tinh = 'Nữ' and dia_chi like '%Hải Châu%';

select ho_ten_hs as ho_ten, null as nghiep_ph, null as ho_ten_gv
from hoc_sinh
union
select null as ho_ten, null as nghiep_ph, ho_ten_gv
from giao_vien;

select ho_ten_hs as ho_ten, 'Hoc sinh' as nghiep_ph
from hoc_sinh
union
select ho_ten_gv as ho_ten, 'Giáo viên' as nghiep_ph
from giao_vien;