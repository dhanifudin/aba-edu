// Shared page/text setup for standalone supplement documents (SPTJB,
// Ringkasan PKM, Dokumen Prototipe, SOP, BAST, dst.). These are official forms
// compiled to their own PDFs and then embedded as pages into the laporan
// akhir's lampiran — so they intentionally do NOT use laporan-akhir's BAB/
// Lampiran heading machinery, just plain A4/Times styling for a clean form.
#import "../laporan-akhir/config.typ": laporan

#let todo(msg) = text(fill: red, weight: "bold")[\[TODO: #msg\]]

#let doc(body) = {
  set page(paper: "a4", margin: 2cm)
  set text(font: ("Times New Roman", "Liberation Serif"), size: 11pt, lang: "id", region: "ID")
  set par(leading: 0.65em, justify: true)
  body
}

// Official P3M Polinema letterhead (logo + institutional header + rule),
// matching the kop surat shown in docs/panduan.pdf's own official form
// templates (e.g. Lampiran 8 Surat Pernyataan Keaslian, Lampiran 21 Surat
// Rekomendasi Pusat Riset): sans-serif (Calibri, body text stays Times New
// Roman), a size/weight hierarchy -- "KEMENTERIAN..." largest and regular,
// "POLITEKNIK NEGERI MALANG" smaller and regular, "PUSAT PENELITIAN..." the
// only bold line -- and a larger logo than a typical inline letterhead.
#let letterhead() = {
  grid(
    columns: (2.6cm, 1fr),
    column-gutter: 0.4cm,
    align: horizon,
    image("/images/logo.png", width: 100%),
    align(center)[
      #set text(font: ("Calibri", "Carlito", "Liberation Sans"))
      #text(size: 14pt)[KEMENTERIAN PENDIDIKAN TINGGI, SAINS, DAN TEKNOLOGI] \
      #text(size: 12pt)[POLITEKNIK NEGERI MALANG] \
      #text(size: 12pt, weight: "bold")[PUSAT PENELITIAN DAN PENGABDIAN KEPADA MASYARAKAT] \
      #text(size: 9pt)[Jalan Soekarno Hatta Nomor 9, Jatimulyo, Lowokwaru, Malang 65141] \
      #text(size: 9pt)[Telepon (0341) 404424, 404425, Faksimile (0341) 404420] \
      #text(size: 9pt)[Laman www.polinema.ac.id]
    ],
  )
  v(0.2cm)
  line(length: 100%, stroke: 1.5pt)
  v(0.4cm)
}
#import "../laporan-akhir/dummy.typ": dummy, fmt, rp, peserta, n-peserta, ng, kat, rata-pre, rata-post, rata-ng, kenaikan, n-tinggi, n-sedang, n-rendah, s-pre, s-post, s-ng, s-naik, kat-ng, aspek-kepuasan, kat-puas, rata-aspek, rata-puas, s-puas, n-skenario, n-valid, n-pendaftar-uji, n-akun, n-admin-internal, masa-dukungan, batas-verifikasi, tgl

// Kolom tanda tangan: baris peran (`top`), kotak tinggi tetap `h` berisi gambar tanda tangan
// yang rata bawah (kosong bila `ttd: none`), lalu nama dan identitas. Semua kolom pada satu
// baris memakai `h` yang sama sehingga nama berada pada satu garis dasar.
#let ttd-col(top, nama, ttd: none, w: 3cm, id: none, h: 1.9cm, size: 10pt) = align(center)[
  #set text(size: size)
  #set par(justify: false, first-line-indent: 0pt)
  #top
  #box(width: 100%, height: h, align(center + bottom, if ttd != none { image(ttd, width: w) }))
  #box(text(weight: "bold")[#nama])
  #if id != none [ \ #id ]
]
