create table mahasiswa(
    id_mhs integer primary key,
    nim number(10),
    nama_mahasiswa varchar(20),
    alamat varchar(20),
    jurusan varchar(15)
);

create table dosen(
    id_dosen integer primary key,
    nama_dosen varchar(20)
);

create table mata_kuliah(
    id_matkul integer primary key,
    nama_matkul varchar(20),
    sks number(3)
);

create table jurusan(
    id_jurusan integer primary key,
    nama_jurusan varchar(20)
);

create table kontrak(
    id_kontrak integer primary key,
    id_mhs integer,
    nama_mahasiswa varchar(20),
    id_matkul integer,
    nama_matkul varchar(20),
    id_dosen integer,
    nama_dosen varchar(20),
    nilai number(10),
    sks number(3)
);