#import "../config.typ": laporan
#import "../template.typ": todo, fig-todo
#import "../dummy.typ": *

// Daftar fitur aplikasi pada 5.2: nomor berurutan lintas aktor, setiap fitur memuat aktor
// pengguna, gambar, dan uraian "Gambar 5.n menunjukkan ...".
#let fitur-n = counter("fitur")
#let fitur(judul, aktor) = {
  fitur-n.step()
  block(above: 1.1em, below: 0.5em, sticky: true)[
    #set par(first-line-indent: 0pt)
    *#context fitur-n.display(). #judul* #h(0.3em) #text(size: 10pt, style: "italic")[(aktor: #aktor)]
  ]
}

= HASIL YANG DICAPAI

Tim merealisasikan program pengabdian di #laporan.mitra.nama-pendek secara terstruktur sesuai tahapan pelaksanaan solusi pada BAB III. Platform ABA-EDU Web beroperasi di #laporan.mitra.situs sebagai website profil lembaga dan portal PPDB online, pengelola mitra dilatih mengoperasikannya, dan tata kelola pengelolaan sistem dituangkan dalam SOP. Fitur yang dibangun ditelusuri pada kebutuhan fungsional dan nonfungsional hasil analisis kebutuhan di BAB III (KF-01 sampai KF-07 dan KNF-01 sampai KNF-05). Bab ini memaparkan status teknologi tepat guna yang diterapkan, pengujian pada mitra, pelatihan dan pendampingan, tata kelola dan keberlanjutan, analisis peningkatan penerapan IPTEKS, pencapaian indikator keberhasilan, status luaran, dan realisasi anggaran.

== Status Teknologi Tepat Guna

ABA-EDU Web menggantikan brosur cetak dan pendaftaran manual dengan layanan digital: media profil lembaga dan portal pendaftaran siswa baru dalam satu platform. Sistem ini memudahkan orang tua calon siswa mengakses informasi dan pengelola yayasan mengelola data, sehingga memperkuat transparansi dan ketertiban administrasi di lembaga mitra. Bagian ini menjelaskan teknologi yang diterapkan, kemudian fitur-fitur aplikasi yang telah diterapkan di #laporan.mitra.nama-pendek, dikelompokkan menurut pengguna: pengunjung, orang tua, serta operator dan admin yayasan.

=== Spesifikasi dan Arsitektur Sistem

ABA-EDU Web dijalankan sebagai tenant (#raw("/y/ABS")) pada platform Kiddy School ERP di halokes.com, yaitu platform multi-lembaga untuk yayasan PAUD/TK yang dikembangkan dan dikelola tim. Aplikasi dibangun dengan kerangka kerja Laravel (PHP), antarmuka berbasis Bootstrap 5, dan diakses melalui jaringan Cloudflare. Antarmukanya responsif sehingga dapat digunakan pada komputer maupun ponsel orang tua. Setiap yayasan memiliki subdomain sendiri; subdomain mitra adalah #laporan.mitra.situs.

Platform menyediakan modul pendaftaran siswa baru (PPDB) dan pengelolaan multicabang, serta modul lain yang tidak termasuk lingkup kegiatan ini. Sesuai kesepakatan lingkup dengan mitra, modul yang diaktifkan dan didampingi adalah profil lembaga dan PPDB; modul lain menjadi tahap adopsi berikutnya.

Arsitektur sistem dirumuskan bersama anggota tim yang menangani jaringan dan keamanan infrastruktur, yang juga mengevaluasi keamanan infrastruktur tempat sistem dijalankan (otentikasi admin, validasi input, dan pencadangan data); hasilnya dibahas pada subbab Pengujian pada Mitra.

=== Fitur Aplikasi

Fitur dikelompokkan menurut pengguna. Tangkapan layar halaman yang memerlukan login memakai akun demonstrasi sehingga nama dan data siswa pada gambar adalah data contoh; langkah penggunaannya dijabarkan pada buku panduan modul PPDB ABA-EDU Web.

#fitur([Halaman Profil Lembaga], [pengunjung])

Halaman profil adalah tampilan awal yang dilihat orang tua dan masyarakat ketika membuka #laporan.mitra.situs. Halaman memuat identitas lembaga, menu navigasi, dan tombol ajakan mendaftar PPDB (@fig-beranda-hero).

#figure(
  image("/images/web-beranda-hero.jpg", width: 60%),
  caption: [Halaman profil: menu navigasi, identitas lembaga, dan ajakan pendaftaran],
) <fig-beranda-hero>

@fig-beranda-hero menunjukkan bagian paling atas halaman. Bilah menu memuat Beranda, Tentang Kami, Cabang TK/PAUD, Galeri Kegiatan, Keunggulan, dan Testimoni yang membawa pengunjung ke bagian terkait, serta tombol _Daftar PPDB Online_ dan _Login_. Pesan utama lembaga dan tombol pendaftaran ditempatkan pada bagian ini agar pengunjung dapat langsung mendaftar.

#fitur([Statistik, Visi, dan Misi Lembaga], [pengunjung])

Bagian ini memperkenalkan profil lembaga melalui ringkasan angka dan pernyataan visi dan misi (@fig-beranda-tentang).

#figure(
  image("/images/web-beranda-tentang.jpg", width: 60%),
  caption: [Statistik lembaga serta visi dan misi],
) <fig-beranda-tentang>

@fig-beranda-tentang menunjukkan kartu statistik lembaga (tahun pengabdian, jumlah siswa aktif, tenaga pendidik dan staf, dan jumlah cabang), diikuti satu pernyataan visi dan empat butir misi. Angka statistik dan teks profil diisi oleh admin yayasan dan menyesuaikan data yang tersimpan di sistem.

#fitur([Cabang Sekolah dan Galeri Kegiatan], [pengunjung])

