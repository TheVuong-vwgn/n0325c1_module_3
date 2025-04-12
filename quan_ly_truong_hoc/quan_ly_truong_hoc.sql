create database quan_ly_truong_hoc;

use quan_ly_truong_hoc;

create table giao_vien (
	ma_gv char(5) primary key,
    ho_ten_gv varchar(255)
);

create table mon_hoc (
	ma_mh char(5) primary key,
    ten_mh varchar(255)
);

create table lop (
	ma_lop char(5) primary key,
    ten_lop varchar(255),
    ma_gvcn char(5),
    nam_hoc varchar(50),
    foreign key (ma_gvcn) references giao_vien (ma_gv)
);

create table hoc_sinh (
	ma_hs char(5) primary key,
    ho_ten_hs varchar(255),
    ho_ten_ph varchar(255),
    gioi_tinh varchar(10),
    dia_chi varchar(255),
    ma_lop char(5),
    foreign key (ma_lop) references lop (ma_lop)
);

create table ket_qua_hoc_tap (
	ma_hs char(5),
    hoc_ky varchar(10),
    ma_mh char(5),
    diem_thi_giua_ky float,
    diem_thi_cuoi_ky float,
    ngay_gio_thi_cuoi_ky datetime,
    primary key(ma_hs, hoc_ky, ma_mh),
    foreign key (ma_hs) references hoc_sinh (ma_hs),
    foreign key (ma_mh) references mon_hoc (ma_mh)
);

create table phu_trach_bo_mon (
	ma_gvpt char(5),
    ma_lop char(5),
    ma_mh char(5),
    hoc_ky varchar(10),
    primary key (ma_gvpt, ma_lop, ma_mh, hoc_ky),
    foreign key (ma_gvpt) references giao_vien (ma_gv),
    foreign key (ma_lop) references lop (ma_lop),
    foreign key (ma_mh) references mon_hoc (ma_mh)
);

INSERT INTO giao_vien (ma_gv, ho_ten_gv)
VALUES ('GV001', 'Nguyễn Văn Anh'),
       ('GV002', 'Trần Quốc Bảo'),
       ('GV003', 'Lê Thị Lan'),
       ('GV004', 'Phạm Minh Đức'),
       ('GV005', 'Võ Văn Nghĩa'),
       ('GV006', 'Huỳnh Thị Hoa'),
       ('GV007', 'Nguyễn Hoàng Nam'),
       ('GV008', 'Trần Văn Khánh'),
       ('GV009', 'Lê Thị Mai'),
       ('GV010', 'Hoàng Xuân Thanh');

INSERT INTO lop (ma_lop, ten_lop, ma_gvcn, nam_hoc)
VALUES
('L0001', 'Lớp 1A', 'GV001', '2022-2023'),
('L0002', 'Lớp 2A', 'GV003', '2022-2023'),
('L0003', 'Lớp 1B', 'GV002', '2022-2023'),
('L0004', 'Lớp 2B', 'GV005', '2022-2023'),
('L0005', 'Lớp 3A', 'GV004', '2022-2023'),
('L0006', 'Lớp 4A', 'GV006', '2022-2023'),
('L0007', 'Lớp 3B', 'GV008', '2022-2023'),
('L0008', 'Lớp 4B', 'GV010', '2022-2023'),
('L0009', 'Lớp 5A', 'GV007', '2022-2023'),
('L0010', 'Lớp 5B', 'GV009', '2022-2023');

INSERT INTO hoc_sinh (ma_hs, ho_ten_hs, ho_ten_ph, gioi_tinh, dia_chi, ma_lop)
VALUES 
('HS001', 'Nguyễn Văn Minh', 'Nguyễn Hoàng Linh', 'Nam', 'Thanh Khê', 'L0001'),
('HS002', 'Trần Thị Mai', 'Trần Văn Tuyến', 'Nữ', 'Hải Châu', 'L0002'),
('HS003', 'Lê Tuấn Anh', 'Lê Văn Tường', 'Nam', 'Thanh Khê', 'L0001'),
('HS004', 'Phạm Thị Hoa', 'Phạm Văn Lợi', 'Nữ', 'Sơn Trà', 'L0003'),
('HS005', 'Võ Minh Tuấn', 'Võ Văn Đại', 'Nam', 'Liên Chiểu', 'L0004'),
('HS006', 'Huỳnh Thị Lan', 'Huỳnh Văn Sơn', 'Nữ', 'Cẩm Lệ', 'L0005'),
('HS007', 'Nguyễn Hoàng Nam', 'Nguyễn Văn Quang', 'Nam', 'Hòa Vang', 'L0006'),
('HS008', 'Trần Minh Trí', 'Trần Văn Hoàng', 'Nam', 'Hải Châu', 'L0007');

