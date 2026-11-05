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
    [1], [Observasi lapangan], [Tim pelaksana, pimpinan yayasan, dan guru di ruang kelas mitra], [Gambaran alur kerja mitra pada pendaftaran, pencatatan data peserta didik, dan penyampaian informasi kepada orang tua],
    [2], [Diskusi kelompok terarah dan peninjauan sistem], [Tim pelaksana serta tujuh guru dan pengelola KB dan TK mitra], [Masukan terhadap alur pendaftaran, tampilan halaman, dan data yang harus tercatat; kesepakatan prioritas kebutuhan],
    [3], [Telaah dokumen mitra], [Tim pelaksana], [Jadwal pelajaran kelompok TK-A sebagai gambaran pola kegiatan mitra (@fig-req-jadwal pada subbab Kelayakan Mitra)],
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

#grid(columns: (1fr, 1fr, 1fr), gutter: 6pt, align: top,
  [#figure(image("/images/req-diskusi-1.jpg", width: 100%), caption: [Memperagakan formulir pada laptop bersama guru]) <fig-req-diskusi-1>],
  [#figure(image("/images/req-diskusi-2.jpg", width: 100%), caption: [Meninjau daftar data untuk menyamakan istilah dan isian]) <fig-req-diskusi-2>],
  [#figure(image("/images/req-diskusi-3.jpg", width: 100%), caption: [Menjelaskan alur penggunaan sistem kepada guru]) <fig-req-diskusi-3>],
)

=== Kebutuhan Pengguna

Kebutuhan dirumuskan menurut kelompok pengguna yang akan memakai sistem, sebagaimana diringkas pada @tab-kebutuhan-pengguna.

#figure(
  table(
    columns: (3.2cm, 5.2cm, 5.5cm),
    align: left + top,
    inset: 4pt,
    table.header([*Pengguna*], [*Peran dalam Sistem*], [*Kebutuhan Utama*]),
    [Orang tua calon siswa dan wali murid], [Mendaftarkan anak, mengunggah dokumen persyaratan, dan memantau status pendaftaran], [Mendaftar tanpa datang berulang kali dan dari ponsel],
    [Admin yayasan], [Mengelola kuota, kelas, data siswa, pengumuman, dan pengguna, termasuk guru dan kepala sekolah sebagai pengguna terdaftar], [Data terpusat, verifikasi pendaftar, dan arsip administrasi yang tertib untuk akreditasi],
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
    [KF-06], [Admin menerbitkan pengumuman yang tampil pada dasbor dan portal orang tua], [Diskusi], [P1, P3], [Sedang],
    [KF-07], [Sistem membedakan hak akses menurut peran (wali murid, guru, admin, kepala sekolah, dan super admin)], [Diskusi], [P3, P5], [Tinggi],
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
    [KNF-02], [Antarmuka memakai istilah yang sudah dikenal guru dan mudah dipelajari tanpa latar belakang teknologi informasi], [Istilah mengikuti kebiasaan mitra; pelatihan praktik langsung],
    [KNF-03], [Data anak dan orang tua dilindungi dan hanya dapat diakses pihak berwenang], [Otentikasi, hak akses berbasis peran, dan pencadangan],
    [KNF-04], [Berkas unggahan dibatasi ukurannya agar sesuai kuota jaringan orang tua], [Batas 2 MB per berkas dengan pesan kesalahan],
    [KNF-05], [Sistem dapat dikelola mitra sendiri setelah program berakhir], [SOP, admin internal, dan buku panduan],
  ),
  caption: [Kebutuhan nonfungsional hasil penggalian kebutuhan],
) <tab-knf>

=== Prioritas dan Kesepakatan

Bersama mitra, tim menetapkan seluruh kebutuhan fungsional sebagai lingkup kegiatan karena langsung menjawab tiga persoalan prioritas di atas: halaman profil (KF-01), pendaftaran online (KF-02 sampai KF-04), pengelolaan data siswa (KF-05), pengumuman (KF-06), dan pengaturan hak akses (KF-07). Modul lain pada platform, seperti rapor, kehadiran, dan jurnal, tidak termasuk lingkup kegiatan dan menjadi tahap adopsi berikutnya setelah mitra menguasai pendaftaran dan pengelolaan data.

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
