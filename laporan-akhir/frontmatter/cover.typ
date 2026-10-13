#import "../config.typ": laporan

#align(right)[
  #box(stroke: 0.5pt, inset: 6pt, width: 30%, align(center)[#text(size: 11pt, laporan.jenis)])
]

#v(0.2cm)

#align(center)[
  #text(size: 13pt, weight: "bold")[LAPORAN AKHIR PENGABDIAN KEPADA MASYARAKAT]

  #v(0.2cm)
  #text(size: 12pt)[TENTANG]

  #v(0.2cm)
  #set par(justify: false)
  #text(size: 14pt, weight: "bold")[#upper(laporan.judul)]

  #v(0.4cm)
  #text(size: 11pt)[Kegiatan ini dibiayai dari Dana DIPA Politeknik Negeri Malang]

  #v(0.2cm)
  #text(size: 11pt)[Nomor DIPA: SP DIPA-#laporan.dipa-nomor]

  #v(0.4cm)
  #text(size: 11pt)[Oleh:]

  #v(0.15cm)
  *#laporan.ketua.nama* \
  NIDN. #laporan.ketua.nidn

  #v(0.2cm)
  #for a in laporan.anggota [
    *#a.nama* \
    NIDN. #a.nidn
    #v(0.05cm)
  ]

  #v(1fr)

  #image("/images/logo.png", width: 18%)

  #v(0.4cm)
  #text(size: 13pt, weight: "bold")[POLITEKNIK NEGERI MALANG]

  #v(0.2cm)
  #text(size: 13pt, weight: "bold")[#upper(laporan.bulan-tahun-laporan)]
]
