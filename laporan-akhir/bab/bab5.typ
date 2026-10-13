#import "../config.typ": laporan
#import "../template.typ": todo, fig-todo

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

Tim merealisasikan program pengabdian di #laporan.mitra.nama-pendek secara terstruktur sesuai tahapan pelaksanaan solusi pada BAB III. Platform ABA-EDU Web beroperasi di #laporan.mitra.situs sebagai website profil lembaga dan portal PPDB online, pengelola mitra dilatih mengoperasikannya, dan tata kelola pengelolaan sistem dituangkan dalam SOP. Bab ini memaparkan status teknologi tepat guna yang diterapkan, pengujian pada mitra, pelatihan dan pendampingan, tata kelola dan keberlanjutan, analisis peningkatan penerapan IPTEKS, pencapaian indikator keberhasilan, status luaran, dan realisasi anggaran.

== Status Teknologi Tepat Guna

ABA-EDU Web menggantikan brosur cetak dan pendaftaran manual dengan layanan digital: media profil lembaga dan portal pendaftaran siswa baru dalam satu platform. Sistem ini memudahkan orang tua calon siswa mengakses informasi dan pengelola yayasan mengelola data, sehingga memperkuat transparansi dan ketertiban administrasi di lembaga mitra. Bagian ini menjelaskan teknologi yang diterapkan, kemudian fitur-fitur aplikasi yang telah diterapkan di #laporan.mitra.nama-pendek, dikelompokkan menurut pengguna: pengunjung, orang tua, serta operator dan admin yayasan.

=== Spesifikasi dan Arsitektur Sistem

ABA-EDU Web dijalankan sebagai tenant (#raw("/y/ABS")) pada platform Kiddy School ERP di halokes.com, yaitu platform multi-lembaga untuk yayasan PAUD/TK yang dikembangkan dan dikelola tim. Aplikasi dibangun dengan kerangka kerja Laravel (PHP), antarmuka berbasis Bootstrap 5, dan diakses melalui jaringan Cloudflare. Antarmukanya responsif sehingga dapat digunakan pada komputer maupun ponsel orang tua. Setiap yayasan memiliki subdomain sendiri; subdomain mitra adalah #laporan.mitra.situs.

Platform menyediakan modul pendaftaran siswa baru (PPDB), rapor digital, kehadiran, jurnal guru dan pembelajaran, pemantauan tumbuh kembang, dan pengelolaan multicabang. Sesuai kesepakatan lingkup dengan mitra, modul yang diaktifkan dan didampingi pada kegiatan ini adalah profil lembaga dan PPDB; modul lain disiapkan sebagai tahap adopsi berikutnya.

Arsitektur sistem dirumuskan bersama anggota tim yang menangani jaringan dan keamanan infrastruktur, yang juga mengevaluasi keamanan infrastruktur tempat sistem dijalankan (otentikasi admin, validasi input, dan pencadangan data); hasilnya dibahas pada subbab Pengujian pada Mitra.

=== Fitur Aplikasi

#fitur([Halaman Profil Lembaga], [pengunjung])

Halaman profil adalah tampilan awal yang dilihat orang tua dan masyarakat ketika membuka #laporan.mitra.situs. Halaman memuat identitas lembaga, menu navigasi, dan tombol ajakan mendaftar PPDB (@fig-beranda-hero).

#figure(
  image("/images/web-beranda-hero.png", width: 100%),
  caption: [Halaman profil: menu navigasi, identitas lembaga, dan ajakan pendaftaran],
) <fig-beranda-hero>

@fig-beranda-hero menunjukkan bagian paling atas halaman. Bilah menu memuat Beranda, Tentang Kami, Cabang TK/PAUD, Galeri Kegiatan, Keunggulan, dan Testimoni yang membawa pengunjung ke bagian terkait, serta tombol _Daftar PPDB Online_ dan _Login_. Pesan utama lembaga dan tombol pendaftaran ditempatkan pada bagian ini agar pengunjung dapat langsung mendaftar.

#fitur([Statistik, Visi, dan Misi Lembaga], [pengunjung])

