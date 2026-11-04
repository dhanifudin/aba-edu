// Buku panduan ABA-EDU Web -- Modul E-Rapor dan Kegiatan Pembelajaran (tim Usman Nurhasan dkk).
// Tangkapan layar diambil dari akun demo Kiddy School ERP (images/manual-*.jpg; data contoh).
#import "common.typ": laporan
#import "manual-common.typ": *

#let ketua-modul = laporan.anggota.find(a => a.nama.starts-with("Usman")).nama + " dkk"

#show: manual.with("Buku Panduan ABA-EDU Web · Modul E-Rapor dan Kegiatan Pembelajaran")

#cover(
  "Modul E-Rapor dan Kegiatan Pembelajaran",
  "E-Rapor dan Kegiatan Pembelajaran",
  "Presensi, jurnal harian, materi, pemantauan tumbuh kembang, dan rapor digital anak usia dini dalam satu portal untuk guru, admin, dan orang tua.",
  motif-rapor(),
  ("Presensi", "Jurnal dan materi", "Tumbuh kembang", "Rapor"),
  ketua-modul,
)

#outline(title: [Daftar Isi], depth: 2)

= Pengantar

== Tentang modul
Modul E-Rapor dan Kegiatan Pembelajaran membantu guru mencatat kehadiran, jurnal harian, materi, dan pertumbuhan fisik anak, menyusun rapor digital dengan template Kurikulum Merdeka PAUD/TK, lalu membagikannya kepada orang tua melalui portal wali murid. Modul berjalan pada platform Kiddy School ERP (halokes.com) di #laporan.mitra.situs dan dapat dibuka dari komputer maupun ponsel.

== Pengguna dan peran
#table(
  columns: (3.4cm, 1fr),
  [Peran], [Kegunaan],
  [Guru], [Mengisi presensi, jurnal harian, materi, perkembangan fisik, dan rapor kelas yang diampu.],
  [Admin (Kepala Sekolah/Operator)], [Menyetujui materi, memantau seluruh kelas, mencetak dan mengarsipkan rapor, mengatur template dan akses rapor, serta menaikkan kelas.],
  [Wali Murid (orang tua)], [Melihat rapor, laporan fisik, materi, dan jurnal harian anak.],
)

#tip[Pendaftaran siswa baru, profil lembaga, dan verifikasi calon siswa dibahas pada *Buku Panduan ABA-EDU Web · Modul Profil Lembaga dan PPDB Online*.]

== Kebutuhan perangkat
- Peramban (browser) versi terbaru: Chrome, Firefox, Edge, atau Safari.
- Koneksi internet; komputer, tablet, atau ponsel.
- Akun sesuai peran (guru, admin, atau wali murid) dan anak yang sudah ditempatkan pada kelas.

= Portal Wali Murid (untuk Orang Tua)

== Masuk dan membaca dasbor
Masuk melalui halaman login dengan email atau nomor telepon dan kata sandi. Dasbor memuat *Daftar Anak Anda* dengan tombol *Lihat Rapor*, *Cek Fisik*, *Jurnal Harian*, dan *Materi Pelajaran*, serta pengumuman sekolah. Bila memiliki lebih dari satu anak, pilih anak pada menu di kanan atas; menu *Tautkan Anak (NISN)* menautkan anak lain ke akun.

#figure(
  image("/images/manual-w-beranda.jpg", width: 90%),
  caption: [Dasbor Wali Murid.],
)

== Melihat rapor anak
Buka *Rapor Anak*, lalu pilih semester. Laporan perkembangan memuat capaian pembelajaran per elemen (misalnya nilai agama dan budi pekerti serta jati diri) beserta narasi dari guru.

#figure(
  image("/images/manual-w-rapor.jpg", width: 90%),
  caption: [Rapor Anak.],
)

== Melihat laporan fisik dan jurnal harian
- *Laporan Fisik* memuat riwayat tanggal pengukuran, tinggi badan, berat badan, dan lingkar kepala.
- *Jurnal Harian Anak* memuat tanggal, topik, catatan kegiatan, dan foto dokumentasi bila ada.

#grid(columns: (1fr, 1fr), gutter: 8pt,
  figure(image("/images/manual-w-fisik.jpg", width: 100%), caption: [Laporan Fisik.]),
  figure(image("/images/manual-w-jurnal.jpg", width: 100%), caption: [Jurnal Harian Anak.]),
)

== Membuka materi pelajaran
Menu *Materi Pelajaran* menampilkan materi yang diunggah guru untuk kelas anak beserta mata pelajaran dan tanggalnya. Tekan *Buka Detail Materi* untuk membaca isinya.

#figure(
  image("/images/manual-w-materi.jpg", width: 90%),
  caption: [Materi Pelajaran.],
)

= Kegiatan Harian (untuk Guru dan Admin)

#tip[Gambar memakai akun demonstrasi sehingga nama dan data siswa adalah data contoh. Guru melihat kelas yang diampunya; admin dapat memilih semua kelas.]

== Mengisi presensi harian
+ Buka *Presensi Harian*, pilih kelas dan tanggal.
+ Pada *Daftar Kehadiran Siswa*, pilih status *Hadir*, *Sakit*, *Izin*, atau *Alfa* untuk setiap siswa.
+ Simpan presensi.

#figure(
  image("/images/manual-a-presensi.jpg", width: 90%),
  caption: [Presensi Harian.],
)

== Membuat rekap presensi
Menu *Rekap Presensi* menyaring kehadiran berdasarkan kelas, nama atau NIK siswa, dan rentang tanggal. Tombol *Cetak Rekap Semua Siswa* mencetak rekap.