Cabang sekolah yang aktif ditampilkan agar orang tua dapat memilih unit pendidikan tujuan, disertai galeri kegiatan dan fasilitas (@fig-beranda-tengah).

#figure(
  image("/images/web-beranda-tengah.jpg", width: 48%),
  caption: [Cabang sekolah dan galeri kegiatan],
) <fig-beranda-tengah>

@fig-beranda-tengah menunjukkan daftar cabang TK/PAUD yang dikelola yayasan dan galeri kegiatan berupa kartu foto dengan judul dan keterangan singkat. Cabang hanya muncul setelah ditambahkan dan diaktifkan oleh admin; daftar yang sama menjadi pilihan cabang pada formulir PPDB.

#fitur([Keunggulan Lembaga, Ulasan Orang Tua, dan Ajakan Mendaftar], [pengunjung])

Bagian akhir halaman profil merangkum alasan memilih lembaga dan menyediakan tombol menuju formulir pendaftaran (@fig-beranda-bawah).

#figure(
  image("/images/web-beranda-bawah.jpg", width: 48%),
  caption: [Keunggulan lembaga, ulasan orang tua, dan ajakan mendaftar],
) <fig-beranda-bawah>

@fig-beranda-bawah menunjukkan enam kartu keunggulan lembaga, tiga ulasan orang tua, dan tombol _Buka Formulir PPDB Online_ yang membawa pengunjung ke portal pendaftaran. Isi keunggulan dan ulasan dapat disesuaikan admin sehingga mewakili kondisi lembaga.

#fitur([Tampilan Responsif pada Ponsel], [pengunjung dan orang tua])

Orang tua umumnya mengakses website dari ponsel, sehingga tata letak menyesuaikan lebar layar (@fig-beranda-mobile).

#figure(
  image("/images/web-beranda-mobile-atas.jpg", width: 30%),
  caption: [Tampilan halaman profil pada ponsel],
) <fig-beranda-mobile>

@fig-beranda-mobile menunjukkan halaman profil pada layar ponsel: seluruh bagian ditata satu kolom, menu berubah menjadi menu ringkas, dan tombol pendaftaran tetap mudah dijangkau, sehingga informasi dapat dibaca dan pendaftaran dapat dilakukan tanpa memasang aplikasi.

#fitur([Masuk ke Sistem], [orang tua, operator, dan admin])

Semua pengguna yang memiliki akun masuk melalui halaman login yang sama (@fig-login).

#figure(
  image("/images/web-login-form.png", width: 34%),
  caption: [Halaman masuk sistem],
) <fig-login>

@fig-login menunjukkan formulir masuk yang meminta email atau nomor telepon dan kata sandi, dilengkapi pilihan _Ingat Saya_, tautan _Lupa Password_, dan tautan pendaftaran bagi pengguna baru. Akun operator dan admin dibuat oleh admin yayasan, sedangkan orang tua membuat akun sendiri pada portal PPDB. Setelah berhasil, sistem membawa pengguna ke halaman sesuai perannya.

#fitur([Portal PPDB Online], [orang tua])

Portal PPDB adalah pintu pendaftaran peserta didik baru TA 2026/2027 (@fig-ppdb).

#figure(
  image("/images/web-pendaftaran.jpg", width: 64%),
  caption: [Halaman PPDB Online TA 2026/2027: pilihan cabang, dokumen persyaratan, dan akun orang tua],
) <fig-ppdb>

@fig-ppdb menunjukkan dua kolom. Kolom kiri memuat pilihan cabang sekolah tujuan dan daftar dokumen yang perlu disiapkan: kartu keluarga dan akta kelahiran, pas foto anak ukuran 3x4, serta bukti pembayaran pendaftaran. Kolom kanan memuat tab _Buat Akun Baru_ dan _Masuk Portal_ bagi orang tua. Orang tua memilih cabang, kemudian melanjutkan ke pengisian formulir.

#fitur([Pembuatan Akun Orang Tua], [orang tua])

Orang tua membuat akun sebelum mendaftarkan anak agar data pendaftaran tersimpan dan dapat dipantau. Formulir pembuatan akun meminta nama lengkap, nomor telepon atau WhatsApp, email (opsional), kata sandi, dan konfirmasi kata sandi. Sistem menolak isian wajib yang kosong atau konfirmasi kata sandi yang berbeda dan menampilkan pesan kesalahan; akun yang valid tersimpan pada basis data dan dapat langsung dipakai masuk (skenario 6 sampai 8 pada @tab-blackbox).

#fitur([Pengisian Formulir dan Unggah Dokumen], [orang tua])

Orang tua memilih cabang (TK atau PAUD) pada halaman pendaftaran (@fig-w-daftar), kemudian memilih tahun ajaran dan program kelas, dan mengisi formulir pendaftaran dalam empat bagian: data pribadi calon siswa, alamat dengan penentuan lokasi rumah pada peta, data ayah dan ibu, serta data fisik anak (tinggi badan, berat badan, lingkar kepala) (@fig-w-formulir). Orang tua mengunggah pas foto anak, kartu keluarga, akta kelahiran, dan bukti pembayaran pendaftaran (maksimum 2 MB per berkas). Setelah dikirim, data dan berkas tersimpan pada basis data terpusat sehingga tidak lagi tersebar pada media fisik (skenario 11 pada @tab-blackbox). Fitur ini memenuhi KF-03 dan KNF-04.

