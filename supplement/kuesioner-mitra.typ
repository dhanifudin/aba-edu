// Kuesioner Kepuasan Mitra -- diwajibkan bagi pelaksana PKM (panduan 2.4.9); panduan tidak
// memberi format baku sehingga instrumen ini disusun mengikuti enam aspek pada BAB V laporan akhir.
#import "common.typ": laporan, todo, doc, letterhead

#show: doc
#set text(size: 10.5pt)
#set par(leading: 0.55em, justify: false)

#letterhead()

#align(center)[
  #text(size: 13pt, weight: "bold")[KUESIONER KEPUASAN MITRA] \
  #text(size: 11pt)[Pengabdian kepada Masyarakat #laporan.skema, Tahun #laporan.tahun]
]
#v(0.2cm)

*Judul kegiatan:* #laporan.judul \
*Mitra:* #laporan.mitra.nama \
*Ketua tim pelaksana:* #laporan.ketua.nama

#v(0.2cm)

Kuesioner ini mengukur kepuasan mitra terhadap pelaksanaan kegiatan. Jawaban Bapak/Ibu dipakai untuk evaluasi dan perbaikan kegiatan selanjutnya serta dilaporkan kepada P3M Politeknik Negeri Malang.

*A. Identitas responden*

#table(
  columns: (4cm, 0.4cm, 1fr),
  stroke: none,
  inset: (y: 4pt),
  [Nama], [:], [................................................................],
  [Jabatan di yayasan], [:], [................................................................],
  [Tanggal pengisian], [:], [................................................................],
)

*B. Penilaian.* Beri tanda centang (✓) pada nilai yang sesuai: 1 = sangat tidak puas/tidak setuju, 2 = tidak puas, 3 = cukup, 4 = puas, 5 = sangat puas/setuju.

#let kotak = box(width: 0.45cm, height: 0.45cm, stroke: 0.6pt)
#let butir(..rows) = table(
  columns: (0.8cm, 1fr, 0.9cm, 0.9cm, 0.9cm, 0.9cm, 0.9cm),
  stroke: 0.5pt,
  inset: 5pt,
  align: (center + horizon, left + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon),
  table.header([*No.*], [*Pernyataan*], [*1*], [*2*], [*3*], [*4*], [*5*]),
  ..rows.pos().enumerate().map(((i, r)) => ([#(i + 1)], [#r], kotak, kotak, kotak, kotak, kotak)).flatten(),
)

*1. Kesesuaian solusi dengan kebutuhan mitra*
#butir(
  [Masalah yang dihadapi yayasan (belum ada website profil dan pendaftaran online) terjawab oleh kegiatan ini.],
  [Fitur ABA-EDU Web sesuai dengan kebutuhan layanan yayasan.],
)

*2. Kemudahan penggunaan website profil dan PPDB online*
#butir(
  [Website profil mudah dipahami dan diperbarui oleh pengelola.],
  [Portal PPDB online mudah digunakan oleh orang tua dan oleh admin yayasan.],
)

*3. Kualitas pelatihan dan pendampingan*
#butir(
  [Materi pelatihan jelas dan sesuai dengan tugas pengelola.],
  [Tim pelaksana membantu dengan baik ketika pengelola mengalami kesulitan.],
)

*4. Manfaat SOP dan tata kelola*
#butir(
  [SOP pengelolaan website dan PPDB mudah dipahami dan dapat diterapkan.],
  [Pembagian peran admin dan operator pendaftaran jelas.],
)

*5. Ketepatan waktu dan komunikasi tim*
#butir(
  [Kegiatan berjalan sesuai jadwal yang disepakati.],
  [Tim pelaksana komunikatif dan mudah dihubungi.],
)

*6. Keberlanjutan pemanfaatan*
#butir(
  [Yayasan siap mengelola sistem secara mandiri setelah kegiatan berakhir.],
  [Yayasan berencana memanfaatkan sistem untuk pendaftaran peserta didik berikutnya.],
)

*C. Saran dan masukan*

1. Hal yang paling bermanfaat dari kegiatan ini: ......................................................................................... \
2. Hal yang perlu diperbaiki: ......................................................................................... \
3. Kebutuhan pendampingan lanjutan: .........................................................................................

#v(0.5cm)

#align(right)[
  #box(width: 7cm)[
    #align(center)[
      #laporan.mitra.nama-pendek, \
      #laporan.mitra.jabatan-pimpinan/pengelola #v(1.6cm)
      (...............................................)
    ]
  ]
]

#pagebreak()

#text(size: 12pt, weight: "bold")[Rekapitulasi hasil kuesioner]

#v(0.2cm)

Jumlah responden: #todo[jumlah] orang. Nilai tiap aspek adalah rata-rata dua pernyataan dari seluruh responden. Kategori: 1,00--1,80 sangat tidak puas; 1,81--2,60 tidak puas; 2,61--3,40 cukup; 3,41--4,20 puas; 4,21--5,00 sangat puas.

#table(
  columns: (0.8cm, 1fr, 2.6cm, 3cm),
  stroke: 0.5pt,
  inset: 5pt,
  align: (center, left, center, center),
  [*No.*], [*Aspek*], [*Rata-rata*], [*Kategori*],
  [1], [Kesesuaian solusi dengan kebutuhan mitra], [#todo[]], [#todo[]],
  [2], [Kemudahan penggunaan website profil dan PPDB online], [#todo[]], [#todo[]],
  [3], [Kualitas pelatihan dan pendampingan], [#todo[]], [#todo[]],
  [4], [Manfaat SOP dan tata kelola], [#todo[]], [#todo[]],
  [5], [Ketepatan waktu dan komunikasi tim], [#todo[]], [#todo[]],
  [6], [Keberlanjutan pemanfaatan], [#todo[]], [#todo[]],
  table.cell(colspan: 2)[*Rata-rata keseluruhan*], [#todo[]], [#todo[]],
)
