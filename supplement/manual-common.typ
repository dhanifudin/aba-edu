// Gaya dan sampul bersama untuk buku panduan ABA-EDU Web (modul PPDB dan modul Rapor).
// Sampul digambar dengan bentuk vektor Typst (tanpa logo) mengikuti fungsi aplikasi.
#import "common.typ": laporan

#let accent = rgb("#1e40af")
#let accent-dark = rgb("#172554")
#let accent-soft = rgb("#eff6ff")
#let amber = rgb("#fbbf24")
#let green = rgb("#22c55e")
#let ink = rgb("#1f2937")
#let muted = rgb("#6b7280")

#let tip(body) = block(width: 100%, fill: accent-soft, stroke: (left: 3pt + accent), inset: 8pt, body)

// Pengaturan halaman, huruf, judul, dan tabel buku panduan.
#let manual(footer-title, body) = {
  set page(paper: "a4", margin: 2cm, numbering: "1", footer: context [
    #set text(size: 8.5pt, fill: muted)
    #footer-title #h(1fr) #counter(page).display()
  ])
  set text(font: ("Noto Sans", "DejaVu Sans"), size: 10.5pt, lang: "id", region: "ID", fill: ink)
  set par(justify: false, leading: 0.7em, spacing: 1.1em)
  set heading(numbering: "1.1.")
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    v(0.4cm)
    block(below: 0.5cm, sticky: true, text(size: 18pt, weight: "bold", fill: accent)[#counter(heading).display() #it.body])
  }
  show heading.where(level: 2): it => { v(0.35cm, weak: true); block(below: 0.2cm, sticky: true, text(size: 12.5pt, weight: "bold")[#it]) }
  show figure.caption: it => text(size: 9pt, fill: muted, it)
  set table(stroke: (x: none, y: 0.5pt + rgb("#e2e8f0")), inset: 6pt)
  show table.cell.where(y: 0): it => { set text(weight: "bold", fill: accent); it }
  body
}

// ---------------------------------------------------------------- motif sampul
// Modul PPDB: gedung sekolah dengan lencana centang.
#let motif-sekolah() = box(width: 6cm, height: 5cm, {
  place(top + center, dx: -0.2cm, polygon(fill: amber, (0cm, 1.7cm), (2.7cm, 0cm), (5.4cm, 1.7cm)))
  place(bottom + left, dx: 0.2cm, rect(width: 5cm, height: 3.1cm, fill: white, radius: 3pt))
  place(bottom + left, dx: 2.1cm, rect(width: 1.1cm, height: 1.6cm, fill: accent, radius: (top: 6pt)))
  for (dx, dy) in ((0.7cm, 1.0cm), (3.8cm, 1.0cm)) {
    place(top + left, dx: dx, dy: 2.4cm + dy - 1.0cm, rect(width: 0.9cm, height: 0.9cm, fill: accent-soft, stroke: 1pt + accent))
  }
  place(top + right, dy: 1.4cm, circle(radius: 0.75cm, fill: green, stroke: 2pt + white, align(center + horizon, text(size: 18pt, weight: "bold", fill: white)[✓])))
})

// Modul Rapor: lembar rapor dengan baris nilai dan grafik tumbuh kembang.
#let motif-rapor() = box(width: 6cm, height: 5cm, {
  place(bottom + left, dx: 0.4cm, rect(width: 4.3cm, height: 4.8cm, fill: white, radius: 4pt))
  place(top + left, dx: 0.9cm, dy: 0.5cm, rect(width: 2.2cm, height: 0.28cm, fill: accent, radius: 2pt))
  for i in range(3) {
    place(top + left, dx: 0.9cm, dy: 1.1cm + i * 0.42cm, rect(width: 3.3cm - i * 0.5cm, height: 0.16cm, fill: rgb("#cbd5e1"), radius: 2pt))
  }
  for (i, h) in (0.7cm, 1.2cm, 0.95cm, 1.7cm).enumerate() {
    place(bottom + left, dx: 0.9cm + i * 0.8cm, dy: -0.45cm, rect(width: 0.55cm, height: h, fill: if i == 3 { green } else { accent }, radius: (top: 2pt)))
  }
  place(top + right, dy: 0.4cm, circle(radius: 0.8cm, fill: amber, stroke: 2pt + white, align(center + horizon, text(size: 16pt, weight: "bold", fill: accent-dark)[A])))
})

#let langkah(items) = grid(
  columns: items.len() * 2 - 1,
  column-gutter: 8pt,
  align: horizon,
  ..items.enumerate().map(((i, t)) => {
    let box-i = box(fill: accent-soft, stroke: 1pt + accent, radius: 6pt, inset: (x: 10pt, y: 7pt), text(size: 10pt, weight: "bold", fill: accent)[#(i + 1). #t])
    if i < items.len() - 1 { (box-i, text(fill: muted)[→]) } else { (box-i,) }
  }).flatten(),
)

// Sampul: panel biru penuh dengan judul modul, motif sesuai fungsi, alur kerja, dan nama ketua.
#let cover(modul, judul, deskripsi, motif, alur, penulis) = page(margin: 0pt, numbering: none, footer: none)[
  #block(width: 100%, height: 15cm, fill: gradient.linear(accent-dark, accent, angle: 55deg), inset: (x: 2.2cm, top: 2.6cm))[
    #text(size: 10pt, weight: "bold", fill: white.transparentize(25%), tracking: 2pt)[ABA-EDU WEB · #upper(modul)]
    #v(0.7cm)
    #block(width: 12cm, text(size: 33pt, weight: "bold", fill: white, judul))
    #v(0.5cm)
    #block(width: 10.5cm, text(size: 12.5pt, fill: white.transparentize(10%), deskripsi))
    #place(bottom + right, dy: -1.3cm, motif)
  ]
  #pad(x: 2.2cm, top: 1.1cm)[
    #text(size: 9pt, fill: muted, tracking: 1pt)[ALUR UTAMA]
    #v(0.2cm)
    #langkah(alur)
    #v(0.6cm)
    #text(size: 11pt)[Buku panduan penggunaan untuk #laporan.mitra.nama-pendek] \
    #text(size: 10pt, fill: muted)[Alamat sistem: #laporan.mitra.situs]
  ]
  #place(bottom + left, dx: 2.2cm, dy: -1.8cm)[
    #text(size: 9pt, fill: muted)[Disusun oleh] \
    #text(size: 13pt, weight: "bold")[#penulis] \
    #v(0.2cm)
    #text(size: 10pt, fill: muted)[Politeknik Negeri Malang · #laporan.bulan-tahun-laporan]
  ]
]