Bagian ini memperkenalkan profil lembaga melalui ringkasan angka dan pernyataan visi dan misi (@fig-beranda-tentang).

#figure(
  image("/images/web-beranda-tentang.png", width: 100%),
  caption: [Statistik lembaga serta visi dan misi],
) <fig-beranda-tentang>

@fig-beranda-tentang menunjukkan kartu statistik lembaga (tahun pengabdian, jumlah siswa aktif, tenaga pendidik dan staf, dan jumlah cabang), diikuti satu pernyataan visi dan empat butir misi. Angka statistik dan teks profil diisi oleh admin yayasan dan menyesuaikan data yang tersimpan di sistem #todo[perbarui tangkapan layar setelah data lembaga lengkap].

#fitur([Cabang Sekolah dan Galeri Kegiatan], [pengunjung])

Cabang sekolah yang aktif ditampilkan agar orang tua dapat memilih unit pendidikan tujuan, disertai galeri kegiatan dan fasilitas (@fig-beranda-tengah).

#figure(
  image("/images/web-beranda-tengah.png", width: 100%),
  caption: [Cabang sekolah dan galeri kegiatan],
) <fig-beranda-tengah>

@fig-beranda-tengah menunjukkan daftar cabang TK/PAUD yang dikelola yayasan dan galeri kegiatan berupa kartu foto dengan judul dan keterangan singkat. Cabang hanya muncul setelah ditambahkan dan diaktifkan oleh admin; daftar yang sama menjadi pilihan cabang pada formulir PPDB #todo[perbarui tangkapan layar setelah cabang diaktifkan dan galeri berisi foto kegiatan sebenarnya].

#fitur([Keunggulan Lembaga, Ulasan Orang Tua, dan Ajakan Mendaftar], [pengunjung])

Bagian akhir halaman profil merangkum alasan memilih lembaga dan menyediakan tombol menuju formulir pendaftaran (@fig-beranda-bawah).

#figure(
  image("/images/web-beranda-bawah.png", width: 100%),
  caption: [Keunggulan lembaga, ulasan orang tua, dan ajakan mendaftar],
) <fig-beranda-bawah>

@fig-beranda-bawah menunjukkan enam kartu keunggulan lembaga, tiga ulasan orang tua, dan tombol _Buka Formulir PPDB Online_ yang membawa pengunjung ke portal pendaftaran. Isi keunggulan dan ulasan dapat disesuaikan admin sehingga mewakili kondisi lembaga #todo[pastikan konten keunggulan dan ulasan sudah sesuai dengan data lembaga sebelum dicetak].

#fitur([Tampilan Responsif pada Ponsel], [pengunjung dan orang tua])

Orang tua umumnya mengakses website dari ponsel, sehingga tata letak menyesuaikan lebar layar (@fig-beranda-mobile).

#figure(
  image("/images/web-beranda-mobile.png", width: 36%),
  caption: [Tampilan halaman profil pada ponsel],
) <fig-beranda-mobile>

@fig-beranda-mobile menunjukkan halaman profil pada layar ponsel: seluruh bagian ditata satu kolom, menu berubah menjadi menu ringkas, dan tombol pendaftaran tetap mudah dijangkau, sehingga informasi dapat dibaca dan pendaftaran dapat dilakukan tanpa memasang aplikasi.

#fitur([Masuk ke Sistem], [orang tua, operator, dan admin])

Semua pengguna yang memiliki akun masuk melalui halaman login yang sama (@fig-login).

#figure(
  image("/images/web-login-form.png", width: 60%),
  caption: [Halaman masuk sistem],
) <fig-login>

@fig-login menunjukkan formulir masuk yang meminta email atau nomor telepon dan kata sandi, dilengkapi pilihan _Ingat Saya_, tautan _Lupa Password_, dan tautan pendaftaran bagi pengguna baru. Akun operator dan admin dibuat oleh admin yayasan, sedangkan orang tua membuat akun sendiri pada portal PPDB. Setelah berhasil, sistem membawa pengguna ke halaman sesuai perannya.

#fitur([Portal PPDB Online], [orang tua])

