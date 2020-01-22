-- 1. menampilkan seluruh data mahasiswa dan jurusannya
select mahasiswa.nim, mahasiswa.nama_mahasiswa, mahasiswa.alamat, mahasiswa.umur, jurusan.nama_jurusan
from mahasiswa
    inner join jurusan
    on jurusan.id_jurusan=mahasiswa.id_jurusan;

-- 2. menampilkan data mahasiswa dengan umur dibawah 20 tahun
select *
from mahasiswa
where umur < 20;

-- 3. menampilkan data mahasiswa yang memiliki nilai "B" ke atas.
select mahasiswa.nim, mahasiswa.nama_mahasiswa, kontrak.nilai
from mahasiswa
    inner join kontrak
    on mahasiswa.nim=kontrak.nim
where nilai in ("A", "B");

-- 4. Menampilkan data mahasiswa yang memiliki jumlah SKS lebih dari 10.
select m.nim, m.nama_mahasiswa, sum(mk.sks) total_sks
from mahasiswa m, mata_kuliah mk
    inner join kontrak k
    on m.nim = k.nim and mk.id_matkul = k.id_matkul
group by m.nim
having sum(mk.sks) >= 10;

-- 5. Menampilkan data mahasiwa yang mengambil mata kuliah 'data mining'.
select m.nim, m.nama_mahasiswa, mk.nama_matkul
from mahasiswa m, mata_kuliah mk
    inner join kontrak k
    on m.nim = k.nim and mk.id_matkul = k.id_matkul
where mk.nama_matkul='Data Mining';

-- 6. Menampilkan jumlah mahasiswa untuk setiap dosen
select d.id_dosen, d.nama_dosen, count(distinct m.nama_mahasiswa) total_mahasiswa
from mahasiswa m, dosen d
    inner join kontrak k on d.id_dosen=k.id_dosen and m.nim=k.nim
group by d.id_dosen;

-- 7. mengurutkan mahasiswa berdasarkan umurnya.
select *
from mahasiswa
order by umur;

-- 8. Menampilkan kontrak matakuliah yang harus diulang, 
-- serta tampikan data mahasiswa jurusan dan dosen secara lengkap.
