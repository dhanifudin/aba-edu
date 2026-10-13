// Berita Acara Serah Terima ABA-EDU Web kepada mitra. Struktur mengikuti Lampiran 26 panduan
// (berita acara penyerahan aset), disesuaikan: penerima adalah mitra, bukan Polinema.
#import "common.typ": laporan, todo, doc, letterhead

#show: doc
#set text(size: 10pt)
#set par(leading: 0.5em)

#letterhead()

#align(center)[
  #text(size: 13pt, weight: "bold")[BERITA ACARA SERAH TERIMA] \
  #text(size: 11pt, weight: "bold")[HASIL PENGABDIAN PADA MASYARAKAT: ABA-EDU WEB]
]

#v(0.3cm)

Pada hari ini #todo[hari], tanggal #todo[tanggal] bulan #todo[bulan] tahun dua ribu dua puluh enam, bertempat di #laporan.mitra.alamat, yang bertanda tangan di bawah ini:

#table(
  columns: (4cm, 0.4cm, 1fr),
  stroke: none,
  inset: (y: 4pt),
  table.cell(colspan: 3)[*PIHAK PERTAMA (yang menyerahkan)*],
  [Nama], [:], [#laporan.ketua.nama],
  [NIP], [:], [#laporan.ketua.nip],
  [Jabatan], [:], [Ketua Tim Pelaksana Pengabdian pada Masyarakat, Politeknik Negeri Malang],
  table.cell(colspan: 3)[#v(0.1cm) *PIHAK KEDUA (yang menerima)*],
  [Nama], [:], [#laporan.mitra.pimpinan],
  [Jabatan], [:], [#laporan.mitra.jabatan-pimpinan, #laporan.mitra.nama-pendek],
)

Kedua belah pihak sepakat melakukan serah terima hasil kegiatan "#laporan.judul" (skema #laporan.skema, tahun #laporan.tahun) sebagai berikut:

#table(
  columns: (0.8cm, 4.6cm, 1fr, 2.2cm),
  stroke: 0.5pt,
  inset: 5pt,
  align: (center, left, left, center),
  [*No.*], [*Nama*], [*Spesifikasi*], [*Jumlah*],
  [1], [Sistem ABA-EDU Web], [Website profil dan portal PPDB online pada #laporan.mitra.situs (Laravel, Bootstrap 5; tenant platform Kiddy School ERP)], [1 sistem],
  [2], [Hak akses admin sistem], [Akun Admin Yayasan dan Operator Pendaftaran beserta panduan penggantian kata sandi #todo[jumlah akun]], [#todo[jumlah]],
  [3], [Dokumen SOP], [SOP Pengelolaan Website dan PPDB Online ABA-EDU Web yang telah disahkan], [1 dokumen],
  [4], [Buku panduan], [Buku panduan penggunaan ABA-EDU Web (manual book)], [1 dokumen],
  [5], [Data awal], [Data profil lembaga, cabang sekolah, dan konten yang telah dimasukkan #todo[rincian]], [1 paket],
)

Nilai aset: sistem berjalan sebagai layanan pada platform tim pelaksana sehingga tidak ada perpindahan kepemilikan perangkat keras; nilai total aset yang diserahkan Rp #todo[nilai atau tulis "-"]. Pihak pertama tetap menyediakan dukungan teknis platform selama #todo[masa dukungan]. Pihak kedua bertanggung jawab atas pengelolaan sehari-hari sesuai SOP, termasuk kerahasiaan data pendaftar.

Demikian Berita Acara Serah Terima ini dibuat dengan sebenarnya, ditandatangani di atas meterai oleh kedua belah pihak, dan dibuat rangkap dua untuk dipergunakan sebagaimana mestinya.

#v(0.4cm)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 0.4cm,
  align(center)[Yang menerima, \ PIHAK KEDUA #v(0.2cm) #text(size: 9pt, fill: luma(120))[(meterai Rp 10.000)] #v(0.9cm) *#laporan.mitra.pimpinan* \ #laporan.mitra.jabatan-pimpinan],
  align(center)[Mengetahui, \ Kepala P3M Polinema #v(1.55cm) *#laporan.pejabat.kepala-p3m.nama* \ NIDN. #laporan.pejabat.kepala-p3m.nidn],
  align(center)[Yang menyerahkan, \ PIHAK PERTAMA #v(0.2cm) #text(size: 9pt, fill: luma(120))[(meterai Rp 10.000)] #v(0.9cm) *#laporan.ketua.nama* \ NIP. #laporan.ketua.nip],
)