Portal PPDB adalah pintu pendaftaran peserta didik baru TA 2026/2027 (@fig-ppdb).

#figure(
  image("/images/web-pendaftaran.png", width: 100%),
  caption: [Halaman PPDB Online TA 2026/2027: pilihan cabang, dokumen persyaratan, dan akun orang tua],
) <fig-ppdb>

@fig-ppdb menunjukkan dua kolom. Kolom kiri memuat pilihan cabang sekolah tujuan dan daftar dokumen yang perlu disiapkan: kartu keluarga dan akta kelahiran, pas foto anak ukuran 3x4, serta bukti pembayaran pendaftaran. Kolom kanan memuat tab _Buat Akun Baru_ dan _Masuk Portal_ bagi orang tua. Orang tua memilih cabang, kemudian melanjutkan ke pengisian formulir.

#fitur([Pembuatan Akun Orang Tua], [orang tua])

Orang tua membuat akun sebelum mendaftarkan anak agar data pendaftaran tersimpan dan dapat dipantau (@fig-buat-akun).

#figure(
  fig-todo("manual-buat-akun"),
  caption: [Pembuatan akun orang tua (data disamarkan)],
) <fig-buat-akun>

@fig-buat-akun menunjukkan formulir pembuatan akun yang meminta nama lengkap, nomor telepon atau WhatsApp, email (opsional), kata sandi, dan konfirmasi kata sandi. Sistem menolak isian yang kosong atau konfirmasi yang berbeda dan menampilkan pesan kesalahan; akun yang valid tersimpan pada basis data #todo[cocokkan uraian dengan tangkapan layar akun uji].

#fitur([Pengisian Formulir dan Unggah Dokumen], [orang tua])

Setelah masuk, orang tua mengisi data pendaftaran anak pada cabang tujuan dan mengunggah dokumen persyaratan (@fig-formulir).

#figure(
  fig-todo("manual-formulir-pendaftaran"),
  caption: [Formulir pendaftaran dan unggah dokumen persyaratan (data disamarkan)],
) <fig-formulir>

@fig-formulir menunjukkan #todo[uraikan kolom data anak dan orang tua, tombol unggah dokumen, dan notifikasi setelah pendaftaran terkirim sesuai tangkapan layar]. Data dan berkas yang dikirim tersimpan pada basis data terpusat sehingga tidak lagi tersebar pada media fisik.

#fitur([Dasbor Ringkasan Statistik Pendaftaran], [admin dan operator])

Dasbor memberi admin gambaran jumlah pendaftar dan status pendaftaran pada periode berjalan (@fig-admin-dasbor).

#figure(
  fig-todo("admin-dasbor"),
  caption: [Dasbor panel pengelolaan yayasan (data disamarkan)],
) <fig-admin-dasbor>

@fig-admin-dasbor menunjukkan #todo[uraikan kartu statistik, grafik, dan menu pada dasbor sesuai tangkapan layar]. Ringkasan ini menjadi bahan laporan evaluasi akhir periode PPDB.

#fitur([Manajemen Cabang dan Periode PPDB], [admin])

Admin menambahkan cabang sekolah dan mengaktifkan periode pendaftaran agar portal menampilkan pilihan cabang (@fig-admin-cabang).

#figure(
  fig-todo("admin-cabang"),
  caption: [Pengelolaan cabang sekolah dan periode PPDB (data disamarkan)],
) <fig-admin-cabang>

@fig-admin-cabang menunjukkan #todo[uraikan kolom nama cabang, jenjang, alamat, kuota, status aktif, dan tombol tambah/ubah sesuai tangkapan layar]. Setelah admin menyimpan data, cabang tampil pada halaman profil dan pada pilihan cabang di portal PPDB.

#fitur([Manajemen dan Verifikasi Pendaftar], [operator dan admin])

Operator memeriksa kelengkapan data dan dokumen setiap pendaftar, kemudian memverifikasi atau menolaknya (@fig-admin-pendaftar).

#figure(
  fig-todo("admin-pendaftar"),
  caption: [Daftar pendaftar pada panel pengelolaan (data pribadi disamarkan)],
) <fig-admin-pendaftar>

