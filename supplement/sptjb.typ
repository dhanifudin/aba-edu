// Surat Pernyataan Tanggung Jawab Belanja (Lampiran 28 panduan) -- draf untuk dicetak, diberi
// meterai, ditandatangani, dan dipindai ke laporan-akhir/scan/sptjb.pdf (Lampiran 5).
#import "common.typ": laporan, todo, doc, letterhead

#show: doc
#set text(size: 10.5pt)
#set par(leading: 0.55em)

#letterhead()

#align(center)[
  #underline[#text(size: 13pt, weight: "bold")[SURAT PERNYATAAN TANGGUNG JAWAB BELANJA]]
]

#v(0.1cm)

Yang bertanda tangan di bawah ini:

#table(
  columns: (4.3cm, 0.4cm, 1fr),
  stroke: none,
  inset: (left: 0pt, rest: 5pt),
  row-gutter: 6pt,
  [Nama], [:], [#laporan.ketua.nama],
  [Alamat], [:], [#laporan.ketua.alamat],
  [Skema #strike[Penelitian]/PKM], [:], [#laporan.skema],
)

#v(0.15cm)

Berdasarkan Surat Perjanjian/Kontrak Nomor SP DIPA-#laporan.dipa-nomor mendapatkan Anggaran Pengabdian sebesar Rp. #laporan.biaya,-, dengan judul "#laporan.judul".

#v(0.2cm)

Dengan ini menyatakan bahwa:

#enum(
  [
    Biaya kegiatan #strike[penelitian]/PKM di bawah ini meliputi:

    #v(0.2cm)

    #table(
      columns: (1fr, 10fr, 3fr),
      stroke: 1pt,
      align: (center + horizon, left + horizon, right + horizon),
      [No], align(center)[Uraian], align(center)[Jumlah (Rp)],
      [01], [*Teknologi dan Inovasi* (hosting dan domain, pengembangan ABA-EDU Web, validasi kompatibilitas dan conformance testing)], [4.350.000],
      [02], [*Pelatihan* (konsumsi peserta pelatihan)], [1.000.000],
      [03], [*Perjalanan* (observasi, pelatihan dan pendampingan, evaluasi)], [1.150.000],
      [04], [*Pelaporan, Luaran Wajib dan Luaran Tambahan* (publikasi ilmiah, dokumentasi video, Hak Cipta)], [1.500.000],
      [], align(center)[*Jumlah*], [*8.000.000*],
    )

  ],
  [Jumlah uang tersebut pada angka 1, benar-benar dikeluarkan untuk pelaksanaan kegiatan #strike[penelitian]/PKM dimaksud.],
)

#v(0.15cm)

Demikian surat pernyataan ini dibuat dengan sebenarnya.

#v(0.4cm)

#align(right)[
  #box[#align(left)[
    Malang, 13 Oktober 2026

    Ketua,

    #v(0.3cm)
    #text(size: 9pt, fill: luma(120))[(meterai Rp 10.000)]
    #v(1.1cm)

    #laporan.ketua.nama \
    NIDN. #laporan.ketua.nidn
  ]]
]
