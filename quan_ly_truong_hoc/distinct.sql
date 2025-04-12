SELECT DISTINCT ho_ten_hs FROM hoc_sinh;

SELECT DISTINCT ma_lop FROM hoc_sinh WHERE ma_lop IS NOT NULL AND ma_lop <> '';

SELECT DISTINCT ma_mh FROM phu_trach_bo_mon;

SELECT DISTINCT ma_mh FROM ket_qua_hoc_tap;

SELECT DISTINCT ma_gvcn FROM lop WHERE ma_gvcn IS NOT NULL;