#grid(columns: (1fr, 1fr), gutter: 8pt, align: top,
  [#figure(image("/images/manual-w-daftar.jpg", width: 100%), caption: [Pilihan cabang sekolah dan dokumen yang perlu disiapkan]) <fig-w-daftar>],
  [#figure(image("/images/manual-w-formulir.jpg", width: 100%), caption: [Formulir pendaftaran siswa baru (bagian atas)]) <fig-w-formulir>],
)

#fitur([Dasbor Admin Yayasan], [admin])

Dasbor admin (@fig-a-dashboard) menampilkan jumlah siswa aktif, jumlah rombongan belajar, distribusi siswa per kelas, dan pengumuman sekolah terbaru. Fitur yang digunakan pada kegiatan ini berada pada kelompok menu Data Akademik (Pengaturan Sekolah, Data Kelas, Data Siswa) dan Pengumuman; menu lain pada platform tidak termasuk lingkup kegiatan. Pemilih tahun ajaran dan semester berada di kanan atas.

#figure(
  image("/images/manual-a-dashboard.jpg", width: 60%),
  caption: [Dasbor admin yayasan],
) <fig-a-dashboard>

#fitur([Pengaturan Pendaftaran dan Kuota], [admin])

Pada menu Pengaturan Sekolah (@fig-a-pengaturan), admin menetapkan kuota siswa per kelompok (TK Pagi, TK Siang, PAUD) dan batas pendaftaran inden hingga tiga tahun ajaran ke depan. Admin juga mengatur tahun ajaran dan semester aktif, penugasan wali kelas, dan hak akses menu (KF-05).

#figure(
  image("/images/manual-a-pengaturan.jpg", width: 52%),
  caption: [Pengaturan Sekolah: kuota pendaftaran dan penugasan wali kelas],
) <fig-a-pengaturan>

#fitur([Manajemen Kelas dan Data Siswa], [admin])

Menu Data Kelas (@fig-a-kelas) menampilkan rombongan belajar beserta tingkat dan jumlah siswa terdaftar, dan admin dapat menambah, mengubah, atau menghapus kelas. Menu Data Siswa (@fig-a-data-siswa) menampilkan daftar peserta didik, status kelas atau pendaftaran, dan akun orang tua, dengan pencarian berdasarkan nama, NIK, atau NISN. Tombol Lihat Detail membuka profil, Set Kelas menempatkan siswa pada kelas, dan Tambah Siswa membuka formulir pendaftaran.

#grid(columns: (1fr, 1fr), gutter: 8pt, align: top,
  [#figure(image("/images/manual-a-kelas.jpg", width: 100%), caption: [Manajemen kelas dan rombongan belajar]) <fig-a-kelas>],
  [#figure(image("/images/manual-a-data-siswa.jpg", width: 100%), caption: [Data siswa]) <fig-a-data-siswa>],
)

#fitur([Verifikasi Calon Siswa], [admin])

Pada menu Data Siswa, admin menyaring daftar dengan pilihan _Calon Siswa (Menunggu Verifikasi)_ (@fig-a-calon-siswa) dan dapat membuka profil lengkap setiap calon, termasuk data orang tua dan bukti pembayaran (@fig-a-detail-calon). Calon yang berkasnya lengkap diverifikasi dengan tombol _Verifikasi & Terima_ lalu diaktifkan sebagai siswa dan ditempatkan pada kelas (skenario 12 pada @tab-blackbox). Bila berkas kurang, admin menghubungi orang tua melalui nomor HP atau WhatsApp pada profil sebelum menerima calon (KF-04).

#grid(columns: (1fr, 1fr), gutter: 8pt,
  [#figure(image("/images/manual-a-calon-siswa.jpg", width: 100%), caption: [Daftar calon siswa]) <fig-a-calon-siswa>],
  [#figure(image("/images/manual-a-detail-calon.jpg", width: 100%), caption: [Profil calon siswa]) <fig-a-detail-calon>],
)

#fitur([Pengumuman dan Pengelolaan Konten], [admin])

Admin menerbitkan pengumuman sekolah (judul, tanggal kegiatan, dan isi pesan) melalui menu Pengumuman Sekolah (@fig-a-pengumuman). Pengumuman tampil pada dasbor admin dan portal wali murid dan berpindah ke arsip setelah tanggal kegiatan lewat (KF-06). Pembaruan konten halaman profil lembaga dilakukan melalui pendampingan tim bersama pengelola yayasan.

#figure(
  image("/images/manual-a-pengumuman.jpg", width: 52%),
  caption: [Pengumuman sekolah],
) <fig-a-pengumuman>

#fitur([Pengguna dan Hak Akses Berbasis Peran], [admin])

Sistem membedakan peran Wali Murid, Guru, Admin, Kepala Sekolah, dan Super Admin yayasan; tiap peran melihat menu yang sesuai tugasnya, dan admin mengatur hak akses menu pada Pengaturan Sekolah (KF-07). Pembagian peran ini dijabarkan lebih lanjut dalam SOP pengelolaan website dan PPDB.

=== Alur Pendaftaran Online dan Struktur Data Pendaftar

Seluruh fitur PPDB bekerja sebagai satu alur dari orang tua sampai admin, dengan data tersimpan pada repositori terpusat. Alur lengkapnya sebagai berikut.

+ Orang tua membuka halaman PPDB Online dan memilih tab _Buat Akun Baru_ (KF-02).
+ Orang tua mengisi nama, nomor telepon atau WhatsApp, email (opsional), dan kata sandi, kemudian masuk ke portal.
+ Orang tua memilih cabang sekolah tujuan (TK atau PAUD), tahun ajaran, dan program kelas (KF-03).
+ Orang tua mengisi formulir empat bagian dan mengunggah dokumen persyaratan (maksimum 2 MB per berkas; KNF-04).
+ Orang tua mengirim formulir; data tersimpan pada basis data dan calon siswa muncul pada daftar _Menunggu Verifikasi_.
+ Admin membuka profil calon, memeriksa biodata, data orang tua, dan berkas, termasuk bukti pembayaran; sekolah menargetkan verifikasi dalam 1 x 24 jam (KF-04).
+ Bila berkas lengkap, admin menerima dan mengaktifkan calon sebagai siswa, kemudian menempatkannya pada kelas.
+ Bila berkas kurang, admin menghubungi orang tua melalui nomor HP atau WhatsApp pada profil sebelum menerima calon.

@tab-data-pendaftar merangkum struktur data yang tersimpan untuk setiap calon siswa sehingga data pendaftar tidak lagi tersebar pada media fisik.

#figure(
  table(
    columns: (3.6cm, 10.2cm),
    align: left + top,
    inset: 4pt,
    table.header([*Bagian Formulir*], [*Data yang Dicatat*]),
    [Pilihan pendaftaran], [Cabang TK atau PAUD, tahun ajaran, dan program kelas],
    [A. Data pribadi calon siswa], [Nama lengkap, NIK, nomor KK, jenis kelamin, tempat dan tanggal lahir, agama, anak ke-, dan jumlah saudara],
    [B. Alamat, koordinat, dan kontak], [Lokasi rumah pada peta, alamat jalan, RT/RW, desa atau kelurahan, kecamatan, kode pos, jenis tinggal, transportasi, jarak ke sekolah, dan nomor HP atau WhatsApp],
    [C. Data orang tua atau wali], [Nama, NIK, tahun lahir, pendidikan, pekerjaan, dan penghasilan bulanan ayah dan ibu],
    [D. Fisik dan dokumen], [Tinggi badan, berat badan, lingkar kepala; unggahan pas foto anak, kartu keluarga, akta kelahiran, dan bukti pembayaran],
  ),
  caption: [Struktur data pendaftar pada repositori terpusat],
) <tab-data-pendaftar>