#figure(
  image("/images/manual-a-rekap.jpg", width: 90%),
  caption: [Rekap Presensi.],
)

== Mengisi jurnal harian
Menu *Jurnal Harian* menampilkan jumlah topik hari ini serta topik per kelompok (A dan B). Tekan *Buat Topik Jurnal* untuk membuat topik pada tanggal dan kelompok tertentu, lalu isi catatan perkembangan setiap anak. Tombol *Rekap Jurnal* dan *Unduh ZIP* mengunduh rekap.

#figure(
  image("/images/manual-a-jurnal.jpg", width: 90%),
  caption: [Jurnal Harian.],
)

== Menyetujui materi pelajaran
Guru mengunggah materi, kemudian kepala sekolah menyetujuinya pada *Persetujuan Materi*. Saring daftar berdasarkan status *Menunggu (Pending)*, *Disetujui (Published)*, atau *Ditolak (Rejected)*, periksa judul, mata pelajaran, guru pengunggah, kelas, dan tanggal kirim, lalu setujui atau tolak. Materi yang disetujui tampil pada portal wali murid.

#figure(
  image("/images/manual-a-persetujuan.jpg", width: 90%),
  caption: [Persetujuan Materi.],
)

== Memantau perkembangan fisik
Pada *Perkembangan Fisik*, pilih kelas, cari siswa, lalu tekan *Laporan & Grafik* untuk melihat dan memasukkan riwayat berat badan, tinggi badan, dan lingkar kepala beserta grafik pertumbuhan.

#figure(
  image("/images/manual-a-fisik.jpg", width: 90%),
  caption: [Perkembangan Fisik.],
)

= E-Rapor dan Arsip

== Mengisi rapor
Buka *Isi Rapor*, pilih semester dan rombongan belajar (admin), lalu pilih peserta didik. Formulir mengikuti template *Kurikulum Merdeka PAUD / TK (Standar)* dan memuat penilaian autentik, narasi capaian belajar, muatan lokal, dan dokumentasi kegiatan.

#figure(
  image("/images/manual-a-isi-rapor.jpg", width: 90%),
  caption: [Formulir pengisian e-rapor.],
)

#tip[Rapor hanya dapat diisi ketika *Akses Pengisian Rapor* berstatus *Terbuka*. Admin mengubah status melalui tombol *Ganti Status* pada dasbor atau kontrol akses rapor pada *Pengaturan Sekolah*.]

== Mencetak rapor
Pada *Cetak Rapor*, saring kelas atau cari siswa, lalu tekan *Cetak PDF* untuk membuka rapor resmi dalam bentuk PDF.

#figure(
  image("/images/manual-a-cetak.jpg", width: 90%),
  caption: [Cetak Rapor.],
)

== Mengarsipkan rapor
*Arsip Rapor* menyimpan hasil scan rapor yang sudah ditandatangani. Saring berdasarkan kelas, semester, dan status arsip (*Sudah Diunggah* atau *Belum Diunggah*), kemudian unggah atau unduh berkas siswa.

#figure(
  image("/images/manual-a-arsip.jpg", width: 90%),
  caption: [Arsip Rapor.],
)

== Mengelola template rapor
Menu *Template Rapor* menampilkan template yang sedang aktif. Tombol *Tambah Template* membuat template baru dan *Atur Indikator* mengubah struktur dan komponen isian rapor.

#figure(
  image("/images/manual-a-template.jpg", width: 90%),
  caption: [Template Rapor.],
)

== Menaikkan kelas
Pada akhir tahun ajaran, buka *Kenaikan Kelas*, pilih kelas asal, tekan *Tampilkan Siswa*, lalu pindahkan siswa ke tingkat berikutnya atau tentukan kelulusan melalui aksi siswa massal.

#figure(
  image("/images/manual-a-kenaikan.jpg", width: 90%),
  caption: [Kenaikan Kelas.],
)

= Keamanan dan Data Pribadi

- Data anak dan orang tua adalah data pribadi; hanya admin, kepala sekolah, dan guru yang berwenang boleh mengaksesnya.
- Orang tua hanya melihat data anak yang tertaut pada akunnya.
- Jangan membagikan kata sandi atau mengirim rapor melalui kanal publik atau grup pesan.
- Laporkan dugaan kebocoran data kepada pimpinan yayasan dan tim pendukung dalam 1 x 24 jam.

= Pertanyaan yang Sering Diajukan

#table(
  columns: (5cm, 1fr),
  [Pertanyaan], [Jawaban],
  [Rapor tidak bisa diisi.], [Akses pengisian rapor ditutup. Minta admin membukanya melalui *Ganti Status* pada dasbor.],
  [Anak tidak muncul pada daftar.], [Anak belum ditempatkan pada kelas. Minta admin memakai *Set Kelas* pada menu Data Siswa.],
  [Materi tidak tampil pada portal wali murid.], [Materi masih menunggu persetujuan kepala sekolah pada *Persetujuan Materi*.],
  [Lupa kata sandi.], [Gunakan tautan *Lupa Password* pada halaman login atau minta admin menyetel ulang akun.],
)

= Kontak dan Dukungan

#table(
  columns: (4cm, 1fr),
  [Pihak], [Kontak],
  [Tim pendukung modul rapor], [#ketua-modul, Politeknik Negeri Malang],
  [Pengelola yayasan], [#laporan.mitra.nama-pendek, #laporan.mitra.alamat],
)
