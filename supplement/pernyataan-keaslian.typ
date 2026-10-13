// Surat Pernyataan Keaslian laporan akhir (format Lampiran 8 panduan): dicetak di atas kop
// P3M, diberi meterai, ditandatangani, dipindai, lalu disimpan sebagai
// laporan-akhir/scan/pernyataan-keaslian.pdf (dibaca di bagian Surat Pernyataan Keaslian).
#import "common.typ": laporan, todo, doc, letterhead

#show: doc

#letterhead()

#align(center)[
  #underline[#text(size: 13pt, weight: "bold")[SURAT PERNYATAAN KEASLIAN LAPORAN AKHIR]]
]

#v(0.5cm)

Yang bertanda tangan di bawah ini:

#table(
  columns: (4.3cm, 0.4cm, 1fr),
  stroke: none,
  inset: (left: 0pt, rest: 5pt),
  row-gutter: 6pt,
  [Nama], [:], [#laporan.ketua.nama],
  [NIP/NIDN/NIDK], [:], [#laporan.ketua.nip / #laporan.ketua.nidn],
  [Pangkat/Golongan], [:], [#laporan.ketua.pangkat],
  [Jabatan Fungsional], [:], [#laporan.ketua.jabatan],
)

#v(0.2cm)

Dengan ini menyatakan bahwa Pengabdian pada Masyarakat saya dengan judul: *"#laporan.judul"* yang dilaksanakan dalam skema #laporan.skema untuk tahun anggaran #laporan.tahun *bersifat original dan belum dibiayai oleh lembaga/sumber dana lain*, serta laporan akhir ini disusun berdasarkan hasil kegiatan pengabdian tersebut.

Bilamana di kemudian hari ditemukan ketidaksesuaian dengan pernyataan ini, maka saya bersedia dituntut dan diproses sesuai dengan ketentuan yang berlaku dan mengembalikan seluruh biaya penugasan yang sudah diterima ke Kas Negara.

Demikian pernyataan ini dibuat dengan sesungguhnya dan dengan sebenar-benarnya.

#v(1cm)

#align(right)[
  #box[#align(left)[
    Malang, 13 Oktober 2026

    Yang Menyatakan,

    #v(0.2cm)
    #box(width: 2.6cm, height: 1.8cm, stroke: (paint: luma(200), dash: "dashed"), align(center + horizon, text(size: 7pt, fill: luma(150))[Meterai \ Rp 10.000]))
    #v(0.2cm)

    #laporan.ketua.nama \
    NIP. #laporan.ketua.nip
  ]]
]
