// Buku panduan ABA-EDU Web -- Modul Profil Lembaga dan PPDB Online (tim Dian Hanifudin Subhi dkk).
// Lampiran pendaftaran Hak Cipta dan bahan pelatihan pengelola. Tangkapan layar halaman publik:
// images/web-*.jpg (scripts/screenshots.sh); halaman setelah login: images/manual-*.jpg, diambil
// dari akun demo Kiddy School ERP (data demo, bukan data pribadi nyata).
#import "common.typ": laporan
#import "manual-common.typ": *

#show: manual.with("Buku Panduan ABA-EDU Web · Modul Profil Lembaga dan PPDB Online")

#cover(
  "Modul Profil Lembaga dan PPDB Online",
  "Profil Lembaga dan PPDB Online",
  "Website resmi lembaga dan pendaftaran peserta didik baru secara daring: dari informasi sekolah, akun orang tua, hingga verifikasi calon siswa.",
  motif-sekolah(),
  ("Profil", "Daftar akun", "Isi formulir", "Verifikasi"),
  laporan.ketua.nama + " dkk",
)

#outline(title: [Daftar Isi], depth: 2)

= Pengantar

== Tentang ABA-EDU Web
ABA-EDU Web adalah aplikasi web untuk lembaga pendidikan anak usia dini yang menyediakan (1) website profil yang menampilkan identitas, visi dan misi, program, galeri, dan keunggulan lembaga, serta (2) portal PPDB online tempat orang tua membuat akun dan mendaftarkan anak. Pengelola yayasan memverifikasi pendaftar dan mengelola data sekolah melalui portal ERP. Sistem berjalan pada platform Kiddy School ERP (halokes.com) dan dapat dibuka dari komputer maupun ponsel tanpa memasang aplikasi.

== Pengguna dan peran
#table(
  columns: (3.4cm, 1fr),
  [Peran], [Kegunaan],
  [Pengunjung], [Membaca profil lembaga dan membuka portal PPDB tanpa akun.],
  [Wali Murid (orang tua)], [Membuat akun, mendaftarkan anak melalui formulir PPDB, dan mengakses portal wali murid.],
  [Admin (Kepala Sekolah/Operator)], [Mengatur kuota pendaftaran, memverifikasi calon siswa, mengelola data siswa dan kelas, dan menerbitkan pengumuman.],
  [Super Admin yayasan], [Mengatur akses dan data lembaga pada tingkat yayasan.],
)

#tip[Rapor, presensi, jurnal harian, materi, dan pemantauan tumbuh kembang dibahas pada *Buku Panduan ABA-EDU Web · Modul E-Rapor dan Kegiatan Pembelajaran*.]

== Kebutuhan perangkat
- Peramban (browser) versi terbaru: Chrome, Firefox, Edge, atau Safari.
- Koneksi internet; komputer, tablet, atau ponsel.
- Untuk pendaftaran: berkas dalam bentuk foto atau pindaian yang jelas (kartu keluarga, akta kelahiran, pas foto 3x4, bukti pembayaran).

= Halaman Profil Lembaga

== Membuka website
Buka peramban dan ketik #laporan.mitra.situs. Sistem membawa Anda ke halaman profil yayasan. Menu pada bagian atas halaman memuat Beranda, Tentang Kami, Cabang TK/PAUD, Galeri Kegiatan, Keunggulan, dan Testimoni, serta tombol *Daftar PPDB Online* dan *Login*.

#figure(
  image("/images/web-beranda-atas.jpg", width: 100%),
  caption: [Bagian atas halaman profil: menu, ajakan pendaftaran, dan statistik lembaga.],
)

== Membaca informasi lembaga
Gulir ke bawah untuk membaca visi dan misi, daftar cabang sekolah, galeri kegiatan dan fasilitas, keunggulan lembaga, serta ulasan orang tua. Bagian *Cabang Sekolah* menampilkan unit pendidikan yang aktif dan menjadi pilihan saat pendaftaran.

#figure(
  image("/images/web-beranda-tengah.jpg", width: 100%),
  caption: [Bagian tengah halaman profil: cabang sekolah, galeri kegiatan, dan keunggulan.],
)

== Membuka dari ponsel
Tampilan menyesuaikan lebar layar, sehingga seluruh informasi dan menu dapat dibaca pada ponsel.

#align(center)[#figure(
  image("/images/web-beranda-mobile.jpg", width: 38%),
  caption: [Tampilan halaman profil pada ponsel.],
)]

= Pendaftaran Peserta Didik Baru (untuk Orang Tua)