@fig-admin-pendaftar menunjukkan #todo[uraikan daftar pendaftar, penyaring, tombol lihat/ubah/verifikasi/tolak, dan tombol ekspor sesuai tangkapan layar]. Data pribadi anak dan orang tua pada gambar disamarkan. Rekap pendaftar dapat diekspor pada akhir periode dan disimpan yayasan sesuai SOP.

#fitur([Manajemen Konten Website], [admin])

Admin memperbarui informasi profil, berita atau pengumuman, dan foto kegiatan tanpa keterampilan pemrograman (@fig-admin-konten).

#figure(
  fig-todo("admin-konten"),
  caption: [Pengelolaan konten website (data disamarkan)],
) <fig-admin-konten>

@fig-admin-konten menunjukkan #todo[uraikan menu konten, formulir ubah profil dan unggah foto sesuai tangkapan layar]. Perubahan yang disimpan langsung tampil pada halaman profil publik.

#fitur([Manajemen Pengguna Berbasis Peran], [admin])

Admin yayasan membuat akun petugas dan menetapkan perannya agar hak akses sesuai tugas (@fig-admin-pengguna).

#figure(
  fig-todo("admin-pengguna"),
  caption: [Pengelolaan pengguna dan peran (data disamarkan)],
) <fig-admin-pengguna>

@fig-admin-pengguna menunjukkan #todo[uraikan daftar pengguna, pilihan peran Admin Yayasan dan Operator Pendaftaran, serta tombol nonaktifkan akun sesuai tangkapan layar]. Pembagian peran ini dijabarkan lebih lanjut dalam SOP pengelolaan website dan PPDB.

=== Kesesuaian dengan Spesifikasi pada Surat Kesediaan Mitra

Surat kesediaan kerja sama mitra (9 Februari 2026) menyepakati delapan kemampuan utama ABA-EDU Web. @tab-kesesuaian membandingkan spesifikasi tersebut dengan realisasi pada sistem yang dioperasikan.