INSERT INTO mon_hoc (ma_mh, ten_mh)
VALUES
('MH001', 'Toán học'),
('MH002', 'Ngữ văn'),
('MH003', 'Lịch sử'),
('MH004', 'Địa lý'),
('MH005', 'Sinh học'),
('MH006', 'Vật lí'),
('MH007', 'Hóa học'),
('MH008', 'Giáo dục công dân'),
('MH009', 'Thể dục'),
('MH010', 'Âm nhạc');

INSERT INTO ket_qua_hoc_tap (ma_hs, hoc_ky, ma_mh, diem_thi_giua_ky, diem_thi_cuoi_ky, ngay_gio_thi_cuoi_ky)
VALUES
('HS001', 'Hoc ky 1', 'MH001', 8.5, 9.0, '2023-01-15 08:00:00'),
('HS002', 'Hoc ky 1', 'MH001', 7.0, 7.5, '2023-01-15 09:30:00'),
('HS003', 'Hoc ky 1', 'MH001', 6.5, 7.0, '2023-01-15 08:00:00'),
('HS004', 'Hoc ky 1', 'MH001', 8.0, 8.5, '2023-01-15 09:30:00'),
('HS005', 'Hoc ky 1', 'MH001', 9.0, 9.5, '2023-01-15 08:00:00'),
('HS006', 'Hoc ky 1', 'MH001', 7.5, 8.0, '2023-01-15 09:30:00'),
('HS007', 'Hoc ky 1', 'MH001', 6.0, 6.5, '2023-01-15 08:00:00'),
('HS008', 'Hoc ky 1', 'MH001', 6.0, 6.5, '2023-01-15 08:00:00');


INSERT INTO phu_trach_bo_mon (ma_gvpt, ma_lop, ma_mh, hoc_ky)
VALUES
('GV001', 'L0001', 'MH001', 'Học kỳ 1'),
('GV002', 'L0003', 'MH002', 'Học kỳ 1'),
('GV003', 'L0002', 'MH003', 'Học kỳ 1'),
('GV004', 'L0004', 'MH004', 'Học kỳ 1'),
('GV005', 'L0005', 'MH005', 'Học kỳ 1'),
('GV006', 'L0006', 'MH006', 'Học kỳ 1'),
('GV007', 'L0007', 'MH007', 'Học kỳ 1'),
('GV008', 'L0008', 'MH008', 'Học kỳ 1'),
('GV009', 'L0009', 'MH009', 'Học kỳ 1'),
('GV010', 'L0010', 'MH010', 'Học kỳ 1'),
('GV001', 'L0001', 'MH001', 'Học kỳ 2'),
('GV002', 'L0003', 'MH002', 'Học kỳ 2'),
('GV003', 'L0002', 'MH003', 'Học kỳ 2'),
('GV004', 'L0004', 'MH004', 'Học kỳ 2'),
('GV005', 'L0005', 'MH005', 'Học kỳ 2'),
('GV006', 'L0006', 'MH006', 'Học kỳ 2'),
('GV007', 'L0007', 'MH007', 'Học kỳ 2'),
('GV008', 'L0008', 'MH008', 'Học kỳ 2'),
('GV009', 'L0009', 'MH009', 'Học kỳ 2'),
('GV010', 'L0010', 'MH010', 'Học kỳ 2');

-- select khong where
select * from giao_vien;

select hs.ho_ten_hs, hs.gioi_tinh, hs.ho_ten_ph from hoc_sinh hs;

select * from lop;

-- select where
select * from hoc_sinh where gioi_tinh = 'nam';

select * from hoc_sinh where ho_ten_ph is null;

select * from lop where ma_gvcn is null;

select * from hoc_sinh where ma_lop is null;

select * from hoc_sinh where dia_chi = 'Thanh Khê';

select * from hoc_sinh where gioi_tinh = 'Nam'and dia_chi = 'Hải Châu' or gioi_tinh = 'Nữ' and dia_chi = 'Thanh Khê';

select * from hoc_sinh where (gioi_tinh = 'Nam' and ho_ten_ph is null) or (gioi_tinh = 'Nữ' and ma_lop is null);

select * from hoc_sinh where gioi_tinh = 'Nam' and (ma_lop is null or ho_ten_ph is null);

select ma_mh from phu_trach_bo_mon where hoc_ky = 'Học kỳ 2';

