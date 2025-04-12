use quan_ly_truong_hoc;

-- order by
select * from hoc_sinh order by ho_ten_hs asc;

select * from hoc_sinh order by ho_ten_hs desc;

select * from hoc_sinh order by ho_ten_hs asc, dia_chi desc;

select * from hoc_sinh order by ho_ten_hs asc, dia_chi asc;

select * from hoc_sinh order by ho_ten_hs desc, dia_chi desc;

select * from hoc_sinh order by ho_ten_hs desc, dia_chi desc, ho_ten_ph asc;
