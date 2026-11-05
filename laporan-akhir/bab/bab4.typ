#import "../config.typ": laporan
#import "../template.typ": todo

= KELAYAKAN PENGUSUL DAN MITRA

== Kinerja Unit P3M Polinema

Unit Pelaksana Teknis Penelitian dan Pengabdian kepada Masyarakat (P3M) Politeknik Negeri Malang setiap tahun menyelenggarakan kompetisi penelitian dan pengabdian guna mendukung pelaksanaan Tri Dharma Perguruan Tinggi. Program pengabdian dibagi menjadi dua skema, yaitu PPM DIPA Reguler dan PPM DIPA Kemitraan Masyarakat. Khalayak sasaran skema Reguler adalah masyarakat yang tidak produktif secara ekonomi dan masyarakat yang belum produktif secara ekonomi tetapi berhasrat kuat menjadi wirausahawan, dengan minimal satu mitra per kegiatan. Skema Kemitraan Masyarakat menyasar pula masyarakat produktif secara ekonomi (usaha mikro) atau lembaga nonprofit.

P3M juga rutin menyelenggarakan pelatihan penyusunan proposal dan berbagi pengalaman pengabdian melalui narasumber terpercaya. Hasilnya, jumlah usulan pengabdian terus meningkat seperti pada @fig-rekap-p3m: pada tahun 2021 terdapat 240 usulan dengan 185 proposal didanai, dan pada tahun 2022 terdapat 268 usulan dengan 204 proposal didanai.

#figure(
  image("/images/rekap-p3m.jpg", width: 70%),
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

=== Profil dan Karakteristik Mitra

#laporan.mitra.nama-pendek mengelola satuan pendidikan anak usia dini di #laporan.mitra.alamat, yaitu KB dan TK Rumah Bintang Kecil. Profil TK pada data pokok pendidikan nasional @kemendikdasmen2026 dirangkum pada @tab-profil-mitra. Kegiatan belajar berlangsung pagi hari lima hari sepekan dengan pola harian yang teratur: pembukaan, inti pembelajaran, istirahat, inti pembelajaran kedua, dan penutup pada pukul 07.30 sampai 10.30 (@fig-req-jadwal). Lokasi mitra berjarak #laporan.mitra.jarak-km km dari Polinema (Lampiran 2) sehingga pendampingan langsung dapat dilakukan intensif.

#figure(
  table(
    columns: (4.4cm, 9.4cm),
    align: left + top,
    inset: 4pt,
    table.header([*Data*], [*Keterangan*]),
    [Nama dan NPSN], [TK Rumah Bintang Kecil, NPSN 70050030],
    [Status dan penyelenggaraan], [Swasta, di bawah Yayasan Aboe Bakar Soemijati; pagi, lima hari sepekan],
    [Akreditasi], [B (SK 561/BAN-PDM/SK/2025, berlaku sampai 31 Desember 2030)],
    [Peserta didik], [62 anak: kelompok A 30 anak (19 laki-laki, 11 perempuan) dan kelompok B 32 anak (16 laki-laki, 16 perempuan)],
    [Rombongan belajar], [4 rombel (kelompok A 2 rombel, kelompok B 2 rombel)],
    [Pendidik dan tenaga kependidikan], [5 orang (1 laki-laki, 4 perempuan), termasuk 4 guru; belum ada yang bersertifikasi pendidik],
    [Ruang kelas], [2 ruang, 1 rusak ringan dan 1 rusak sedang],
    [Infrastruktur], [Listrik PLN 1.300 VA, akses internet nirkabel (wireless) bersama; luas tanah 311 m#super[2]],
    [Situs web], [Belum tercatat pada data pokok pendidikan],
  ),
  caption: [Profil TK Rumah Bintang Kecil menurut data pokok pendidikan semester 2026/2027 Gasal],
) <tab-profil-mitra>

#figure(
  image("/images/req-jadwal.jpg", width: 42%),
  caption: [Jadwal pelajaran kelompok TK-A di ruang kelas mitra],
) <fig-req-jadwal>

=== Kondisi Pencatatan Eksisting dan Dampaknya

Sebelum program (data pokok pendidikan belum mencatat situs web sekolah), pendaftaran peserta didik dilakukan secara manual dan data pendaftar tersimpan pada media yang terpisah. Kondisi ini berdampak pada empat hal.

+ *Waktu.* Mencari kembali data pendaftar atau riwayat peserta didik membutuhkan pemeriksaan arsip satu per satu.
+ *Akurasi.* Data yang disalin berulang pada beberapa dokumen rawan salah ketik dan perbedaan antardokumen.
+ *Kesiapan akreditasi.* Bukti administrasi sulit dikumpulkan dan tidak tersusun sebagai repositori.
+ *Kualitas keputusan.* Pimpinan tidak memiliki ringkasan data pendaftar, siswa, dan kuota yang dapat dilihat cepat.

=== Kebutuhan Teknologi

Berdasarkan kondisi tersebut, ditambah tersedianya jaringan internet nirkabel bersama dan jumlah guru yang terbatas (empat orang untuk empat rombel), mitra membutuhkan sistem berbasis web yang dapat diakses dari perangkat yang sudah ada tanpa instalasi khusus, sederhana bagi guru yang belum terbiasa dengan teknologi, dan menyimpan data secara terpusat dengan hak akses sesuai peran. Rincian kebutuhan fungsional dan nonfungsional dimuat pada subbab Analisis Kebutuhan (BAB III).

=== Kelayakan Penerapan

@tab-kelayakan merangkum kelayakan penerapan ABA-EDU Web pada mitra.

#figure(
  table(
    columns: (2.6cm, 11.2cm),
    align: left + top,
    inset: 4pt,
    table.header([*Aspek*], [*Dasar Kelayakan*]),
    [Teknis], [Sekolah telah memiliki listrik PLN dan akses internet nirkabel @kemendikdasmen2026. Sistem berbasis web berjalan pada platform yang sudah tersedia dan diakses melalui peramban pada laptop atau ponsel; tidak ada pengadaan perangkat lunak khusus.],
    [Operasional], [Alur pendaftaran peserta didik sudah jelas dan dipertahankan; sistem mendigitalkan alur tersebut, bukan menggantinya.],
    [Sumber daya manusia], [Tenaga yang tersedia berjumlah lima orang termasuk empat guru, sehingga antarmuka dibuat sederhana. Mitra menunjuk admin internal, dan hak akses dibagi menurut peran (guru, kepala sekolah, admin); pelatihan praktik langsung disiapkan untuk pengguna.],
    [Ekonomi], [Mitra tidak menanggung biaya pengembangan (kontribusi mitra Rp 0); biaya program bersumber dari dana DIPA Polinema.],
  ),
  caption: [Kelayakan penerapan ABA-EDU Web pada mitra],
) <tab-kelayakan>

=== Kesiapan dan Komitmen Mitra

#laporan.mitra.nama-pendek layak menjadi mitra karena memiliki kebutuhan nyata atas kanal informasi digital, pendaftaran online, dan administrasi yang tertib untuk menghadapi akreditasi. Mitra menyediakan data, ruang pelatihan, perangkat komputer, dan akses internet, menunjuk admin internal, serta menyatakan kesediaan bekerja sama melalui surat kesediaan kerja sama (Lampiran 3). Pimpinan yayasan berkomitmen mengadopsi SOP dan menjadikan sistem sebagai basis dokumentasi akreditasi. Mitra tidak diganti selama program berlangsung.
