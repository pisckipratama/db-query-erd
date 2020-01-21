create table mahasiswa(
    nim integer primary key not null,
    nama_mahasiswa varchar(20) not null,
    alamat text,
    id_jurusan int not null,
    foreign key (id_jurusan) references jurusan(id_jurusan)
);

create table dosen(
    id_dosen integer primary key not null,
    nama_dosen varchar(20)
);

create table mata_kuliah(
    id_matkul integer primary key not null,
    nama_matkul varchar(20),
    sks numeric(3)
);

create table jurusan(
    id_jurusan integer primary key not null,
    nama_jurusan varchar(20)
);

create table kontrak(
    id_kontrak integer primary key not null,
    nilai numeric(10),
    nim integer not null,
    id_matkul integer not null,
    id_dosen integer not null,
    foreign key (nim) references mahasiswa(nim),
    foreign key (id_matkul) references mata_kuliah(id_matkul),
    foreign key (id_dosen) references dosen(id_dosen)
);

insert into jurusan (id_jurusan, nama_jurusan) values(1001, 'Teknik Informatika');
insert into jurusan (id_jurusan, nama_jurusan) values(1002, 'Statistika');
insert into jurusan (id_jurusan, nama_jurusan) values(1003, 'Biologi');
insert into jurusan (id_jurusan, nama_jurusan) values(1004, 'Teknologi Pangan');
insert into jurusan (id_jurusan, nama_jurusan) values(1005, 'Sistem Informasi');

insert into mahasiswa (nim, nama_mahasiswa, alamat, id_jurusan) values(20101, 'Kepa Arizabalaga', 'London Kidul', '1005');
insert into mahasiswa (nim, nama_mahasiswa, alamat, id_jurusan) values(20102, 'Antonio Rudiger', 'London Wetan', '1002');
insert into mahasiswa (nim, nama_mahasiswa, alamat, id_jurusan) values(20103, 'Andreas Christensen', 'London Kaler', '1003');
insert into mahasiswa (nim, nama_mahasiswa, alamat, id_jurusan) values(20104, 'Cesar Azpilicueta', 'London Kulon', '1004');
insert into mahasiswa (nim, nama_mahasiswa, alamat, id_jurusan) values(20105, 'Ngolo Kante', 'London Lama', '1001');
insert into mahasiswa (nim, nama_mahasiswa, alamat, id_jurusan) values(20106, 'Reece James', 'London Tengah', '1002');
insert into mahasiswa (nim, nama_mahasiswa, alamat, id_jurusan) values(20107, 'Jorginho', 'London Pinggir', '1003');
insert into mahasiswa (nim, nama_mahasiswa, alamat, id_jurusan) values(20108, 'Mason Mount', 'London Pesisir', '1004');
insert into mahasiswa (nim, nama_mahasiswa, alamat, id_jurusan) values(20109, 'Hudson Odoi', 'London Tengah', '1005');
insert into mahasiswa (nim, nama_mahasiswa, alamat, id_jurusan) values(20110, 'Tammy Abraham', 'London Wetan', '1001');
insert into mahasiswa (nim, nama_mahasiswa, alamat, id_jurusan) values(20110, 'Willian', 'London Wetan', '1002');

insert into mata_kuliah (id_matkul, nama_matkul, sks) values (1, "Aljabar Linier Elementer", 3);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (2, "Sistem Informasi Manajemen", 4);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (3, "Manajemen", 3);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (4, "Algoritma dan Pemrograman", 4);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (5, "Pengantar Bisnis", 2);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (6, "Kalkulus", 4);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (7, "Matematika Dasar", 3);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (8, "Pengantar Informatika", 3);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (9, "Pendidikan Agama", 4);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (10, "Pendidikan Pancasila", 3);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (11, "Pengantar Biokimia", 3);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (12, "Sepakbola untuk Profesional", 2);

insert into dosen (id_dosen, nama_dosen) values (101, "Asep Smith Sinaga");
insert into dosen (id_dosen, nama_dosen) values (102, "Umuh Muchtar");
insert into dosen (id_dosen, nama_dosen) values (103, "Upin Danipin");
insert into dosen (id_dosen, nama_dosen) values (104, "Frank Lampard");
insert into dosen (id_dosen, nama_dosen) values (105, "Rojali Siregar");

insert into kontrak (id_kontrak, nim, id_matkul, id_dosen, nilai) values (311, 20101, 01, 101, 81);
insert into kontrak (id_kontrak, nim, id_matkul, id_dosen, nilai) values (312, 20102, 02, 101, 85);
insert into kontrak (id_kontrak, nim, id_matkul, id_dosen, nilai) values (313, 20103, 03, 102, 80);
insert into kontrak (id_kontrak, nim, id_matkul, id_dosen, nilai) values (314, 20104, 04, 102, 76);
insert into kontrak (id_kontrak, nim, id_matkul, id_dosen, nilai) values (315, 20105, 05, 103, 72);
insert into kontrak (id_kontrak, nim, id_matkul, id_dosen, nilai) values (316, 20106, 06, 103, 70);
insert into kontrak (id_kontrak, nim, id_matkul, id_dosen, nilai) values (317, 20107, 07, 104, 69);
insert into kontrak (id_kontrak, nim, id_matkul, id_dosen, nilai) values (318, 20108, 08, 104, 87);
insert into kontrak (id_kontrak, nim, id_matkul, id_dosen, nilai) values (319, 20109, 09, 105, 93);
insert into kontrak (id_kontrak, nim, id_matkul, id_dosen, nilai) values (320, 20110, 10, 105, 78);
insert into kontrak (id_kontrak, nim, id_matkul, id_dosen, nilai) values (321, 20111, 12, 104, 70);
