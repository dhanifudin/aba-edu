#import "../config.typ": laporan
#import "../template.typ": todo
#import "../dummy.typ": *

= METODE PELAKSANAAN

Metode pelaksanaan dirancang untuk mengatasi permasalahan #laporan.mitra.nama-pendek terkait belum tersedianya website profil, sistem pendaftaran online, repositori data peserta didik, dan literasi digital pengelola. Pendekatan yang digunakan bersifat partisipatif berbasis kebutuhan (need-based participatory approach): guru, kepala sekolah, dan manajemen mitra terlibat aktif pada setiap tahap, mulai dari identifikasi kebutuhan hingga monitoring, evaluasi, dan keberlanjutan. Tahapan metode ditunjukkan pada @fig-metode.

#figure(
  image("/images/metode-pelaksanaan.jpg", width: 100%),
  caption: [Metode pelaksanaan pengabdian kepada masyarakat],
) <fig-metode>

Persoalan prioritas yang disepakati bersama mitra adalah (1) ketiadaan kanal informasi digital resmi, (2) pendaftaran peserta didik baru yang manual, dan (3) keterbatasan kemampuan pengelola mengoperasikan sistem digital. Ketiganya dipilih karena langsung berkaitan dengan citra dan kesiapan akreditasi lembaga, dapat diselesaikan dalam kurun program, dan menjadi prasyarat bagi digitalisasi administrasi berikutnya.

== Analisis Kebutuhan

Sebelum sistem dikonfigurasi, tim menggali kebutuhan pengguna di lokasi mitra. Penggalian dilakukan langsung di ruang kelas KB dan TK Rumah Bintang Kecil agar tim melihat sendiri cara kerja guru dan pengelola sehari-hari. Hasilnya dituangkan menjadi daftar kebutuhan fungsional dan nonfungsional yang menjadi acuan pengembangan, pengujian pada BAB V, dan penyusunan SOP.

=== Kegiatan Penggalian Kebutuhan

Penggalian kebutuhan memadukan tiga teknik: observasi, diskusi kelompok terarah, dan telaah dokumen mitra. @tab-kegiatan-kebutuhan merangkum teknik, pihak yang terlibat, dan keluaran setiap kegiatan.

#figure(
  table(
    columns: (0.7cm, 3.0cm, 5.4cm, 6.8cm),
    align: left + top,
    inset: 4pt,
    table.header([*No.*], [*Teknik*], [*Pihak yang Terlibat*], [*Keluaran*]),
    [1], [Observasi lapangan], [Tim pelaksana, pimpinan yayasan, dan guru di ruang kelas mitra], [Gambaran alur kerja harian: pendaftaran, presensi, kegiatan belajar, dan pelaporan perkembangan anak],
    [2], [Diskusi kelompok terarah dan peninjauan sistem], [Tim pelaksana serta tujuh guru dan pengelola KB dan TK mitra], [Masukan terhadap alur pendaftaran, tampilan halaman, dan data yang harus tercatat; kesepakatan prioritas kebutuhan],
    [3], [Telaah dokumen mitra], [Tim pelaksana], [Struktur buku laporan perkembangan anak (rapor) cetak dan jadwal pelajaran kelompok TK-A sebagai dasar rancangan data],
  ),
  caption: [Kegiatan penggalian kebutuhan di lokasi mitra],
) <tab-kegiatan-kebutuhan>

Peserta dari pihak mitra pada penggalian kebutuhan dan peninjauan prototipe berjumlah tujuh orang guru dan pengelola, terdiri atas tiga orang dari TK dan empat orang dari KB, termasuk pimpinan yayasan (@tab-peserta-kebutuhan).

#let peserta-kebutuhan = (
  ("Qurrotu A'yunul Chasanah", "TK"),
  ("Nissa Putri Kartika, S.Or", "TK"),
  ("Hidayana Alifta", "TK"),
  ("Vivi Kartika Sari, A.Md.", "KB"),
  ("Dewi Korina, A.Md.", "KB"),
  ("Mamik Fitria", "KB"),
  ("Sisca Ardyanti Sari", "KB"),
)