=== Kesesuaian dengan Spesifikasi pada Surat Kesediaan Mitra

Surat kesediaan kerja sama mitra (9 Februari 2026) menyepakati delapan kemampuan utama ABA-EDU Web. @tab-kesesuaian membandingkan spesifikasi tersebut dengan realisasi pada sistem yang dioperasikan.

#figure(
  table(
    columns: (0.7cm, 4.2cm, 6.1cm, 2.2cm, 2.7cm),
    align: left + top,
    inset: 4pt,
    table.header([*No.*], [*Spesifikasi yang Disepakati*], [*Uraian*], [*Status*], [*Bukti*]),
    [1], [Website profil lembaga], [Informasi resmi yayasan: profil, visi dan misi, program pendidikan, galeri kegiatan], [Tercapai], [@fig-beranda-hero, @fig-beranda-tentang, @fig-beranda-tengah, @fig-beranda-bawah],
    [2], [Modul PPDB online], [Formulir pendaftaran berbasis web, unggah dokumen persyaratan, penyimpanan data calon siswa terpusat, rekap otomatis data pendaftar], [#dummy[Tercapai]], [@fig-ppdb],
    [3], [Manajemen data pendaftar], [Daftar calon siswa, profil lengkap beserta berkas, dan verifikasi oleh admin; rekap data pendaftar pada menu Data Siswa], [Tercapai], [Uraian fitur 5.1.2 dan @tab-blackbox],
    [4], [Manajemen konten website (CMS sederhana)], [Admin menerbitkan pengumuman sekolah tanpa keterampilan pemrograman; konten halaman profil diperbarui melalui pendampingan tim], [Sebagian], [Uraian fitur 5.1.2],
    [5], [Desain responsif], [Tampilan adaptif untuk desktop, tablet, dan ponsel], [Tercapai], [@fig-beranda-mobile],
    [6], [Manajemen pengguna berbasis peran], [Peran Wali Murid, Guru, Admin, Kepala Sekolah, dan Super Admin dengan hak akses menu], [Tercapai], [Uraian fitur 5.1.2],
    [7], [Keamanan data dasar], [Otentikasi admin, validasi input, dan pencadangan data], [#dummy[Tercapai]], [@tab-keamanan],
    [8], [Dasbor ringkasan statistik], [Kartu ringkasan siswa aktif, rombongan belajar, dan distribusi siswa per kelas], [Tercapai], [Uraian fitur 5.1.2],
  ),
  caption: [Kesesuaian realisasi dengan spesifikasi pada surat kesediaan mitra],
) <tab-kesesuaian>

== Pengujian pada Mitra

Pengujian dilakukan pada sistem yang berjalan di lingkungan mitra, melibatkan pengelola yayasan sebagai pengguna, dan mencakup fungsionalitas, kemudahan penggunaan, keamanan infrastruktur, dan kepuasan mitra.

=== Pengujian Black-box

*Pengujian black-box.* Tim menguji fungsionalitas aplikasi dari sisi pengguna tanpa melihat kode program, difokuskan pada navigasi, pembuatan akun, validasi formulir, dan proses masuk. @tab-blackbox memuat skenario dan hasil pengujian: #dummy[#n-valid dari #n-skenario skenario dinyatakan valid].

#figure(
  table(
    columns: (0.7cm, 5cm, 6cm, 2.5cm),
    align: left + top,
    inset: 4pt,
    table.header([*No.*], [*Skenario Pengujian*], [*Hasil yang Diharapkan*], [*Hasil Uji*]),
    [1], [Membuka halaman profil lembaga], [Halaman tampil lengkap beserta menu navigasi], [#dummy[Valid]],
    [2], [Memilih menu pada bilah navigasi], [Halaman berpindah ke bagian yang dipilih], [#dummy[Valid]],
    [3], [Membuka halaman profil pada ponsel], [Tata letak menyesuaikan lebar layar], [#dummy[Valid]],
    [4], [Membuka halaman PPDB dari tombol "Daftar PPDB"], [Halaman pendaftaran tampil], [#dummy[Valid]],
    [5], [Memilih cabang sekolah tujuan], [Formulir pendaftaran cabang terpilih tampil], [#dummy[Valid]],
    [6], [Membuat akun orang tua dengan data lengkap dan valid], [Akun terbentuk dan orang tua dapat masuk], [#dummy[Valid]],
    [7], [Membuat akun dengan kolom wajib kosong], [Sistem menampilkan pesan validasi dan menolak], [#dummy[Valid]],
    [8], [Membuat akun dengan konfirmasi kata sandi berbeda], [Sistem menolak dan menampilkan pesan kesalahan], [#dummy[Valid]],
    [9], [Masuk dengan email/telepon dan kata sandi benar], [Orang tua masuk ke portal], [#dummy[Valid]],
    [10], [Masuk dengan kata sandi salah], [Sistem menolak masuk dan menampilkan pesan], [#dummy[Valid]],
    [11], [Mengisi formulir pendaftaran dan mengunggah dokumen persyaratan], [Data dan dokumen tersimpan], [#dummy[Valid]],
    [12], [Admin memverifikasi pendaftar], [Status pendaftar berubah dan data tersimpan], [#dummy[Valid]],
  ),
  caption: [Skenario dan hasil pengujian black-box],
) <tab-blackbox>

=== Uji Kemudahan Penggunaan

Tim juga menguji kemudahan penggunaan antarmuka oleh pengelola yayasan melalui pengerjaan tugas-tugas utama (mengubah konten profil, memverifikasi pendaftar) dan umpan balik langsung. Hasil: #dummy[pengelola menyelesaikan seluruh tugas utama tanpa bantuan tim; dua catatan, yaitu istilah tombol verifikasi dan urutan menu konten, diperbaiki sebelum pelatihan sesi kelima].

=== Evaluasi Keamanan Infrastruktur

Anggota tim yang menangani jaringan dan keamanan infrastruktur mengevaluasi lingkungan tempat sistem dijalankan, mencakup otentikasi admin, validasi input, perlindungan lalu lintas melalui jaringan Cloudflare, dan pencadangan data. @tab-keamanan merangkum hasilnya.

#figure(
  table(
    columns: (0.7cm, 5cm, 6cm, 2.5cm),
    align: left + top,
    inset: 4pt,
    table.header([*No.*], [*Aspek*], [*Pemeriksaan*], [*Hasil*]),
    [1], [Otentikasi admin dan petugas], [Kata sandi diperlukan; akun dibuat per petugas; pembatasan akses menurut peran], [#dummy[Sesuai]],
    [2], [Validasi input], [Isian wajib, format, dan konfirmasi kata sandi divalidasi sebelum data disimpan], [#dummy[Sesuai]],
    [3], [Lalu lintas dan akses publik], [Akses melalui HTTPS dan jaringan Cloudflare], [#dummy[Sesuai]],
    [4], [Pencadangan data], [Pencadangan basis data berkala pada sisi platform], [#dummy[Sesuai]],
  ),
  caption: [Hasil evaluasi keamanan infrastruktur],
) <tab-keamanan>

=== Kepuasan Mitra

Sesuai ketentuan panduan, kepuasan mitra diukur dengan kuesioner kepuasan mitra yang diisi pimpinan dan pengelola yayasan pada akhir kegiatan (skala 1--5; instrumen pada dokumen terpisah). Hasilnya disajikan pada @tab-kepuasan.

#figure(
  table(
    columns: (0.9cm, 8cm, 3.3cm, 3.3cm),
    align: (center, left, center, center),
    inset: 4pt,
    table.header([*No.*], [*Aspek yang Dinilai*], [*Rata-rata (1--5)*], [*Kategori*]),
    ..for (i, a) in aspek-kepuasan.enumerate() {
      ([#(i + 1)], [#a.at(0)], [#dummy[#fmt(rata-aspek(a))]], [#dummy[#kat-puas(rata-aspek(a))]])
    },
    table.cell(colspan: 2)[*Rata-rata keseluruhan* (n = #dummy[#n-peserta])], [#dummy[#s-puas]], [#dummy[#kat-puas(rata-puas)]],
  ),
  caption: [Hasil kuesioner kepuasan mitra],
) <tab-kepuasan>

== Pelatihan dan Pendampingan Kapasitas Pengelola

Tim menyelenggarakan transfer pengetahuan berbasis praktik langsung agar pengelola mampu mengelola sistem secara mandiri. Strategi pelatihan memadukan pemaparan konsep, demonstrasi fitur, dan bimbingan teknis intensif di lokasi mitra, dengan peserta tim pelaksana, mahasiswa, dan manajemen mitra.

=== Pelaksanaan Pelatihan

Pelatihan terdiri atas lima sesi seperti pada @tab-pelatihan, yang dilengkapi buku petunjuk penggunaan dan pendampingan lanjutan.

#figure(
  table(
    columns: (1.4cm, 6cm, 3cm, 4.6cm),
    align: left + top,
    inset: 4pt,
    table.header([*Sesi*], [*Materi*], [*Waktu*], [*Peserta dari mitra*]),
    ..for (i, t) in (
      "Tata kelola dan pengelolaan website profil (konten, galeri)",
      "Lanjutan pengelolaan website profil",
      "Tata kelola dan pengelolaan pendaftaran",
      "Fitur pendaftaran digital (akun, formulir, dokumen)",
      "Manajemen data digital dan verifikasi pendaftar",
    ).enumerate() {
      ([#(i + 1)], [#t], [#dummy[#tgl.sesi.at(i)]], [#dummy[#n-peserta orang (pimpinan, operator, empat guru)]])
    },
  ),
  caption: [Pelaksanaan lima sesi pelatihan dan pendampingan],
) <tab-pelatihan>

=== Analisis Peningkatan Literasi Digital Pengelola

Efektivitas pelatihan diukur dengan pre-test sebelum sesi pertama dan post-test setelah sesi terakhir pada pengelola yang sama. Peningkatan dianalisis dengan N-Gain (normalized gain) @hake1999:

$ g = (S_"post" - S_"pre") / (S_"maks" - S_"pre") $

dengan kategori $g >= 0,7$ tinggi, $0,3 <= g < 0,7$ sedang, dan $g < 0,3$ rendah. Target kegiatan adalah peningkatan skor rata-rata minimal 30%. Hasil pengukuran disajikan pada @tab-ngain.

#figure(
  table(
    columns: (0.9cm, 4.4cm, 2.3cm, 2.3cm, 2.3cm, 2.3cm),
    align: (center, left, center, center, center, center),
    inset: 4pt,
    table.header([*No.*], [*Peserta*], [*Pre-test*], [*Post-test*], [*N-Gain*], [*Kategori*]),
    ..for (i, p) in peserta.enumerate() {
      ([#(i + 1)], [#p.kode (#p.peran)], [#dummy[#p.pre]], [#dummy[#p.post]], [#dummy[#fmt(ng(p))]], [#dummy[#kat(ng(p))]])
    },
    table.cell(colspan: 2)[*Rata-rata*], [#dummy[#s-pre]], [#dummy[#s-post]], [#dummy[#s-ng]], [#dummy[#kat-ng]],
  ),
  caption: [Hasil pre-test, post-test, dan N-Gain literasi digital pengelola],
) <tab-ngain>

Skor rata-rata pengelola naik dari #dummy[#s-pre] menjadi #dummy[#s-post] atau #dummy[#s-naik], melampaui target kenaikan minimal 30%. N-Gain rata-rata sebesar #dummy[#s-ng] (kategori #dummy[#lower(kat-ng)]), dengan #dummy[#n-tinggi] peserta berkategori tinggi, #dummy[#n-sedang] sedang, dan #dummy[#n-rendah] rendah.

== Tata Kelola, Serah Terima, dan Keberlanjutan <sub-sop>

=== Penerapan pada Lingkungan Produksi

Sistem diaktifkan pada lingkungan produksi pada alamat #laporan.mitra.situs. Tim menyerahkan akses admin kepada pengelola mitra dan memastikan seluruh fitur diuji ulang setelah aktivasi sebelum dibuka bagi publik. Karena sistem berjalan sebagai tenant pada platform tim, mitra tidak perlu menyediakan server, tetapi alamat yang digunakan berupa subdomain platform. Tim menyarankan yayasan mempertimbangkan domain milik sendiri pada tahap lanjutan agar identitas digital lembaga semakin kuat (BAB VI). Tanggal aktivasi: #dummy[#tgl.website].


=== SOP, Serah Terima, dan Keberlanjutan

*SOP.* Tim bersama pengurus menyusun Standar Operasional Prosedur pengelolaan website dan PPDB yang mengatur hak akses admin, jadwal pembaruan profil, dan alur verifikasi berkas pendaftaran. SOP ditandatangani pimpinan yayasan pada #dummy[#tgl.sop] dan salinannya diserahkan kepada pengelola sebagai pedoman kerja resmi (bukti pada Lampiran 6).

*Serah terima.* Tim menyerahterimakan ABA-EDU Web kepada pengelola yayasan melalui Berita Acara Serah Terima (BAST) pada #dummy[#tgl.bast], mencakup hak akses akun admin dan dokumen petunjuk penggunaan (bukti pada Lampiran 6). Karena sistem berjalan sebagai tenant platform, sisi server dan pemeliharaan platform tetap berada pada tim sebagai penyedia layanan.

*Keberlanjutan.* Yayasan menunjuk #dummy[#n-admin-internal orang (operator pendaftaran dan staf administrasi)] sebagai admin internal yang terlatih mengelola konten dan data pendaftar. Pencadangan data dilakukan berkala pada sisi platform #dummy[(pencadangan otomatis harian dan ekspor rekap pada akhir setiap periode PPDB)]. Tim tetap menyediakan dukungan teknis setelah kegiatan berakhir #dummy[berupa konsultasi teknis dan pemeliharaan platform selama #masa-dukungan].

*Pemeliharaan manfaat.* Manfaat sistem bertahan bila data diperbarui secara konsisten. Pengelola perlu memperbarui konten profil dan membuka periode PPDB secara teratur, memeriksa kelengkapan berkas calon siswa sesuai SOP, serta melatih lebih dari satu orang agar pengetahuan tidak bergantung pada satu operator. Buku panduan modul PPDB disediakan sebagai rujukan ketika terjadi pergantian petugas, dan evaluasi berkala bersama tim dilakukan pada setiap awal tahun ajaran.

== Analisis Peningkatan Penerapan IPTEKS pada Mitra

Luaran wajib peningkatan level keberdayaan mitra berupa peningkatan penerapan iptek dianalisis secara kuantitatif sesuai format Lampiran 70 panduan, minimal dengan dua indikator, pada @tab-keberdayaan.

#figure(
  table(
    columns: (3.3cm, 5.7cm, 2.7cm, 2.7cm),
    align: left + top,
    inset: 4pt,
    table.header([*Luaran*], [*Indikator*], [*Sebelum*], [*Sesudah*]),
    table.cell(rowspan: 2)[Peningkatan daya saing mitra], [a. Jam layanan informasi dan pendaftaran bagi calon siswa per hari], [3 jam (jam belajar 07.30--10.30)], [24 jam (website dan PPDB online)],
    [b. Jumlah cabang (TK dan PAUD) yang dapat dilihat dan dipilih secara online], [0], [2],
    table.cell(rowspan: 2)[Peningkatan penerapan iptek pada mitra], [a. Jumlah kanal layanan digital resmi lembaga (website profil dan PPDB online)], [0], [2],
    [b. Jumlah modul sistem yang aktif dan digunakan pengelola (profil lembaga dan PPDB)], [0], [2],
    table.cell(rowspan: 2)[Perbaikan tata nilai masyarakat], [a. Jumlah proses pendaftaran yang dilakukan secara digital (pendaftaran dan unggah berkas, verifikasi, aktivasi siswa, penempatan kelas)], [0], [4],
    [b. Jumlah akun individual berbasis peran sesuai SOP], [0], [#dummy[#n-akun]],
    table.cell(rowspan: 2)[Peningkatan ketrampilan masyarakat], [a. Skor rata-rata kompetensi pengelola mengoperasikan sistem (pre/post-test, skala 0--100)], [#dummy[#s-pre]], [#dummy[#s-post]],
    [b. Jumlah pengelola yang mampu mengoperasikan sistem secara mandiri], [0], [#dummy[#n-peserta]],
  ),
  caption: [Analisis peningkatan level keberdayaan mitra secara kuantitatif],
) <tab-keberdayaan>

*Keterangan/analisis.* Sebelum kegiatan, #laporan.mitra.nama-pendek tidak memiliki kanal layanan digital resmi dan pendaftaran dilakukan manual. Setelah kegiatan, lembaga memiliki dua kanal layanan digital (website profil dan PPDB online) yang melayani calon siswa sepanjang hari pada dua cabang, empat proses pendaftaran dilakukan secara digital, dan pengelolanya mampu mengoperasikannya #dummy[(skor rata-rata naik dari #s-pre menjadi #s-post, N-Gain #s-ng kategori #lower(kat-ng), dan #n-peserta pengelola mampu bekerja mandiri)]. Lembar analisis ini ditandatangani pelaksana dan mitra dan dilampirkan pada Lampiran 9.

== Dampak Implementasi terhadap Proses Bisnis Mitra

Penerapan ABA-EDU Web mengubah cara mitra mengelola informasi, terutama pada pendaftaran dan pengelolaan data peserta didik. @tab-dampak membandingkan kondisi sebelum dan sesudah program.

#figure(
  table(
    columns: (3.2cm, 5.3cm, 5.3cm),
    align: left + top,
    inset: 4pt,
    table.header([*Proses*], [*Sebelum Program*], [*Sesudah Program*]),
    [Informasi lembaga], [Tidak ada kanal digital resmi], [Website profil publik pada #laporan.mitra.situs],
    [Pendaftaran peserta didik], [Manual; data tersebar pada media terpisah], [Online; formulir dan berkas tersimpan pada basis data terpusat, diverifikasi admin],
    [Hak akses dan tata kelola], [Tidak ada pembagian peran], [Peran wali murid, guru, kepala sekolah, dan admin dengan SOP],
  ),
  caption: [Perubahan proses bisnis mitra sebelum dan sesudah program],
) <tab-dampak>

Pada pendaftaran, orang tua tidak lagi bergantung pada pengisian formulir kertas karena data dan berkas dikirim sekali dan langsung dapat diperiksa admin (@tab-blackbox). Pada pengelolaan data, admin memverifikasi calon siswa, menempatkannya pada kelas, dan melihat rekap pada satu sistem tanpa menyalin data berulang. Pada tata kelola, SOP dan pembagian peran membuat tanggung jawab pengelolaan data jelas.

Penerimaan pengguna ditunjukkan oleh hasil kuesioner kepuasan mitra (@tab-kepuasan) dan peningkatan kompetensi pengelola pada pelatihan (@tab-keberdayaan). Jumlah responden dan peserta masih terbatas, sehingga hasilnya dibaca sebagai indikasi awal; pengukuran usability baku seperti System Usability Scale dapat dilakukan pada periode PPDB berikutnya.

== Pencapaian Indikator Keberhasilan

Setelah seluruh fitur diterapkan, diuji, dan dipakai pengelola, capaian program dibandingkan dengan indikator keberhasilan pada BAB II. @tab-capaian memuat realisasi setiap indikator beserta statusnya.

#figure(
  table(
    columns: (0.7cm, 3.2cm, 4.3cm, 6.3cm, 1.5cm),
    align: left + top,
    inset: 4pt,
    table.header([*No.*], [*Permasalahan Mitra*], [*Indikator Keberhasilan*], [*Realisasi*], [*Status*]),
    [1], [Belum ada website profil resmi], [Website aktif dan memuat informasi lembaga], [Website aktif di #laporan.mitra.situs memuat profil, visi, misi, galeri, keunggulan lembaga (@fig-beranda-hero, @fig-beranda-tengah)], [Tercapai],
    [2], [Belum ada PPDB online terintegrasi], [100% data pendaftar tersimpan terstruktur], [Modul PPDB Online TA 2026/2027 aktif dengan akun orang tua, daftar dokumen persyaratan, dan pemilihan cabang tujuan (@fig-ppdb). Jumlah pendaftar uji yang tersimpan: #dummy[#n-pendaftar-uji]], [#dummy[Tercapai]],
    [3], [Dokumentasi tidak terpusat], [Dokumen persyaratan pendaftar tersimpan dan mudah diakses], [Data dan dokumen pendaftar tersimpan di basis data terpusat (@tab-blackbox)], [#dummy[Tercapai]],
    [4], [Efisiensi administrasi rendah], [Seluruh tahap pendaftaran berjalan melalui sistem], [Alur pembuatan akun, pengisian data, pengunggahan dokumen, dan verifikasi berjalan pada sistem (@tab-blackbox)], [#dummy[Tercapai]],
    [5], [Literasi digital rendah], [Skor post-test naik ≥30% (N-Gain)], [Lima sesi pelatihan; skor rata-rata pre-test #dummy[#s-pre], post-test #dummy[#s-post], N-Gain #dummy[#s-ng] (@tab-ngain)], [#dummy[Tercapai]],
    [6], [Belum ada pedoman tata kelola], [SOP tersedia dan digunakan], [SOP pengelolaan website dan PPDB disahkan pimpinan yayasan pada #dummy[#tgl.sop] (@sub-sop)], [#dummy[Tercapai]],
    [7], [Belum ada evaluasi berbasis data], [Minimal satu laporan evaluasi internal], [Laporan evaluasi akhir program disusun dan dibahas bersama mitra pada #dummy[#tgl.refleksi]], [#dummy[Tercapai]],
  ),
  caption: [Realisasi capaian terhadap indikator keberhasilan],
) <tab-capaian>

== Status Luaran

Status luaran wajib dan tambahan pada akhir kegiatan ditunjukkan pada @tab-realisasi-luaran, dengan bukti pada Lampiran 6 dan Lampiran 9.

#figure(
  table(
    columns: (0.9cm, 1fr, 3.2cm, 3cm),
    align: (center, left, left, left),
    inset: 4pt,
    table.header([*No.*], [*Jenis Luaran*], [*Target*], [*Status Akhir*]),
    table.cell(colspan: 4, fill: luma(235))[*Luaran Wajib*],
    [1.], [Analisis penerapan iptek pada mitra (@tab-keberdayaan)], [Ada], [Ada],
    [2.], [Artikel ilmiah pada Jurnal Pengabdian kepada Masyarakat Unindra (Sinta 4)], [accepted / published], [Naskah artikel disusun dan siap diajukan; belum disubmit (Lampiran 6)],
    [3.], [Publikasi media massa (target: malanghub.com atau laman polinema.ac.id)], [Published], [Naskah rilis disiapkan; belum terbit (Lampiran 6)],
    [4.], [Video kegiatan di YouTube Polinema/P3M], [Ada], [Naskah dan storyboard disiapkan; belum diunggah (Lampiran 6)],
    table.cell(colspan: 4, fill: luma(235))[*Luaran Tambahan*],
    [1.], [Teknologi tepat guna/produk ABA-EDU Web], [Ada], [Ada (#laporan.mitra.situs)],
    [2.], [Hak Cipta program komputer ABA-EDU Web], [Registered / Granted], [Dalam proses pendaftaran; formulir permohonan disiapkan (Lampiran 6)],
  ),
  caption: [Realisasi capaian target luaran],
) <tab-realisasi-luaran>

== Realisasi Anggaran

Anggaran kegiatan sebesar Rp #laporan.biaya,- disusun sesuai komposisi pada panduan (komponen teknologi dan inovasi minimal 40%, pelatihan maksimal 20%, perjalanan maksimal 20%, dan lainnya maksimal 20%). @tab-anggaran menunjukkan rencana dan realisasi per komponen dan uraian.

#figure(
  table(
    columns: (0.9cm, 8.2cm, 3cm, 3cm),
    align: (center, left, right, right),
    inset: 4pt,
    table.header([*No.*], [*Uraian*], [*Rencana (Rp)*], [*Realisasi (Rp)*]),
    table.cell(colspan: 4, fill: luma(235))[*1. Teknologi dan inovasi (54,4%)*],
    [], [Sewa hosting dan domain 1 tahun], [1.500.000], [#dummy[1.500.000]],
    [], [Pengembangan teknologi tepat guna ABA-EDU Web (front end dan back end)], [1.400.000], [#dummy[1.400.000]],
    [], [Validasi kompatibilitas purwarupa (pengujian utilitas)], [750.000], [#dummy[750.000]],
    [], [Validasi conformance testing], [700.000], [#dummy[700.000]],
    table.cell(colspan: 2)[_Subtotal_], [_4.350.000_], [_#dummy[4.350.000]_],
    table.cell(colspan: 4, fill: luma(235))[*2. Pelatihan (12,5%)*],
    [], [Konsumsi peserta pelatihan sesi 1--5 (10 orang × Rp 20.000 × 5 sesi)], [1.000.000], [#dummy[1.000.000]],
    table.cell(colspan: 4, fill: luma(235))[*3. Perjalanan (14,4%)*],
    [], [Perjalanan dinas observasi dan wawancara permasalahan (7 × Rp 50.000)], [350.000], [#dummy[350.000]],
    [], [Perjalanan dinas pelatihan dan pendampingan pemanfaatan ABA-EDU Web (8 × Rp 50.000)], [400.000], [#dummy[400.000]],
    [], [Perjalanan dinas evaluasi, pengendalian, dan peningkatan kegiatan (8 × Rp 50.000)], [400.000], [#dummy[400.000]],
    table.cell(colspan: 2)[_Subtotal_], [_1.150.000_], [_#dummy[1.150.000]_],
    table.cell(colspan: 4, fill: luma(235))[*4. Lain-lain (18,8%)*],
    [], [Biaya publikasi ilmiah (Jurnal Pengabdian kepada Masyarakat Unindra, Sinta 4)], [1.000.000], [#dummy[1.000.000]],
    [], [Dokumentasi kegiatan (video)], [100.000], [#dummy[100.000]],
    [], [Pendaftaran Hak Cipta program komputer ABA-EDU Web], [400.000], [#dummy[400.000]],
    table.cell(colspan: 2)[_Subtotal_], [_1.500.000_], [_#dummy[1.500.000]_],
    table.cell(colspan: 2)[*Jumlah*], [*8.000.000*], [*#dummy[8.000.000]*],
  ),
  caption: [Rencana dan realisasi anggaran],
) <tab-anggaran>

Rincian penggunaan dana dipertanggungjawabkan melalui Surat Pernyataan Tanggung Jawab Belanja (SPTJB) pada Lampiran 5.
