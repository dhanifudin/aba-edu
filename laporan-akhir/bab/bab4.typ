#import "../config.typ": laporan
#import "../template.typ": todo

= KELAYAKAN PENGUSUL DAN MITRA

== Kinerja Unit P3M Polinema

Unit Pelaksana Teknis Penelitian dan Pengabdian kepada Masyarakat (P3M) Politeknik Negeri Malang setiap tahun menyelenggarakan kompetisi penelitian dan pengabdian guna mendukung pelaksanaan Tri Dharma Perguruan Tinggi. Program pengabdian dibagi menjadi dua skema, yaitu PPM DIPA Reguler dan PPM DIPA Kemitraan Masyarakat. Khalayak sasaran skema Reguler adalah masyarakat yang tidak produktif secara ekonomi dan masyarakat yang belum produktif secara ekonomi tetapi berhasrat kuat menjadi wirausahawan, dengan minimal satu mitra per kegiatan. Skema Kemitraan Masyarakat menyasar pula masyarakat produktif secara ekonomi (usaha mikro) atau lembaga nonprofit.

P3M juga rutin menyelenggarakan pelatihan penyusunan proposal dan berbagi pengalaman pengabdian melalui narasumber terpercaya. Hasilnya, jumlah usulan pengabdian terus meningkat seperti pada @fig-rekap-p3m: pada tahun 2021 terdapat 240 usulan dengan 185 proposal didanai, dan pada tahun 2022 terdapat 268 usulan dengan 204 proposal didanai.

#figure(
  image("/images/rekap-p3m.png", width: 70%),
  caption: [Rekapitulasi pelaksanaan PKM di P3M Polinema],
) <fig-rekap-p3m>

== Jenis Kepakaran yang Diperlukan

Transformasi digital layanan PAUD memerlukan kepakaran multidisipliner karena tidak hanya berfokus pada pengembangan sistem, tetapi juga pada penguatan tata kelola, manajemen perubahan, dan peningkatan kapasitas sumber daya manusia @wahyuni2025. Kepakaran yang dibutuhkan ditunjukkan pada @fig-kepakaran dan diuraikan berikut.

#figure(
  image("/images/kepakaran.png", width: 55%),
  caption: [Jenis kepakaran yang dibutuhkan],
) <fig-kepakaran>

+ *Rekayasa perangkat lunak dan pemrograman web:* merancang arsitektur dan modul sistem, mengintegrasikan basis data, menguji sistem, serta menjamin keamanan data.
+ *Pengolahan dan manajemen data:* merancang struktur basis data peserta didik dan dokumen, skema penyimpanan, serta mendukung laporan evaluasi dan dokumen akreditasi.
+ *Manajemen dan tata kelola pendidikan:* merancang alur tata kelola administrasi digital, menyusun SOP, dan menguatkan manajemen perubahan.
+ *Desain UI/UX:* merancang antarmuka yang ramah pengguna, menyederhanakan alur input sesuai karakteristik guru PAUD, dan meningkatkan adopsi sistem.
+ *Jaringan dan keamanan infrastruktur:* merumuskan arsitektur sistem dan mengevaluasi keamanan infrastruktur tempat sistem dijalankan.
+ *Pelatihan dan pemberdayaan masyarakat:* menyusun modul literasi digital, melaksanakan workshop dan pendampingan teknis, serta mengukur peningkatan kompetensi dengan pre-test dan post-test.

== Kepakaran Tim Pelaksana

Tim pelaksana terdiri atas enam dosen lintas bidang dan enam mahasiswa aktif Polinema, dengan pembagian tugas pada @tab-tim.

#figure(
  table(
    columns: (0.7cm, 4cm, 3.7cm, 6cm, 1.4cm),
    align: left + top,
    inset: 4pt,
    table.header([*No.*], [*Nama Pelaksana*], [*Kepakaran*], [*Tugas*], [*Waktu*]),
    [1], [*#laporan.ketua.nama* \ NIDN. #laporan.ketua.nidn], [Jurusan Teknologi Informasi. Pemrograman dan pengembangan sistem informasi berbasis web], [
      - Bertanggung jawab atas pemenuhan seluruh luaran
      - Koordinasi keseluruhan kegiatan pengabdian
      - Perancangan arsitektur dan penerapan ABA-EDU Web
      - Monitoring implementasi teknis sistem
    ], [12 jam],
    ..for (i, a) in laporan.anggota.enumerate() {
      ([#(i + 2)], [*#a.nama* \ NIDN. #a.nidn], [Jurusan Teknologi Informasi. #a.kepakaran], [#for t in a.tugas [- #t \ ]], [#a.jam])
    },
    ..for (i, m) in laporan.mahasiswa.enumerate() {
      ([#(i + 7)], [*#m.nama* \ NIM. #m.nim], [Mahasiswa #(i + 1)], [#m.tugas], [4 jam])
    },
  ),
  caption: [Kepakaran dan tugas tim pelaksana],
) <tab-tim>

== Kelayakan Mitra

#laporan.mitra.nama-pendek layak menjadi mitra kegiatan ini berdasarkan beberapa hal. Pertama, yayasan mengelola satuan pendidikan anak usia dini yang aktif menyelenggarakan layanan pendidikan dan memiliki kebutuhan nyata atas kanal informasi digital, pendaftaran online, dan administrasi yang tertib untuk menghadapi akreditasi. Kedua, lokasi mitra di Kecamatan Blimbing, Kota Malang berjarak dekat dari Polinema (rute pada Lampiran 2) sehingga pendampingan langsung dapat dilakukan secara intensif dan efisien. Ketiga, mitra menyediakan data, ruang pelatihan, perangkat komputer, akses internet, dan menunjuk admin internal, serta menyatakan kesediaan bekerja sama melalui surat kesediaan kerja sama (Lampiran 3). Keempat, pimpinan yayasan menunjukkan komitmen kebijakan untuk mengadopsi SOP dan menjadikan sistem sebagai basis dokumentasi akreditasi. Mitra tidak diganti selama program berlangsung.