== Membuka portal PPDB
Tekan tombol *Daftar PPDB Online* pada halaman profil. Portal menampilkan pilihan cabang sekolah tujuan dan daftar dokumen yang perlu disiapkan.

#figure(
  image("/images/web-pendaftaran.jpg", width: 100%),
  caption: [Portal PPDB Online TA 2026/2027.],
)

== Membuat akun orang tua
+ Pada kolom kanan portal PPDB, pilih tab *Buat Akun Baru*.
+ Isi nama lengkap, nomor telepon/WhatsApp, email (boleh dikosongkan), kata sandi, dan konfirmasi kata sandi.
+ Tekan tombol pembuatan akun. Bila ada kolom yang salah, sistem menampilkan pesan dan akun belum dibuat.

#tip[Gunakan kata sandi minimal 8 karakter dan jangan membagikannya. Nomor telepon dipakai pengelola untuk menghubungi Anda.]

== Masuk ke portal
Pilih tab *Masuk Portal*, isi email atau nomor telepon dan kata sandi, lalu tekan *Login*. Centang *Ingat Saya* hanya pada perangkat pribadi. Bila lupa kata sandi, gunakan tautan *Lupa Password* pada halaman login.

== Dasbor Wali Murid
Setelah masuk, orang tua melihat dasbor yang memuat *Daftar Anak Anda* dan pengumuman sekolah. Tombol *+ Tambah Anak* membuka kembali halaman pendaftaran. Menu rapor, laporan fisik, materi, dan jurnal harian anak dijelaskan pada buku panduan modul rapor.

#figure(
  image("/images/manual-w-beranda.jpg", width: 90%),
  caption: [Dasbor Wali Murid.],
)

== Memilih cabang sekolah
Pada halaman pendaftaran, pilih cabang tujuan dengan tombol *Isi Form* (contoh: TK Aboe Bakar Soemijati atau PAUD Aboe Bakar Soemijati). Halaman ini juga mengingatkan dokumen yang perlu disiapkan.

#figure(
  image("/images/manual-w-daftar.jpg", width: 90%),
  caption: [Pilihan cabang sekolah dan dokumen yang perlu disiapkan.],
)

== Mengisi formulir pendaftaran
+ Pilih *Cabang TK / PAUD*, *Tahun Ajaran*, dan *Program Kelas*.
+ *A. Data pribadi calon siswa:* nama lengkap, NIK, nomor KK, jenis kelamin, tempat dan tanggal lahir, agama, anak ke-, dan jumlah saudara.
+ *B. Alamat, koordinat, dan kontak:* cari atau geser pin lokasi rumah pada peta (atau tekan *Deteksi Lokasi Saya*), lalu isi alamat jalan, RT/RW, desa/kelurahan, kecamatan, kode pos, jenis tinggal, transportasi, jarak ke sekolah, dan nomor HP/WhatsApp.
+ *C. Data orang tua/wali:* nama, NIK, tahun lahir, pendidikan, pekerjaan, dan penghasilan bulanan ayah dan ibu.
+ *D. Fisik dan dokumen upload:* tinggi badan, berat badan, lingkar kepala; unggah pas foto anak, scan/foto KK, akta kelahiran, dan bukti pembayaran (maksimum 2 MB per berkas; JPG/PNG, KK dan akta boleh PDF).
+ Tekan *Kirim Formulir Pendaftaran Siswa*. Pihak sekolah memverifikasi pendaftaran dalam 1 x 24 jam.

#figure(
  image("/images/manual-w-formulir.jpg", width: 90%),
  caption: [Formulir pendaftaran siswa baru (bagian atas).],
)

= Portal Admin Sekolah (untuk Admin dan Kepala Sekolah)

#tip[Bab ini ditujukan bagi petugas yayasan. Gambar memakai akun demonstrasi sehingga nama dan data siswa adalah data contoh.]

== Masuk sebagai admin
Buka halaman login, masukkan email dan kata sandi akun admin. Setiap petugas memakai akun sendiri sesuai SOP. Menu samping mengelompokkan fitur menjadi *Data Akademik*, *Kegiatan & Presensi*, serta *E-Rapor & Arsip*; bagian pertama dibahas pada bab ini, dua lainnya pada buku panduan modul rapor. Pilihan tahun ajaran dan semester ada di kanan atas.

== Membaca dasbor
Dasbor menampilkan total siswa aktif, rombongan belajar, status akses pengisian rapor, antrean persetujuan materi, distribusi siswa per kelas, dan pengumuman sekolah terbaru. Kartu rapor dan materi dijelaskan pada buku panduan modul rapor.