#figure(
  table(
    columns: (0.9cm, 8cm, 3cm),
    align: (center, left, center),
    inset: 4pt,
    table.header([*No.*], [*Nama*], [*Satuan*]),
    ..for (i, p) in peserta-kebutuhan.enumerate() {
      ([#(i + 1)], [#p.at(0)], [#p.at(1)])
    },
  ),
  caption: [Guru dan pengelola mitra yang mengikuti penggalian kebutuhan dan peninjauan prototipe],
) <tab-peserta-kebutuhan>

Observasi dan diskusi berlangsung di ruang kelas dengan duduk lesehan bersama guru, sebagaimana kebiasaan kegiatan belajar di sana. Tim mempraktikkan aplikasi pada laptop sambil meminta guru menyampaikan tanggapan, sehingga kebutuhan yang muncul berasal dari penggunaan nyata dan bukan dari asumsi tim (@fig-req-diskusi-1, @fig-req-diskusi-2, dan @fig-req-diskusi-3).

#figure(
  image("/images/req-diskusi-1.jpg", width: 90%),
  caption: [Diskusi dengan guru dan pengelola mitra sambil memperagakan halaman formulir pada laptop],
) <fig-req-diskusi-1>

#figure(
  image("/images/req-diskusi-2.jpg", width: 90%),
  caption: [Peninjauan daftar data pada sistem bersama guru untuk menyamakan istilah dan isian],
) <fig-req-diskusi-2>

#figure(
  image("/images/req-diskusi-3.jpg", width: 90%),
  caption: [Penjelasan anggota tim pelaksana kepada guru tentang alur penggunaan sistem],
) <fig-req-diskusi-3>

=== Dokumen Mitra sebagai Dasar Rancangan Data

Dua dokumen yang sudah dipakai mitra menjadi acuan langsung rancangan data. Dokumen pertama adalah buku laporan kemajuan belajar dan perkembangan tingkah laku peserta didik TK (@fig-req-rapor). Sampulnya memuat nama siswa, nomor induk, dan kelompok, sehingga ketiganya dijadikan identitas wajib pada data siswa dan pada keluaran rapor digital. Buku ini berbentuk cetak per anak, sehingga pencarian kembali dan pengarsipannya bergantung pada penyimpanan fisik. Kondisi ini mendasari kebutuhan rapor digital yang dapat dilihat orang tua dan disimpan sebagai arsip.

#figure(
  image("/images/req-rapor-manual.jpg", width: 45%),
  caption: [Sampul buku laporan kemajuan belajar dan perkembangan tingkah laku yang digunakan mitra (nama dan nomor induk siswa disamarkan)],
) <fig-req-rapor>

Dokumen kedua adalah jadwal pelajaran kelompok TK-A (@fig-req-jadwal). Kegiatan harian berlangsung pukul 07.30 sampai 10.30 dengan urutan pembukaan, inti pembelajaran, istirahat, inti pembelajaran kedua, dan penutup. Pada hari Kamis kegiatan memuat senam dan _movie time_, sedangkan pada hari Jumat memuat IMTAQ dan berakhir lebih awal. Pola ini menunjukkan bahwa kegiatan dicatat per hari dan per kelompok, sehingga presensi dan jurnal harian dirancang per kelas dan per tanggal, dengan topik yang dapat dibuat untuk tiap kelompok.

#figure(
  image("/images/req-jadwal.jpg", width: 75%),
  caption: [Jadwal pelajaran kelompok TK-A di ruang kelas mitra],
) <fig-req-jadwal>

=== Kebutuhan Pengguna

Kebutuhan dirumuskan menurut kelompok pengguna yang akan memakai sistem, sebagaimana diringkas pada @tab-kebutuhan-pengguna.

