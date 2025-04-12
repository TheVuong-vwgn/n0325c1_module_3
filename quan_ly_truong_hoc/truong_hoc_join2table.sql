use quan_ly_truong_hoc;

-- JOIN 2 bangr
select ma_hs, ho_ten_hs, gioi_tinh, hoc_sinh.ma_lop, ten_lop, ma_gvcn from hoc_sinh inner join lop on hoc_sinh.ma_lop = lop.ma_lop;

select hoc_sinh.ma_hs, ho_ten_hs, hoc_ky, ma_mh, diem_thi_giua_ky, diem_thi_cuoi_ky from hoc_sinh inner join ket_qua_hoc_tap on hoc_sinh.ma_hs = ket_qua_hoc_tap.ma_hs;

select ma_gv, ho_ten_gv, ma_lop, ma_mh, hoc_ky from giao_vien inner join phu_trach_bo_mon on giao_vien.ma_gv = phu_trach_bo_mon.ma_gvpt;
