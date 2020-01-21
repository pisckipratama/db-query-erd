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
    id_kontrak integer primary key,
    nilai char(2),
    nim integer not null,
    id_matkul integer not null,
    id_dosen integer not null,
    foreign key (nim) references mahasiswa(nim),
    foreign key (id_matkul) references mata_kuliah(id_matkul),
    foreign key (id_dosen) references dosen(id_dosen)
);

insert into jurusan (id_jurusan, nama_jurusan) values(1001, 'Teknik Informatika');
insert into jurusan (id_jurusan, nama_jurusan) values(1002, 'Teknik Komputer');
insert into jurusan (id_jurusan, nama_jurusan) values(1003, 'Sistem Informasi');

insert into mahasiswa (nim, nama_mahasiswa, alamat, id_jurusan) values(20101, 'Kasih Adinda', 'Jambi', '1001');
insert into mahasiswa (nim, nama_mahasiswa, alamat, id_jurusan) values(20102, 'Fenti Rahmawati', 'Ciamis', '1003');
insert into mahasiswa (nim, nama_mahasiswa, alamat, id_jurusan) values(20103, 'Kulsum Sopiani', 'Bandung', '1003');
insert into mahasiswa (nim, nama_mahasiswa, alamat, id_jurusan) values(20114, 'Arip Rahman', 'Garut', '1002');
insert into mahasiswa (nim, nama_mahasiswa, alamat, id_jurusan) values(20115, 'Piscki Pratama', 'Jakarta', '1001');

insert into mata_kuliah (id_matkul, nama_matkul, sks) values (11, "Sistem Informasi Manajemen", 4);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (12, "Manajemen", 3);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (13, "Algoritma dan Pemrograman", 4);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (14, "Pengantar Bisnis", 2);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (15, "Kalkulus", 4);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (16, "Matematika Dasar", 3);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (17, "Pengantar Informatika", 3);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (18, "Pendidikan Agama", 4);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (19, "Pendidikan Pancasila", 3);
insert into mata_kuliah (id_matkul, nama_matkul, sks) values (20, "Aljabar Linier Elementer", 3);

insert into dosen (id_dosen, nama_dosen) values (101, "John Doe");
insert into dosen (id_dosen, nama_dosen) values (102, "Chalie Atson");
insert into dosen (id_dosen, nama_dosen) values (103, "Gerald Alberts");
insert into dosen (id_dosen, nama_dosen) values (104, "Frankie Smith");
insert into dosen (id_dosen, nama_dosen) values (105, "Stephany Angela");

insert into kontrak (nim, id_matkul, id_dosen, nilai) values (20101, 11, 101, 'A');
insert into kontrak (nim, id_matkul, id_dosen, nilai) values (20102, 12, 101, 'A');
insert into kontrak (nim, id_matkul, id_dosen, nilai) values (20103, 13, 102, 'B');
insert into kontrak (nim, id_matkul, id_dosen, nilai) values (20104, 14, 102, 'B');
insert into kontrak (nim, id_matkul, id_dosen, nilai) values (20105, 15, 103, 'C');
insert into kontrak (nim, id_matkul, id_dosen, nilai) values (20101, 16, 103, 'C');
insert into kontrak (nim, id_matkul, id_dosen, nilai) values (20102, 17, 104, 'D');
insert into kontrak (nim, id_matkul, id_dosen, nilai) values (20103, 18, 104, 'D');
insert into kontrak (nim, id_matkul, id_dosen, nilai) values (20104, 19, 105, 'E');
insert into kontrak (nim, id_matkul, id_dosen, nilai) values (20105, 20, 105, 'E');