#figure(
  table(
    columns: (3.2cm, 5.2cm, 5.5cm),
    align: left + top,
    inset: 4pt,
    table.header([*Pengguna*], [*Peran dalam Sistem*], [*Kebutuhan Utama*]),
    [Orang tua calon siswa dan wali murid], [Mendaftarkan anak, mengunggah dokumen, memantau rapor, fisik, jurnal, dan materi], [Mendaftar tanpa datang berulang kali; melihat perkembangan anak dari ponsel],
    [Guru], [Mengisi presensi, jurnal harian, perkembangan fisik, rapor, dan mengunggah materi], [Pencatatan cepat per kelas; rapor mengikuti format yang sudah dikenal],
    [Kepala sekolah], [Menyetujui materi dan memantau ringkasan], [Kontrol mutu materi; ringkasan data siswa dan kegiatan],
    [Admin yayasan], [Mengelola kelas, siswa, kuota, pengumuman, pengguna, dan arsip], [Data terpusat, verifikasi pendaftar, dan arsip rapor tertib untuk akreditasi],
    [Pengunjung umum], [Membaca profil lembaga dan informasi PPDB], [Informasi resmi lembaga yang mudah ditemukan dan terbaca di ponsel],
  ),
  caption: [Kebutuhan menurut kelompok pengguna],
) <tab-kebutuhan-pengguna>

=== Kebutuhan Fungsional dan Nonfungsional

Kebutuhan pengguna diterjemahkan menjadi kebutuhan fungsional (KF) pada @tab-kf dan kebutuhan nonfungsional (KNF) pada @tab-knf. Setiap kebutuhan memuat sumbernya dan permasalahan mitra yang dijawab (P1 website profil, P2 pendaftaran online, P3 dokumentasi dan efisiensi administrasi, P4 literasi digital, dan P5 akreditasi, sesuai pembagian solusi pada subbab Pelaksanaan Solusi), dan dibuktikan pemenuhannya pada subbab Fitur Aplikasi BAB V.

#figure(
  table(
    columns: (1.2cm, 6.0cm, 2.6cm, 1.4cm, 1.6cm),
    align: left + top,
    inset: 4pt,
    table.header([*Kode*], [*Kebutuhan Fungsional*], [*Sumber*], [*Masalah*], [*Prioritas*]),
    [KF-01], [Sistem menampilkan halaman profil lembaga yang memuat identitas, visi, program, dan ajakan mendaftar], [Observasi dan diskusi], [P1], [Tinggi],
    [KF-02], [Orang tua membuat akun dan masuk ke portal], [Diskusi], [P2], [Tinggi],
    [KF-03], [Orang tua mengisi formulir pendaftaran dan mengunggah dokumen persyaratan], [Observasi], [P2], [Tinggi],
    [KF-04], [Admin memverifikasi calon siswa, mengaktifkannya, dan menempatkannya pada kelas], [Observasi], [P2, P3], [Tinggi],
    [KF-05], [Admin mengelola kuota pendaftaran, tahun ajaran, kelas, dan data siswa], [Diskusi], [P3], [Tinggi],
    [KF-06], [Guru mengisi presensi harian per kelas dan tanggal serta mencetak rekapnya], [Jadwal pelajaran], [P3], [Sedang],
    [KF-07], [Guru membuat jurnal harian per kelompok dan mencatat perkembangan tiap anak], [Jadwal pelajaran], [P3], [Sedang],
    [KF-08], [Guru mencatat tinggi, berat badan, dan lingkar kepala anak beserta grafiknya], [Diskusi], [P3], [Sedang],
    [KF-09], [Guru mengunggah materi dan kepala sekolah menyetujuinya sebelum tampil bagi orang tua], [Diskusi], [P3], [Sedang],
    [KF-10], [Guru mengisi rapor dengan identitas siswa, nomor induk, dan kelompok sesuai buku rapor cetak mitra, lalu admin mencetak dan mengarsipkannya], [Buku rapor cetak], [P3, P5], [Tinggi],
    [KF-11], [Admin menaikkan kelas siswa pada akhir tahun ajaran], [Observasi], [P3], [Rendah],
    [KF-12], [Admin menerbitkan pengumuman yang tampil pada dasbor dan portal orang tua], [Diskusi], [P1, P3], [Sedang],
    [KF-13], [Orang tua melihat rapor, laporan fisik, jurnal, dan materi anak dari portal], [Buku rapor cetak], [P3], [Tinggi],
    [KF-14], [Sistem membedakan hak akses menurut peran (wali murid, guru, admin, kepala sekolah, dan super admin)], [Diskusi], [P3, P5], [Tinggi],
  ),
  caption: [Kebutuhan fungsional hasil penggalian kebutuhan],
) <tab-kf>

