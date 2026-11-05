// Analisis Peningkatan Level Keberdayaan secara Kuantitatif -- format Lampiran 70 docs/panduan.pdf
// (dikonversi dari docs/penerapan-iptek-kuisioner.docx: minimal 1 luaran, minimal 2 indikator,
// keterangan/analisis, tanda tangan mitra dan pelaksana).
#import "common.typ": *

#show: doc
#set text(size: 10pt)
#set par(leading: 0.55em)
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
  inset: 5pt,
  align: left + horizon,
  table.header(
    head("LUARAN SESUAI PROPOSAL", "(dipilih minimal 1 sesuai dengan luaran yang diusulkan)"),
    head("INDIKATOR", "(diisi minimal 2 indikator)"),
    align(center)[*ANGKA SEBELUM PENGABDIAN MASYARAKAT*],
    align(center)[*ANGKA SETELAH PENGABDIAN MASYARAKAT*],
  ),
  rowspan-luaran(2, [Peningkatan daya saing mitra]),
  [a. -], [-], [-],
  [b. -], [-], [-],

  rowspan-luaran(3, [Peningkatan penerapan iptek pada mitra #sym.checkmark], bold: true),
  [a. Jumlah kanal layanan digital resmi lembaga (website profil dan PPDB online)], [0], [2],
  [b. Skor rata-rata kompetensi pengelola mengoperasikan ABA-EDU Web (pre-test/post-test, skala 0--100)], [#dummy[#s-pre]], [#dummy[#s-post]],
  [c. Jumlah pengelola yang mampu mengoperasikan sistem secara mandiri], [0], [#dummy[#n-peserta]],

  rowspan-luaran(2, [Perbaikan tata nilai masyarakat]),
  [a. -], [-], [-],
  [b. -], [-], [-],

  rowspan-luaran(2, [Peningkatan ketrampilan masyarakat]),
  [a. -], [-], [-],
  [b. -], [-], [-],

  table.cell(colspan: 4, inset: 6pt)[
    *KETERANGAN / ANALISIS* \
    #set par(justify: true)
    Sebelum kegiatan, #laporan.mitra.nama-pendek tidak memiliki kanal layanan digital resmi dan pendaftaran peserta didik dilakukan secara manual. Setelah kegiatan, lembaga memiliki dua kanal layanan digital (website profil dan PPDB online pada #laporan.mitra.situs) yang dikelola mandiri oleh admin internal berdasarkan SOP. Kompetensi pengelola meningkat dari skor rata-rata #dummy[#s-pre] menjadi #dummy[#s-post] (N-Gain #dummy[#s-ng], kategori #dummy[#lower(kat-ng)]), dan #dummy[#n-peserta] pengelola mampu mengoperasikan sistem tanpa pendampingan.
  ],
)

#v(0.4cm)

#grid(
  columns: (1fr, 1fr),
  gutter: 1cm,
  align(center)[
    Mitra Pengabdian Masyarakat, \
    #laporan.mitra.jabatan-pimpinan
    #v(0.2cm) #image(laporan.mitra.ttd, width: 2cm) #v(0.05cm)
    *#laporan.mitra.pimpinan* \ #laporan.mitra.nama-pendek
  ],
  align(center)[
    Pelaksana Pengabdian Masyarakat, \
    Ketua Tim
    #v(0.2cm) #image(laporan.ketua.ttd, width: 3cm) #v(-0.3cm)
    *#laporan.ketua.nama* \ NIDN. #laporan.ketua.nidn
  ],
)
