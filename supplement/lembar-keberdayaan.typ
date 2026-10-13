// Analisis Peningkatan Level Keberdayaan secara Kuantitatif -- format Lampiran 70 docs/panduan.pdf
// (minimal 2 indikator angka sebelum/sesudah, keterangan/analisis, tanda tangan pelaksana dan mitra).
#import "common.typ": laporan, todo, doc, letterhead

#show: doc
#set text(size: 10pt)
#set par(leading: 0.55em)
#set par(justify: true)

#letterhead()

#align(center)[#text(size: 13pt, weight: "bold")[ANALISIS PENINGKATAN LEVEL KEBERDAYAAN SECARA KUANTITATIF]]
#v(0.3cm)

Judul kegiatan: #laporan.judul \
Mitra: #laporan.mitra.nama \
Skema: #laporan.skema, tahun #laporan.tahun

#v(0.3cm)

#table(
  columns: (3.6cm, 6cm, 3.2cm, 3.2cm),
  stroke: 0.5pt,
  inset: 6pt,
  align: left + top,
  [*Luaran sesuai indikator proposal*], [*Indikator (diisi minimal 2)*], [*Angka sebelum pengabdian*], [*Angka setelah pengabdian*],
  [Peningkatan daya saing mitra], [a. - \ b. -], [-], [-],
  [*Peningkatan penerapan iptek pada mitra*],
  [a. Jumlah kanal layanan digital resmi lembaga (website profil dan PPDB online) \ b. Skor rata-rata kompetensi pengelola mengoperasikan sistem (pre-test/post-test, skala 0--100) \ c. Jumlah pengelola yang mampu mengoperasikan sistem secara mandiri],
  [a. 0 \ b. #todo[pre-test] \ c. 0],
  [a. 2 \ b. #todo[post-test] \ c. #todo[jumlah]],
  [Perbaikan tata nilai masyarakat], [a. - \ b. -], [-], [-],
  [Peningkatan keterampilan masyarakat], [a. - \ b. -], [-], [-],
)

#v(0.3cm)

*Keterangan / analisis*

Sebelum kegiatan, #laporan.mitra.nama-pendek tidak memiliki kanal layanan digital resmi dan pendaftaran peserta didik dilakukan secara manual. Setelah kegiatan, lembaga memiliki dua kanal layanan digital (website profil dan PPDB online pada #laporan.mitra.situs) yang dikelola mandiri oleh admin internal berdasarkan SOP. Kompetensi pengelola meningkat dari skor rata-rata #todo[pre-test] menjadi #todo[post-test] (N-Gain #todo[nilai], kategori #todo[kategori]), dan #todo[jumlah] pengelola mampu mengoperasikan sistem tanpa pendampingan. #todo[tambahkan analisis dampak lain yang terukur bila ada]

#v(0.3cm)

#grid(
  columns: (1fr, 1fr),
  gutter: 1cm,
  align(center)[Pelaksana Pengabdian Masyarakat, #v(0.2cm) #image(laporan.ketua.ttd, width: 3cm) #v(-0.3cm) *#laporan.ketua.nama* \ NIDN. #laporan.ketua.nidn],
  align(center)[Mitra Pengabdian Masyarakat, \ #laporan.mitra.jabatan-pimpinan #v(1.9cm) *#laporan.mitra.pimpinan* \ #laporan.mitra.nama-pendek],
)