#figure(
  table(
    columns: (1.4cm, 7.0cm, 4.4cm),
    align: left + top,
    inset: 4pt,
    table.header([*Kode*], [*Kebutuhan Nonfungsional*], [*Cara Pemenuhan*]),
    [KNF-01], [Tampilan dapat dipakai di ponsel karena sebagian besar orang tua dan guru mengakses dari ponsel], [Desain responsif],
    [KNF-02], [Antarmuka memakai istilah yang sudah dikenal guru dan mudah dipelajari tanpa latar belakang teknologi informasi], [Istilah mengikuti buku rapor mitra; pelatihan praktik langsung],
    [KNF-03], [Data anak dan orang tua dilindungi dan hanya dapat diakses pihak berwenang], [Otentikasi, hak akses berbasis peran, dan pencadangan],
    [KNF-04], [Berkas unggahan dibatasi ukurannya agar sesuai kuota jaringan orang tua], [Batas 2 MB per berkas dengan pesan kesalahan],
    [KNF-05], [Sistem dapat dikelola mitra sendiri setelah program berakhir], [SOP, admin internal, dan buku panduan],
  ),
  caption: [Kebutuhan nonfungsional hasil penggalian kebutuhan],
) <tab-knf>

=== Prioritas dan Kesepakatan

Bersama mitra, tim menetapkan kebutuhan berprioritas tinggi sebagai fondasi: halaman profil (KF-01), pendaftaran online (KF-02 sampai KF-04), pengelolaan data siswa (KF-05), rapor digital (KF-10 dan KF-13), serta pengaturan hak akses (KF-14). Presensi, jurnal, perkembangan fisik, dan persetujuan materi (KF-06 sampai KF-09) berprioritas sedang dan dikerjakan setelah fondasi stabil. Kenaikan kelas (KF-11) berprioritas rendah karena baru diperlukan pada akhir tahun ajaran. Urutan ini sejalan dengan tiga persoalan prioritas di atas dan menjadi dasar pembagian tahap pada subbab berikutnya.

== Pelaksanaan Solusi

Pelaksanaan solusi disusun berbasis pendekatan substitusi IPTEKS terpadu yang mengintegrasikan pengembangan sistem berbasis web (ABA-EDU Web) dengan peningkatan kapasitas sumber daya manusia. Kegiatan dilaksanakan dalam delapan tahap: tahap pertama menjadi fondasi seluruh solusi, dan tahap-tahap berikutnya dikelompokkan menurut permasalahan mitra yang diselesaikan.

*Tahap 1. Perencanaan Teknis dan Konsolidasi Program.* Tim berkoordinasi dengan pimpinan yayasan, menyusun timeline implementasi, dan menetapkan pengelola internal (admin sistem) dari pihak mitra. Tim menyamakan persepsi tentang tujuan transformasi digital, mengidentifikasi kesiapan infrastruktur (internet, perangkat, SDM), dan menyusun rencana integrasi website dan pendaftaran online. _Luaran:_ dokumen rencana implementasi dan komitmen bersama pelaksanaan program.

=== Solusi Permasalahan Belum Adanya Website Profil Resmi

*Tahap 2. Pengembangan Website Profil Resmi.* Tim mengumpulkan konten (visi, misi, program, dokumentasi kegiatan), merancang UI/UX yang ramah pengguna dan responsif, mengintegrasikan menu informasi, serta mengaktifkan website pada subdomain mitra. _Luaran:_ website profil resmi aktif dan dapat diakses publik.

=== Solusi Permasalahan Belum Tersedianya Sistem Pendaftaran Online Terintegrasi

*Tahap 3. Implementasi Sistem Pendaftaran Online Terintegrasi.* Tim mengonfigurasi modul PPDB online pada platform: formulir pendaftaran, akun orang tua, daftar dokumen persyaratan, dan pengelolaan cabang sekolah tujuan, serta menguji validasi input. _Luaran:_ sistem pendaftaran online aktif dengan data pendaftar tersimpan terpusat.

