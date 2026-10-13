#import "../config.typ": laporan
#import "../template.typ": todo

= TARGET DAN LUARAN

== Solusi

Untuk menjawab permasalahan mitra secara komprehensif, kegiatan ini menawarkan solusi terpadu melalui pendekatan substitusi IPTEKS yang mengintegrasikan pengembangan sistem informasi berbasis web dengan pendampingan peningkatan kapasitas sumber daya manusia. Solusi tidak hanya berorientasi pada penyediaan teknologi, tetapi juga pada penguatan tata kelola agar berkelanjutan dan siap akreditasi. Solusi yang ditawarkan adalah sebagai berikut.

+ *Pengembangan website profil resmi.* Menyediakan website profil yang memuat visi, misi, program, kegiatan, dan keunggulan lembaga untuk meningkatkan transparansi, memudahkan komunikasi dengan orang tua, dan menjadi salah satu bukti digital akreditasi.
+ *Implementasi sistem pendaftaran peserta didik online terintegrasi.* Menyediakan platform pendaftaran online yang terhubung langsung dengan basis data peserta didik sehingga mengurangi kesalahan input dan mempermudah penyiapan dokumen akreditasi.
+ *Pembuatan repositori data terpusat.* Menyimpan data peserta didik dan dokumen persyaratan secara sistematis pada basis data terpusat sebagai dasar monitoring dan pelaporan.
+ *Digitalisasi proses administrasi pendaftaran.* Menggantikan proses manual dengan alur berbasis web untuk input data, pengarsipan, dan verifikasi berkas.
+ *Pelatihan dan pendampingan literasi digital guru dan manajemen.* Melatih pengelola mengoperasikan website profil dan modul pendaftaran, diukur dengan pre-test dan post-test.
+ *Pendampingan implementasi dan penyusunan SOP.* Mendampingi implementasi secara teknis dan manajerial serta menyusun Standar Operasional Prosedur pengelolaan website dan PPDB sebagai pedoman resmi.

Dalam pelaksanaannya, ABA-EDU Web dijalankan di atas platform Kiddy School ERP (halokes.com) yang telah menyediakan modul pendaftaran, rapor, jurnal guru dan pembelajaran, serta pemantauan tumbuh kembang. Bersama pengelola mitra, tim menyepakati penyesuaian lingkup: solusi 3 dan 4 diwujudkan pada data dan administrasi pendaftaran peserta didik, sedangkan modul rapor digital, pembelajaran, dan dasbor monitoring yang telah tersedia pada platform disiapkan sebagai tahap adopsi berikutnya (lihat BAB VI) #todo[konfirmasi kesepakatan penyesuaian lingkup dengan mitra, lengkap dengan bukti/berita acara].

== Target Luaran

Luaran kegiatan mengikuti ketentuan skema Pengabdian pada Masyarakat DIPA Reguler Kompetisi dan ditunjukkan pada @tab-target-luaran.

#figure(
  table(
    columns: (0.9cm, 1fr, 4cm),
    align: (center, left, left),
    inset: 4pt,
    table.header([*No.*], [*Jenis Luaran*], [*Indikator Capaian*]),
    table.cell(colspan: 3, fill: luma(235))[*Luaran Wajib*],
    [1.], [Peningkatan level keberdayaan mitra: peningkatan penerapan iptek dibuktikan dengan analisis penerapan iptek (format Lampiran 70 panduan)], [Ada],
    [2.], [Artikel ilmiah yang dipublikasikan melalui jurnal ber-ISSN (target: Jurnal Pengabdian kepada Masyarakat Unindra, terindeks Sinta 4)], [accepted / published],
    [3.], [Publikasi media massa cetak atau online (bukan media sosial)], [Published],
    [4.], [Video kegiatan yang diunggah di kanal YouTube Polinema/P3M], [Ada],
    table.cell(colspan: 3, fill: luma(235))[*Luaran Tambahan*],
    [1.], [Teknologi tepat guna / produk: ABA-EDU Web], [Ada],
    [2.], [Kekayaan intelektual: Hak Cipta program komputer ABA-EDU Web], [Registered / Granted],
  ),
  caption: [Target luaran kegiatan pengabdian kepada masyarakat],
) <tab-target-luaran>

== Indikator Keberhasilan Program

Indikator keberhasilan dirancang agar ketercapaian transformasi digital di #laporan.mitra.nama-pendek dapat diukur pada aspek teknologi, administrasi, sumber daya manusia, dan tata kelola. Keterkaitan antara permasalahan, solusi, target luaran, dan indikator disajikan pada @tab-indikator.

#figure(
  table(
    columns: (0.7cm, 3cm, 3.4cm, 4.2cm, 4.3cm),
    align: left + top,
    inset: 4pt,
    table.header([*No.*], [*Permasalahan Mitra*], [*Solusi IPTEKS*], [*Target Luaran*], [*Indikator Keberhasilan*]),
    [1], [Belum ada website profil resmi], [Pengembangan website profil lembaga], [Website profil aktif menampilkan visi, misi, program, kegiatan, dan keunggulan], [Website dapat diakses publik dan memuat informasi lembaga secara lengkap],
    [2], [Belum ada sistem pendaftaran online terintegrasi], [Implementasi PPDB online berbasis web], [Sistem pendaftaran online aktif dan data pendaftar tersimpan di basis data], [100% data pendaftar yang masuk melalui sistem tersimpan terstruktur],
    [3], [Dokumentasi administrasi tidak terpusat], [Repositori data pendaftar terpusat], [Data dan dokumen persyaratan pendaftar tersimpan digital], [Dokumen persyaratan pendaftar tersimpan dan mudah diakses untuk akreditasi],
    [4], [Efisiensi administrasi rendah, risiko kesalahan tinggi], [Digitalisasi alur administrasi pendaftaran], [Alur pendaftaran dan verifikasi berjalan melalui sistem], [Seluruh tahap pendaftaran (akun, pengisian data, dokumen, verifikasi) dilakukan melalui sistem],
    [5], [Literasi digital guru dan manajemen rendah], [Pelatihan dan pendampingan penggunaan ABA-EDU Web], [Pengelola mampu mengoperasikan sistem secara mandiri], [Skor post-test meningkat ≥30% dibanding pre-test (N-Gain)],
    [6], [Belum ada pedoman tata kelola sistem digital], [Penyusunan SOP website dan PPDB], [SOP tertulis dan disahkan pimpinan yayasan], [Dokumen SOP tersedia dan digunakan secara rutin],
    [7], [Belum ada evaluasi dan monitoring berbasis data], [Pendampingan evaluasi penggunaan sistem], [Praktik evaluasi internal berbasis data sistem], [Minimal satu laporan evaluasi internal menggunakan data dari sistem],
  ),
  caption: [Keterkaitan permasalahan, solusi, target luaran, dan indikator keberhasilan],
) <tab-indikator>