#figure(
  table(
    columns: (0.7cm, 4.2cm, 6.1cm, 2.2cm, 2.7cm),
    align: left + top,
    inset: 4pt,
    table.header([*No.*], [*Spesifikasi yang Disepakati*], [*Uraian*], [*Status*], [*Bukti*]),
    [1], [Website profil lembaga], [Informasi resmi yayasan: profil, visi dan misi, program pendidikan, galeri kegiatan], [Tercapai], [@fig-beranda-hero, @fig-beranda-tentang, @fig-beranda-tengah, @fig-beranda-bawah],
    [2], [Modul PPDB online], [Formulir pendaftaran berbasis web, unggah dokumen persyaratan, penyimpanan data calon siswa terpusat, rekap otomatis data pendaftar], [#todo[status]], [@fig-ppdb],
    [3], [Manajemen data pendaftar], [Dasbor admin untuk melihat, memverifikasi, mengedit, dan mengekspor data pendaftar], [#todo[status]], [@fig-admin-pendaftar],
    [4], [Manajemen konten website (CMS sederhana)], [Admin memperbarui berita, pengumuman, dan foto kegiatan tanpa keterampilan pemrograman], [#todo[status]], [@fig-admin-konten],
    [5], [Desain responsif], [Tampilan adaptif untuk desktop, tablet, dan ponsel], [Tercapai], [@fig-beranda-mobile],
    [6], [Manajemen pengguna berbasis peran], [Peran Admin Yayasan dan Operator Pendaftaran], [#todo[status]], [@fig-admin-pengguna],
    [7], [Keamanan data dasar], [Otentikasi admin, validasi input, dan pencadangan data], [#todo[status]], [@tab-keamanan],
    [8], [Dasbor ringkasan statistik], [Visualisasi jumlah pendaftar, status pendaftaran, dan rekap periode], [#todo[status]], [@fig-admin-dasbor],
  ),
  caption: [Kesesuaian realisasi dengan spesifikasi pada surat kesediaan mitra],
) <tab-kesesuaian>

== Pengujian pada Mitra

Pengujian dilakukan pada sistem yang berjalan di lingkungan mitra, melibatkan pengelola yayasan sebagai pengguna, dan mencakup fungsionalitas, kemudahan penggunaan, keamanan infrastruktur, dan kepuasan mitra.

=== Pengujian Black-box

*Pengujian black-box.* Tim menguji fungsionalitas aplikasi dari sisi pengguna tanpa melihat kode program, difokuskan pada navigasi, pembuatan akun, validasi formulir, dan proses masuk. @tab-blackbox memuat skenario dan hasil pengujian.

#figure(
  table(
    columns: (0.7cm, 5cm, 6cm, 2.5cm),
    align: left + top,
    inset: 4pt,
    table.header([*No.*], [*Skenario Pengujian*], [*Hasil yang Diharapkan*], [*Hasil Uji*]),
    [1], [Membuka halaman profil lembaga], [Halaman tampil lengkap beserta menu navigasi], [#todo[Valid/Tidak]],
    [2], [Memilih menu pada bilah navigasi], [Halaman berpindah ke bagian yang dipilih], [#todo[Valid/Tidak]],
    [3], [Membuka halaman profil pada ponsel], [Tata letak menyesuaikan lebar layar], [#todo[Valid/Tidak]],
    [4], [Membuka halaman PPDB dari tombol "Daftar PPDB"], [Halaman pendaftaran tampil], [#todo[Valid/Tidak]],
    [5], [Memilih cabang sekolah tujuan], [Formulir pendaftaran cabang terpilih tampil], [#todo[Valid/Tidak]],
    [6], [Membuat akun orang tua dengan data lengkap dan valid], [Akun terbentuk dan orang tua dapat masuk], [#todo[Valid/Tidak]],
    [7], [Membuat akun dengan kolom wajib kosong], [Sistem menampilkan pesan validasi dan menolak], [#todo[Valid/Tidak]],
    [8], [Membuat akun dengan konfirmasi kata sandi berbeda], [Sistem menolak dan menampilkan pesan kesalahan], [#todo[Valid/Tidak]],
    [9], [Masuk dengan email/telepon dan kata sandi benar], [Orang tua masuk ke portal], [#todo[Valid/Tidak]],
    [10], [Masuk dengan kata sandi salah], [Sistem menolak masuk dan menampilkan pesan], [#todo[Valid/Tidak]],
    [11], [Mengisi formulir pendaftaran dan mengunggah dokumen persyaratan], [Data dan dokumen tersimpan], [#todo[Valid/Tidak]],
    [12], [Admin memverifikasi pendaftar], [Status pendaftar berubah dan data tersimpan], [#todo[Valid/Tidak]],
  ),
  caption: [Skenario dan hasil pengujian black-box],
) <tab-blackbox>

=== Uji Kemudahan Penggunaan

Tim juga menguji kemudahan penggunaan antarmuka oleh pengelola yayasan melalui pengerjaan tugas-tugas utama (mengubah konten profil, memverifikasi pendaftar) dan umpan balik langsung. Hasil: #todo[ringkas temuan dan perbaikan yang dilakukan berdasarkan uji kemudahan penggunaan].

=== Evaluasi Keamanan Infrastruktur

Anggota tim yang menangani jaringan dan keamanan infrastruktur mengevaluasi lingkungan tempat sistem dijalankan, mencakup otentikasi admin, validasi input, perlindungan lalu lintas melalui jaringan Cloudflare, dan pencadangan data. @tab-keamanan merangkum hasilnya.

#figure(
  table(
    columns: (0.7cm, 5cm, 6cm, 2.5cm),
    align: left + top,
    inset: 4pt,
    table.header([*No.*], [*Aspek*], [*Pemeriksaan*], [*Hasil*]),
    [1], [Otentikasi admin dan operator], [Kata sandi diperlukan; akun dibuat per petugas; pembatasan akses menurut peran], [#todo[hasil]],
    [2], [Validasi input], [Isian wajib, format, dan konfirmasi kata sandi divalidasi sebelum data disimpan], [#todo[hasil]],
    [3], [Lalu lintas dan akses publik], [Akses melalui HTTPS dan jaringan Cloudflare], [#todo[hasil]],
    [4], [Pencadangan data], [Pencadangan basis data berkala pada sisi platform], [#todo[hasil]],
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
    [1], [Kesesuaian solusi dengan kebutuhan mitra], [#todo[]], [#todo[]],
    [2], [Kemudahan penggunaan website profil dan PPDB online], [#todo[]], [#todo[]],
    [3], [Kualitas pelatihan dan pendampingan], [#todo[]], [#todo[]],
    [4], [Manfaat SOP dan tata kelola yang dihasilkan], [#todo[]], [#todo[]],
    [5], [Ketepatan waktu dan komunikasi tim], [#todo[]], [#todo[]],
    [6], [Keberlanjutan pemanfaatan oleh mitra], [#todo[]], [#todo[]],
    table.cell(colspan: 2)[*Rata-rata keseluruhan* (n = #todo[jumlah responden])], [#todo[]], [#todo[]],
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
    [1], [Tata kelola dan pengelolaan website profil (konten, galeri)], [#todo[tanggal]], [#todo[jumlah dan peran]],
    [2], [Lanjutan pengelolaan website profil], [#todo[tanggal]], [#todo[jumlah dan peran]],
    [3], [Tata kelola dan pengelolaan pendaftaran], [#todo[tanggal]], [#todo[jumlah dan peran]],
    [4], [Fitur pendaftaran digital (akun, formulir, dokumen)], [#todo[tanggal]], [#todo[jumlah dan peran]],
    [5], [Manajemen data digital dan verifikasi pendaftar], [#todo[tanggal]], [#todo[jumlah dan peran]],
  ),
  caption: [Pelaksanaan lima sesi pelatihan dan pendampingan],
) <tab-pelatihan>

#figure(
  fig-todo("pelatihan-1"),
  caption: [Dokumentasi pelatihan pengelolaan sistem bersama pengelola mitra],
) <fig-pelatihan>

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
    [1], [Peserta 1 #todo[inisial]], [#todo[]], [#todo[]], [#todo[]], [#todo[]],
    [2], [Peserta 2 #todo[inisial]], [#todo[]], [#todo[]], [#todo[]], [#todo[]],
    [3], [Peserta 3 #todo[inisial]], [#todo[]], [#todo[]], [#todo[]], [#todo[]],
    table.cell(colspan: 2)[*Rata-rata*], [#todo[]], [#todo[]], [#todo[]], [#todo[]],
  ),
  caption: [Hasil pre-test, post-test, dan N-Gain literasi digital pengelola],
) <tab-ngain>

== Tata Kelola, Serah Terima, dan Keberlanjutan <sub-sop>

=== Penerapan pada Lingkungan Produksi

Sistem diaktifkan pada lingkungan produksi pada alamat #laporan.mitra.situs. Tim menyerahkan akses admin kepada pengelola mitra dan memastikan seluruh fitur diuji ulang setelah aktivasi sebelum dibuka bagi publik. Karena sistem berjalan sebagai tenant pada platform tim, mitra tidak perlu menyediakan server, tetapi alamat yang digunakan berupa subdomain platform. Tim menyarankan yayasan mempertimbangkan domain milik sendiri pada tahap lanjutan agar identitas digital lembaga semakin kuat (BAB VI). Tanggal aktivasi: #todo[tanggal].


=== SOP, Serah Terima, dan Keberlanjutan

*SOP.* Tim bersama pengurus menyusun Standar Operasional Prosedur pengelolaan website dan PPDB yang mengatur hak akses admin, jadwal pembaruan profil, dan alur verifikasi berkas pendaftaran. SOP ditandatangani pimpinan yayasan pada #todo[tanggal] dan salinannya diserahkan kepada pengelola sebagai pedoman kerja resmi (bukti pada Lampiran 6).

*Serah terima.* Tim menyerahterimakan ABA-EDU Web kepada pengelola yayasan melalui Berita Acara Serah Terima (BAST) pada #todo[tanggal], mencakup hak akses akun admin dan dokumen petunjuk penggunaan (bukti pada Lampiran 6). Karena sistem berjalan sebagai tenant platform, sisi server dan pemeliharaan platform tetap berada pada tim sebagai penyedia layanan.

*Keberlanjutan.* Yayasan menunjuk #todo[jumlah dan nama jabatan] staf administrasi sebagai admin internal yang terlatih mengelola konten dan data pendaftar. Pencadangan data dilakukan berkala pada sisi platform #todo[konfirmasi jadwal pencadangan]. Tim tetap menyediakan dukungan teknis setelah kegiatan berakhir #todo[konfirmasi bentuk dan masa dukungan].

== Analisis Peningkatan Penerapan IPTEKS pada Mitra

Luaran wajib peningkatan level keberdayaan mitra berupa peningkatan penerapan iptek dianalisis secara kuantitatif sesuai format Lampiran 70 panduan, minimal dengan dua indikator, pada @tab-keberdayaan.

#figure(
  table(
    columns: (3.3cm, 5.7cm, 2.7cm, 2.7cm),
    align: left + top,
    inset: 4pt,
    table.header([*Luaran*], [*Indikator*], [*Sebelum*], [*Sesudah*]),
    [Peningkatan penerapan iptek pada mitra], [a. Jumlah kanal layanan digital resmi lembaga (website profil dan PPDB online)], [0], [2],
    [], [b. Skor rata-rata kompetensi pengelola mengoperasikan sistem (pre/post-test, skala 0--100)], [#todo[pre-test]], [#todo[post-test]],
    [], [c. Jumlah pengelola yang mampu mengoperasikan sistem secara mandiri], [0], [#todo[jumlah]],
  ),
  caption: [Analisis peningkatan level keberdayaan mitra secara kuantitatif],
) <tab-keberdayaan>

*Keterangan/analisis.* Sebelum kegiatan, #laporan.mitra.nama-pendek tidak memiliki kanal layanan digital resmi dan pendaftaran dilakukan manual. Setelah kegiatan, lembaga memiliki dua kanal layanan digital (website profil dan PPDB online), dan pengelolanya mampu mengoperasikannya #todo[tegaskan dengan hasil N-Gain dan jumlah pengelola mandiri]. Lembar analisis ini ditandatangani pelaksana dan mitra dan dilampirkan pada Lampiran 9.

== Pencapaian Indikator Keberhasilan

Setelah seluruh fitur diterapkan, diuji, dan dipakai pengelola, capaian program dibandingkan dengan indikator keberhasilan pada BAB II. @tab-capaian memuat realisasi setiap indikator beserta statusnya.

#figure(
  table(
    columns: (0.7cm, 3.2cm, 4.3cm, 6.3cm, 1.5cm),
    align: left + top,
    inset: 4pt,
    table.header([*No.*], [*Permasalahan Mitra*], [*Indikator Keberhasilan*], [*Realisasi*], [*Status*]),
    [1], [Belum ada website profil resmi], [Website aktif dan memuat informasi lembaga], [Website aktif di #laporan.mitra.situs memuat profil, visi, misi, galeri, keunggulan lembaga (@fig-beranda-hero, @fig-beranda-tengah)], [Tercapai],
    [2], [Belum ada PPDB online terintegrasi], [100% data pendaftar tersimpan terstruktur], [Modul PPDB Online TA 2026/2027 aktif dengan akun orang tua, daftar dokumen persyaratan, dan pemilihan cabang tujuan (@fig-ppdb). Jumlah pendaftar yang tersimpan: #todo[jumlah]], [#todo[status]],
    [3], [Dokumentasi tidak terpusat], [Dokumen persyaratan pendaftar tersimpan dan mudah diakses], [Data dan dokumen pendaftar tersimpan di basis data terpusat (@fig-admin-pendaftar) #todo[verifikasi dengan tangkapan layar admin]], [#todo[status]],
    [4], [Efisiensi administrasi rendah], [Seluruh tahap pendaftaran berjalan melalui sistem], [Alur pembuatan akun, pengisian data, pengunggahan dokumen, dan verifikasi berjalan pada sistem (@tab-blackbox)], [#todo[status]],
    [5], [Literasi digital rendah], [Skor post-test naik ≥30% (N-Gain)], [Lima sesi pelatihan; skor rata-rata pre-test #todo[nilai], post-test #todo[nilai], N-Gain #todo[nilai] (@tab-ngain)], [#todo[status]],
    [6], [Belum ada pedoman tata kelola], [SOP tersedia dan digunakan], [SOP pengelolaan website dan PPDB disahkan pimpinan yayasan #todo[tanggal pengesahan] (@sub-sop)], [#todo[status]],
    [7], [Belum ada evaluasi berbasis data], [Minimal satu laporan evaluasi internal], [Laporan evaluasi akhir program disusun dan dibahas bersama mitra #todo[tanggal rapat refleksi]], [#todo[status]],
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
    [2.], [Artikel ilmiah pada Jurnal Pengabdian kepada Masyarakat Unindra (Sinta 4)], [accepted / published], [#todo[submitted / accepted / published, beserta URL]],
    [3.], [Publikasi media massa (target: malanghub.com atau laman polinema.ac.id)], [Published], [#todo[published, beserta URL]],
    [4.], [Video kegiatan di YouTube Polinema/P3M], [Ada], [#todo[URL video]],
    table.cell(colspan: 4, fill: luma(235))[*Luaran Tambahan*],
    [1.], [Teknologi tepat guna/produk ABA-EDU Web], [Ada], [Ada (#laporan.mitra.situs)],
    [2.], [Hak Cipta program komputer ABA-EDU Web], [Registered / Granted], [#todo[registered / granted, beserta nomor]],
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
    [], [Sewa hosting dan domain 1 tahun], [1.500.000], [#todo[]],
    [], [Pengembangan teknologi tepat guna ABA-EDU Web (front end dan back end)], [1.400.000], [#todo[]],
    [], [Validasi kompatibilitas purwarupa (pengujian utilitas)], [750.000], [#todo[]],
    [], [Validasi conformance testing], [700.000], [#todo[]],
    table.cell(colspan: 2)[_Subtotal_], [_4.350.000_], [#todo[]],
    table.cell(colspan: 4, fill: luma(235))[*2. Pelatihan (12,5%)*],
    [], [Konsumsi peserta pelatihan sesi 1--5 (10 orang × Rp 20.000 × 5 sesi)], [1.000.000], [#todo[]],
    table.cell(colspan: 4, fill: luma(235))[*3. Perjalanan (14,4%)*],
    [], [Perjalanan dinas observasi dan wawancara permasalahan (7 × Rp 50.000)], [350.000], [#todo[]],
    [], [Perjalanan dinas pelatihan dan pendampingan pemanfaatan ABA-EDU Web (8 × Rp 50.000)], [400.000], [#todo[]],
    [], [Perjalanan dinas evaluasi, pengendalian, dan peningkatan kegiatan (8 × Rp 50.000)], [400.000], [#todo[]],
    table.cell(colspan: 2)[_Subtotal_], [_1.150.000_], [#todo[]],
    table.cell(colspan: 4, fill: luma(235))[*4. Lain-lain (18,8%)*],
    [], [Biaya publikasi ilmiah (Jurnal Pengabdian kepada Masyarakat Unindra, Sinta 4)], [1.000.000], [#todo[]],
    [], [Dokumentasi kegiatan (video)], [100.000], [#todo[]],
    [], [Pendaftaran Hak Cipta program komputer ABA-EDU Web], [400.000], [#todo[]],
    table.cell(colspan: 2)[_Subtotal_], [_1.500.000_], [#todo[]],
    table.cell(colspan: 2)[*Jumlah*], [*8.000.000*], [#todo[]],
  ),
  caption: [Rencana dan realisasi anggaran],
) <tab-anggaran>

Rincian penggunaan dana dipertanggungjawabkan melalui Surat Pernyataan Tanggung Jawab Belanja (SPTJB) pada Lampiran 5.
