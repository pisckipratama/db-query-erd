-- Jawaban nomer 1
select mahasiswa.nim, mahasiswa.nama_mahasiswa, mahasiswa.alamat, mahasiswa.umur, jurusan.nama_jurusan
from mahasiswa
inner join jurusan
on jurusan.id_jurusan=mahasiswa.id_jurusan;

-- Jawaban nomer 2
select *
from mahasiswa 
where umur < 20;

-- Jawaban nomer 3
select mahasiswa.nim, mahasiswa.nama_mahasiswa, kontrak.nilai
from mahasiswa
inner join kontrak
on mahasiswa.nim=kontrak.nim
where nilai between "A" and "B";

-- Jawab nomer 4


-- Jawab nomer 5
select mahasiswa.nim, mahasiswa.nama_mahasiswa, mata_kuliah.nama_matkul
from mata_kuliah
inner join kontrak
on kontrak.id_matkul=mata_kuliah.id_matkul;