=== Solusi Permasalahan Dokumentasi Tidak Terpusat dan Efisiensi Administrasi Rendah

*Tahap 4. Pembuatan Repositori Data Pendaftar.* Tim menata struktur penyimpanan data peserta didik dan dokumen persyaratan, serta memigrasikan data awal dari arsip manual ke sistem sesuai kesepakatan lingkup. _Luaran:_ repositori digital terstruktur yang mendukung monitoring dan persiapan akreditasi.

*Tahap 5. Digitalisasi Proses Administrasi.* Tim menggantikan alur manual dengan alur berbasis sistem untuk input data, pengunggahan dokumen, dan verifikasi berkas pendaftaran. _Luaran:_ administrasi pendaftaran yang lebih tertib dan terdokumentasi.

=== Solusi Permasalahan Literasi Digital Guru dan Manajemen Rendah

*Tahap 6. Pelatihan dan Pendampingan Literasi Digital.* Tim menyelenggarakan lima sesi pelatihan praktik langsung (pengelolaan website profil, pendaftaran digital, dan manajemen data digital) disertai pre-test dan post-test serta pendampingan intensif pada masa awal operasional. _Luaran:_ guru dan manajemen mampu mengoperasikan sistem secara mandiri.

=== Solusi Permasalahan Hambatan dalam Proses Akreditasi PAUD

*Tahap 7. Pendampingan Implementasi untuk Kesiapan Akreditasi.* Tim melakukan supervisi teknis dan manajerial, meninjau kelengkapan data, menyusun Standar Operasional Prosedur (SOP) tata kelola digital bersama pengurus, dan mengevaluasi tingkat adopsi sistem. _Luaran:_ SOP yang disahkan dan sistem yang dimanfaatkan dalam kegiatan administrasi.

*Tahap 8. Evaluasi dan Keberlanjutan Program.* Tim mengevaluasi capaian program, menyusun strategi pemeliharaan dan pengembangan sistem, menyerahterimakan sistem kepada mitra, dan menetapkan admin internal sebagai pengelola berkelanjutan. _Luaran:_ transformasi digital yang berlanjut sebagai bagian dari tata kelola yayasan.

== Partisipasi Mitra

Keberhasilan program sangat ditentukan oleh keterlibatan aktif mitra pada setiap tahapan, sehingga pihak yayasan berperan sebagai subjek utama transformasi digital dan bukan sekadar penerima manfaat. Partisipasi mitra diwujudkan sebagai berikut.

+ *Perencanaan.* Kepala sekolah dan manajemen mengidentifikasi kebutuhan dan memetakan permasalahan; mitra menyediakan data awal, menunjuk satu orang admin internal, serta menyediakan ruang pelatihan, perangkat komputer/laptop, dan akses internet.
+ *Pengembangan dan implementasi.* Mitra memberi masukan terhadap desain website dan alur pendaftaran, mendampingi pengisian konten, mengikuti uji coba (user testing), dan menyepakati struktur data serta standar pengarsipan digital.
+ *Pelatihan dan pendampingan.* Guru dan manajemen mengikuti sesi pelatihan, berlatih langsung mengelola konten dan data pendaftar, mengikuti pre-test dan post-test, serta menerapkan sistem dalam administrasi sehari-hari.
+ *Monitoring dan evaluasi.* Mitra mengisi instrumen evaluasi, mengikuti rapat refleksi capaian, dan memberi masukan pengembangan lanjutan.
+ *Keberlanjutan.* Mitra mengadopsi SOP sebagai pedoman resmi, menetapkan admin internal, dan mengintegrasikan penggunaan ABA-EDU Web ke dalam kebijakan operasional yayasan.

Kontribusi konkret mitra berupa penyediaan data dan dokumen, fasilitas pelaksanaan kegiatan (ruangan, perangkat, jaringan internet), komitmen waktu guru dan manajemen selama rangkaian kegiatan, dan dukungan kebijakan internal bagi keberlanjutan sistem.
