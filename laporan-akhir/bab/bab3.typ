#import "../config.typ": laporan
#import "../template.typ": todo

= METODE PELAKSANAAN

Metode pelaksanaan dirancang untuk mengatasi permasalahan #laporan.mitra.nama-pendek terkait belum tersedianya website profil, sistem pendaftaran online, repositori data peserta didik, dan literasi digital pengelola. Pendekatan yang digunakan bersifat partisipatif berbasis kebutuhan (need-based participatory approach): guru, kepala sekolah, dan manajemen mitra terlibat aktif pada setiap tahap, mulai dari identifikasi kebutuhan hingga monitoring, evaluasi, dan keberlanjutan. Tahapan metode ditunjukkan pada @fig-metode.

#figure(
  image("/images/metode-pelaksanaan.png", width: 100%),
  caption: [Metode pelaksanaan pengabdian kepada masyarakat],
) <fig-metode>

Persoalan prioritas yang disepakati bersama mitra adalah (1) ketiadaan kanal informasi digital resmi, (2) pendaftaran peserta didik baru yang manual, dan (3) keterbatasan kemampuan pengelola mengoperasikan sistem digital. Ketiganya dipilih karena langsung berkaitan dengan citra dan kesiapan akreditasi lembaga, dapat diselesaikan dalam kurun program, dan menjadi prasyarat bagi digitalisasi administrasi berikutnya.

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

== Rencana dan Realisasi Kegiatan

@tab-rencana-realisasi membandingkan rencana kegiatan dengan realisasinya. Seluruh tahap dilaksanakan berurutan dengan sebagian tahap berjalan paralel sesuai kesiapan mitra.

#figure(
  table(
    columns: (0.7cm, 3cm, 4.6cm, 4.7cm, 2.6cm),
    align: left + top,
    inset: 4pt,
    table.header([*No.*], [*Tahap Kegiatan*], [*Rencana Aktivitas Utama*], [*Realisasi*], [*Waktu*]),
    [1], [Perencanaan dan konsolidasi], [Koordinasi awal, analisis kesiapan infrastruktur, penetapan admin sistem], [Koordinasi dengan pimpinan yayasan dan penetapan admin internal], [#todo[tanggal]],
    [2], [Website profil resmi], [Pengumpulan konten, desain UI/UX, pembuatan dan aktivasi website], [Website aktif pada #laporan.mitra.situs], [#todo[tanggal]],
    [3], [PPDB online terintegrasi], [Perancangan formulir, integrasi basis data, uji coba], [Modul PPDB TA 2026/2027 aktif dan diuji], [#todo[tanggal]],
    [4], [Repositori data pendaftar], [Penataan struktur data dan migrasi data awal], [Struktur data pendaftar dan dokumen persyaratan tersimpan di sistem], [#todo[tanggal]],
    [5], [Digitalisasi administrasi], [Alur input, unggah dokumen, dan verifikasi berbasis sistem], [Alur pendaftaran berbasis sistem dioperasikan oleh admin mitra], [#todo[tanggal]],
    [6], [Pelatihan dan pendampingan], [Lima sesi pelatihan, pre-test dan post-test], [Lima sesi pelatihan terlaksana, pre/post-test dianalisis dengan N-Gain], [#todo[tanggal]],
    [7], [Pendampingan implementasi dan SOP], [Supervisi, penyusunan dan pengesahan SOP, evaluasi adopsi], [SOP disahkan pimpinan yayasan], [#todo[tanggal]],
    [8], [Evaluasi dan keberlanjutan], [Evaluasi capaian, serah terima, penunjukan admin internal, laporan akhir], [Serah terima sistem dan penyusunan laporan akhir], [#todo[tanggal]],
  ),
  caption: [Rencana dan realisasi kegiatan],
) <tab-rencana-realisasi>

== Partisipasi Mitra

Keberhasilan program sangat ditentukan oleh keterlibatan aktif mitra pada setiap tahapan, sehingga pihak yayasan berperan sebagai subjek utama transformasi digital dan bukan sekadar penerima manfaat. Partisipasi mitra diwujudkan sebagai berikut.

+ *Perencanaan.* Kepala sekolah dan manajemen mengidentifikasi kebutuhan dan memetakan permasalahan; mitra menyediakan data awal, menunjuk satu orang admin internal, serta menyediakan ruang pelatihan, perangkat komputer/laptop, dan akses internet.
+ *Pengembangan dan implementasi.* Mitra memberi masukan terhadap desain website dan alur pendaftaran, mendampingi pengisian konten, mengikuti uji coba (user testing), dan menyepakati struktur data serta standar pengarsipan digital.
+ *Pelatihan dan pendampingan.* Guru dan manajemen mengikuti sesi pelatihan, berlatih langsung mengelola konten dan data pendaftar, mengikuti pre-test dan post-test, serta menerapkan sistem dalam administrasi sehari-hari.
+ *Monitoring dan evaluasi.* Mitra mengisi instrumen evaluasi, mengikuti rapat refleksi capaian, dan memberi masukan pengembangan lanjutan.
+ *Keberlanjutan.* Mitra mengadopsi SOP sebagai pedoman resmi, menetapkan admin internal, dan mengintegrasikan penggunaan ABA-EDU Web ke dalam kebijakan operasional yayasan.

Kontribusi konkret mitra berupa penyediaan data dan dokumen, fasilitas pelaksanaan kegiatan (ruangan, perangkat, jaringan internet), komitmen waktu guru dan manajemen selama rangkaian kegiatan, dan dukungan kebijakan internal bagi keberlanjutan sistem.