#figure(
  image("/images/manual-a-dashboard.jpg", width: 90%),
  caption: [Dasbor admin.],
)

== Mengatur kuota dan pengaturan sekolah
Buka *Pengaturan Sekolah*. Pada *Pengaturan Pendaftaran & Kuota*, isi kuota TK Pagi, TK Siang, dan PAUD serta pilih batas pendaftaran inden (1 sampai 3 tahun ke depan), lalu tekan *Simpan Pengaturan Pendaftaran*. Halaman yang sama memuat penugasan wali kelas, pengaturan tahun ajaran dan semester, dan hak akses menu (kontrol akses rapor dibahas pada buku panduan modul rapor).

#figure(
  image("/images/manual-a-pengaturan.jpg", width: 90%),
  caption: [Pengaturan Sekolah: kuota pendaftaran dan penugasan wali kelas.],
)

== Mengelola kelas dan data siswa
Menu *Data Kelas* menampilkan rombongan belajar beserta jumlah siswa. Menu *Data Siswa* menampilkan daftar peserta didik, status kelas atau pendaftaran, dan akun orang tua. Gunakan filter kelas, tahun pendaftaran, atau kolom pencarian nama, NIK, atau NISN. Tombol *Lihat Detail* membuka profil, *Set Kelas* menempatkan siswa pada kelas, dan *+ Tambah Siswa* membuka formulir pendaftaran.

#figure(
  image("/images/manual-a-data-siswa.jpg", width: 90%),
  caption: [Data Siswa.],
)

== Memverifikasi calon siswa
+ Buka *Data Siswa*, lalu pilih filter *Calon Siswa (Menunggu Verifikasi)*.
+ Tekan *Lihat Detail* untuk memeriksa biodata, data orang tua, dan berkas (termasuk bukti pembayaran).
+ Bila lengkap, tekan *Verifikasi & Terima*, kemudian *Terima & Aktifkan Siswa*.
+ Tempatkan siswa pada kelas dengan *Set Kelas*.

#tip[Jika berkas kurang, hubungi orang tua melalui nomor HP/WhatsApp pada profil sebelum menerima calon siswa.]

#grid(columns: (1fr, 1fr), gutter: 8pt,
  figure(image("/images/manual-a-calon-siswa.jpg", width: 100%), caption: [Daftar calon siswa.]),
  figure(image("/images/manual-a-detail-calon.jpg", width: 100%), caption: [Profil calon siswa.]),
)

== Menerbitkan pengumuman
Buka *Pengumuman Sekolah*, isi judul, tanggal kegiatan, dan isi pesan, lalu tekan *Terbitkan Pengumuman*. Pengumuman tampil pada dasbor admin dan portal wali murid, dan berpindah ke arsip setelah tanggal kegiatan lewat.

#figure(
  image("/images/manual-a-pengumuman.jpg", width: 90%),
  caption: [Pengumuman Sekolah.],
)

= Keamanan dan Data Pribadi

- Data anak dan orang tua adalah data pribadi; hanya admin, kepala sekolah, dan guru yang berwenang boleh mengaksesnya.
- Jangan membagikan kata sandi; nonaktifkan akun petugas yang tidak lagi bertugas.
- Jangan mengirim berkas pendaftar melalui kanal publik atau grup pesan.
- Laporkan dugaan kebocoran data kepada pimpinan yayasan dan tim pendukung dalam 1 x 24 jam.

= Pertanyaan yang Sering Diajukan

#table(
  columns: (5cm, 1fr),
  [Pertanyaan], [Jawaban],
  [Pilihan cabang atau tahun ajaran kosong.], [Cabang atau tahun ajaran belum tersedia pada pengaturan. Hubungi pengelola yayasan.],
  [Lupa kata sandi.], [Gunakan tautan *Lupa Password* pada halaman login atau minta admin menyetel ulang akun.],
  [Dokumen gagal diunggah.], [Pastikan berkas berupa foto atau pindaian yang jelas dan ukurannya tidak terlalu besar; coba lagi dengan jaringan yang stabil.],
  [Tampilan tidak sesuai pada ponsel.], [Perbarui peramban dan muat ulang halaman; bila masih terjadi, laporkan kepada tim pendukung.],
)

= Kontak dan Dukungan

#table(
  columns: (4cm, 1fr),
  [Pihak], [Kontak],
  [Tim pendukung ABA-EDU Web], [#laporan.ketua.nama, #laporan.ketua.email, #laporan.ketua.hp],
  [Pengelola yayasan], [#laporan.mitra.nama-pendek, #laporan.mitra.alamat],
)
