use quan_ly_truong_hoc;

-- like
select * from hoc_sinh where ho_ten_hs like 'Nguyễn %';

select * from hoc_sinh where ho_ten_hs like '% Nở';

select * from hoc_sinh where ho_ten_hs like 'Thị%';

select * from hoc_sinh where ho_ten_hs like '%Thị%' and ho_ten_hs not like '%Thị' and ho_ten_hs not like 'Thị%';

-- length là không dấu, char_length cos dau
select * from hoc_sinh where char_length(ho_ten_hs) = 30;

select * from hoc_sinh where char_length(ho_ten_hs) <= 30;

select * from hoc_sinh where char_length(ho_ten_hs) <= 30 and ho_ten_hs like 'N%';

select * from hoc_sinh where ho_ten_hs like 'N%' or ho_ten_hs like 'T%' or ho_ten_hs like 'V%';

select * from hoc_sinh where ho_ten_hs not like 'N%' and ho_ten_hs not like 'T%' and ho_ten_hs not like 'V%';

select * from hoc_sinh where char_length(substring_index(ho_ten_hs,' ',1)) = 4;
