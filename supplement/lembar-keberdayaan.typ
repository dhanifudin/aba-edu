// Analisis Peningkatan Level Keberdayaan secara Kuantitatif -- format Lampiran 70 docs/panduan.pdf
// (dikonversi dari docs/penerapan-iptek-kuisioner.docx: minimal 1 luaran, minimal 2 indikator,
// keterangan/analisis, tanda tangan mitra dan pelaksana).
#import "common.typ": *

#show: doc
#set text(size: 9.5pt)
#set par(leading: 0.5em)
#set par(justify: false)

#letterhead()

#align(center)[#text(size: 12pt, weight: "bold")[ANALISIS PENINGKATAN LEVEL KEBERDAYAAN SECARA KUANTITATIF]]
#v(0.2cm)

Judul kegiatan: #laporan.judul \
Mitra: #laporan.mitra.nama \
Skema: #laporan.skema, tahun #laporan.tahun

#v(0.2cm)

#let head(t, note) = align(center)[*#t* \ #text(size: 8pt, style: "italic")[#note]]
#let rowspan-luaran(n, t, bold: false) = table.cell(rowspan: n, if bold { strong(t) } else { t })

#table(
  columns: (4.4cm, 6cm, 3.3cm, 3.3cm),
  stroke: 0.5pt,
  inset: 3.5pt,
  align: left + horizon,
  table.header(
    head("LUARAN SESUAI PROPOSAL", "(dipilih minimal 1 sesuai dengan luaran yang diusulkan)"),
    head("INDIKATOR", "(diisi minimal 2 indikator)"),
    align(center)[*ANGKA SEBELUM PENGABDIAN MASYARAKAT*],
    align(center)[*ANGKA SETELAH PENGABDIAN MASYARAKAT*],
  ),
  rowspan-luaran(2, [Peningkatan daya saing mitra]),
  [a. Jam layanan informasi dan pendaftaran bagi calon siswa per hari], [3 jam (jam belajar 07.30--10.30)], [24 jam (website dan PPDB online)],
  [b. Jumlah cabang (TK dan PAUD) yang dapat dilihat dan dipilih secara online], [0], [2],

  rowspan-luaran(2, [Peningkatan penerapan iptek pada mitra #sym.checkmark], bold: true),
  [a. Jumlah kanal layanan digital resmi lembaga (website profil dan PPDB online)], [0], [2],
  [b. Jumlah modul sistem yang aktif dan digunakan pengelola (profil lembaga dan PPDB)], [0], [2],

  rowspan-luaran(2, [Perbaikan tata nilai masyarakat]),
  [a. Jumlah proses pendaftaran yang dilakukan secara digital (pendaftaran dan unggah berkas, verifikasi, aktivasi siswa, penempatan kelas)], [0], [4],
  [b. Jumlah akun individual berbasis peran sesuai SOP], [0], [#dummy[#n-akun]],

  rowspan-luaran(2, [Peningkatan ketrampilan masyarakat]),
  [a. Skor rata-rata kompetensi pengelola mengoperasikan ABA-EDU Web (pre-test/post-test, skala 0--100)], [#dummy[#s-pre]], [#dummy[#s-post]],
  [b. Jumlah pengelola yang mampu mengoperasikan sistem secara mandiri], [0], [#dummy[#n-peserta]],

  table.cell(colspan: 4, inset: 6pt)[
    *KETERANGAN / ANALISIS* \
    #set par(justify: true)
    Sebelum kegiatan, #laporan.mitra.nama-pendek tidak memiliki kanal layanan digital resmi dan pendaftaran peserta didik dilakukan secara manual. Setelah kegiatan, lembaga memiliki dua kanal layanan digital (website profil dan PPDB online pada #laporan.mitra.situs) yang melayani calon siswa sepanjang hari pada dua cabang, empat proses pendaftaran dilakukan secara digital, dan sistem dikelola mandiri oleh admin internal berdasarkan SOP dengan akun individual per peran. Kompetensi pengelola meningkat dari skor rata-rata #dummy[#s-pre] menjadi #dummy[#s-post] (N-Gain #dummy[#s-ng], kategori #dummy[#lower(kat-ng)]), dan #dummy[#n-peserta] pengelola mampu mengoperasikan sistem tanpa pendampingan.
  ],
)

#v(0.4cm)

#grid(
  columns: (1fr, 1fr),
  gutter: 1cm,
  ttd-col([#hide[.] \ Mitra Pengabdian Masyarakat, \ #laporan.mitra.jabatan-pimpinan], laporan.mitra.pimpinan, ttd: laporan.mitra.ttd, w: 2.1cm, id: laporan.mitra.nama-pendek),
  ttd-col([Malang, #laporan.bulan-tahun-laporan \ Pelaksana Pengabdian Masyarakat, \ Ketua Tim], laporan.ketua.nama, ttd: laporan.ketua.ttd, w: 3cm, id: [NIDN. #laporan.ketua.nidn]),
)
