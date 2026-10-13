// Formulir Permohonan Pendaftaran Ciptaan (Sentra KI Polinema) untuk program komputer
// ABA-EDU Web. Tata letak disalin dari docs/form-hki.docx (A4, margin 1 cm, Times New
// Roman 10 pt). Pencipta = dosen tim pelaksana saja (ketua + anggota dari
// laporan-akhir/config.typ), tanpa mahasiswa. Alamat rumah, tanda tangan, dan pindaian KTP
// tiap pencipta belum tersedia sehingga muncul sebagai TODO.
#import "common.typ": laporan, todo, doc

#show: doc
#set page(margin: 1cm)
#set text(size: 10pt)
#set par(justify: false, leading: 0.4em)
// ---------------------------------------------------------------- data
#let pencipta = (laporan.ketua, ..laporan.anggota)
#let polos(nama) = nama.split(",").at(0).trim()
#let hp62(hp, sep: " ") = "+62" + sep + hp.slice(1)

#let jenis-ciptaan = "Program Komputer"
#let judul-ciptaan = "ABA-EDU Web: Website Profil dan Sistem Pendaftaran Peserta Didik Baru Online untuk Lembaga PAUD"
#let tanggal-surat = todo("tanggal surat")
#let tanggal-umum = todo("tanggal pertama kali diumumkan")

// Alamat rumah pencipta tidak tersedia pada dokumen sumber: isi sebelum dicetak.
#let alamat(p) = todo("alamat rumah " + polos(p.nama))
#let hp(p) = p.hp

#let kepala = laporan.pejabat.kepala-p3m.nama

#let uraian = [
  ABA-EDU Web adalah program komputer berbasis web yang digunakan lembaga pendidikan anak usia dini untuk menampilkan profil lembaga dan menerima pendaftaran peserta didik baru secara online. Program menyediakan halaman profil (visi dan misi, program, galeri kegiatan, keunggulan), portal pendaftaran dengan akun orang tua, pilihan cabang sekolah, formulir dan dokumen persyaratan, serta panel pengelolaan bagi admin yayasan untuk memverifikasi dan merekap data pendaftar. Program dibangun dengan kerangka kerja Laravel (PHP) dan antarmuka Bootstrap 5, berjalan pada platform Kiddy School ERP sebagai tenant #laporan.mitra.nama-pendek (#laporan.mitra.situs), dan dapat diakses dari komputer maupun ponsel.
]

// ---------------------------------------------------------------- helpers
#let rule = (bottom: 0.5pt + black)
#let dotted = (bottom: (paint: black, thickness: 0.5pt, dash: "dotted"))
#let none-stroke = none
// docs/form-hki.docx reserves a 914400 x 384810 EMU (2.54 cm x 1.07 cm) text box
// for "Materai 10.000,-" on both occurrences (Halaman 2 dan 4) -- but that box is
// sized only for the label text itself, not for a real meterai tempel fisik
// (~2.3 cm wide). Materai-slot uses that width with a proportionate square
// height, enough room for a physical stamp without an oversized empty gap.
#let materai = text(fill: rgb("#FF0000"))[Materai \ 10.000,-]
#let materai-slot = box(width: 2.3cm, height: 2.3cm, align(center + horizon, materai))
#let judul-tengah(body, bold: true) = align(center)[
  #underline(if bold { text(weight: "bold", body) } else { body })
]

// =====================================================================
// Halaman 1 - PERMOHONAN PENDAFTARAN CIPTAAN
// =====================================================================
#block(inset: (left: 11.9cm))[
  #set text(size: 8pt)
  #set par(leading: 0.3em)
  *Lampiran I* \
  *Peraturan Menteri Kehakiman R.I.* \
  *Nomor : M.01-HC.03.01 Tahun 1987*
  #v(-0.25em)
  #line(length: 100%, stroke: 0.5pt)
  #v(0.2em)
  Kepada Yth. #h(1em) : \
  Direktur Jenderal HKI \
  melalui Direktur Hak Cipta, \
  Desain Industri, Desain Tata Letak, \
  Sirkuit Terpadu dan Rahasia Dagang \
  di Jakarta
]

#v(2.2em)
#judul-tengah(bold: true)[PERMOHONAN PENDAFTARAN CIPTAAN]
#v(0.8em)

// roman | heading | num | label | : | value
#let isian(..rows, spacing: 1.5) = table(
  columns: (0.95cm, 2.75cm, 0.5cm, 3.4cm, 0.5cm, 1fr),
  stroke: none,
  inset: (x: 0.05cm, y: 0.4em * spacing),
  align: left + top,
  ..rows,
)
#let val(body, stroke: rule) = table.cell(stroke: stroke, body)
#let roman(n, body) = (table.cell(colspan: 6)[#n #h(0.65cm) #body],)

#isian(
  ..roman[I.][Pencipta :],
  [], [], [*1.*], [*Nama*], [:], val[*#pencipta.map(p => polos(p.nama)).join(", ")*],
  [], [], [2.], [Kewarganegaraan], [:], val[Indonesia],
  [], [], [3.], [Alamat], [:], val[#alamat(laporan.ketua)],
  [], [], [4.], [Telepon], [:], val[-],
  [], [], [5.], [No. HP/ E-mail], [:], val[#hp62(hp(laporan.ketua), sep: "") / #laporan.ketua.email],
  ..roman[II.][Pemegang Hak Cipta :],
  [], [], [1.], [Nama], [:], val[Politeknik Negeri Malang],
  [], [], [2.], [Kewarganegaraan], [:], val[Indonesia],
  [], [], [3.], [Alamat], [:], val[Jl. Soekarno-Hatta No. 9, Kelurahan Jatimulyo, Kecamatan Lowokwaru,],
  [], [], [], [], [], val[Jawa Timur, Kota Malang, Kodepos: 65141],
  [], [], [4.], [Telepon], [:], val[(0341) 404424],
  [], [], [5.], [No. HP/ E-mail], [:], val[\- / sentraki\@polinema.ac.id],
)

#v(0.2em)
#set par(leading: 0.55em)
#grid(
  columns: (0.95cm, 5.6cm, 0.3cm, 1fr),
  row-gutter: 0.55em,
  [III.], [Jenis dari Judul ciptaaan yang], [], [],
  [], [Dimohonkan], [:], [Jenis *#jenis-ciptaan* berjudul *#judul-ciptaan*],
)
#v(0.8em)
#grid(
  columns: (0.95cm, 5.6cm, 0.3cm, 1fr),
  row-gutter: 0.55em,
  [IV.], [Tanggal dan tempat di- \ umumkan untuk pertama kali di \ wilayah Indonesia atau di luar \ wilayah Indonesia], align(bottom)[:],
  align(bottom)[#tanggal-umum di Malang],
  [V.], [Uraian singkat], [:], par(justify: true, uraian),
)

#pagebreak()

// =====================================================================
// Halaman 2 - SURAT PENGALIHAN HAK CIPTA
// =====================================================================
#set par(leading: 0.4em)
#v(2.6em)
#judul-tengah[SURAT PENGALIHAN HAK CIPTA]
#v(2.2em)

#let p-gap = 0.3em
#block(inset: (left: 0.63cm, right: 1.25cm))[Yang bertanda tangan dibawah ini :]
#v(p-gap)
#for (i, p) in pencipta.enumerate() [
  #grid(
    columns: (0.75cm, 2.85cm, 0.3cm, 1fr),
    inset: (right: 2cm, rest: 0pt),
    row-gutter: 0.3em,
    [#(i + 1).], [Nama], [:], [#polos(p.nama)],
    [], [Alamat], [:], [#alamat(p)],
    [], [Email], [:], [#p.email],
    [], [No.HP], [:], [#hp62(hp(p))],
  )
  #v(0.1em)
]

#v(0.3em)
#block(inset: (left: 0.63cm, right: 1.25cm))[Adalah *Pihak I* selaku pencipta, dengan ini menyerahkan karya ciptaan kami kepada :]
#v(0.9em)
#grid(
  columns: (0.63cm, 3.0cm, 0.3cm, 1fr),
  row-gutter: 0.75em,
  [], [Nama], [:], [Politeknik Negeri Malang a/n #kepala],
  [], [Jabatan], [:], [Kepala P3M Politeknik Negeri Malang],
  [], [Alamat], [:], [Jl. Soekarno Hatta No. 9 , Malang -- Jawa Timur],
)
#v(1.2em)
#block(inset: (left: 0.63cm, right: 0.43cm))[
  #set par(justify: true, leading: 0.55em)
  Adalah *Pihak II* selaku Pemegang Hak Cipta berupa *#judul-ciptaan* untuk didaftarkan di Direktorat Hak Cipta, Desain Industri, Desain Tata Letak dan Sirkuit Terpadu dan Rahasia Dagang, Direktorat Jenderal Hak Kekayaan Intelektual, Kementerian Hukum dan Hak Azasi Manusia R.I.
]
#v(0.5em)
#block(inset: (left: 0.63cm, right: 1.25cm))[Demikianlah surat pengalihan hak ini kami buat, agar dapat dipergunakan sebagaimana mestinya.]
#v(1.2em)

#let ketua = pencipta.at(0)
#let lainnya = pencipta.slice(1)
#let kolom-ttd = (8.0cm, 2.2cm, 8.8cm)
#table(
  columns: kolom-ttd,
  stroke: none,
  align: center + top,
  inset: (x: 0.2cm, y: 0.3em),
  [], [], [Malang, #tanggal-surat],
  [Pemegang Hak Cipta], [], [Pencipta],
  [#v(1.6em)], [], [#v(1.6em) #materai-slot],
  [#v(1.6em) (#kepala)], [], [#v(1.6em) (#polos(ketua.nama))],
)

#pagebreak()

// Lanjutan kolom tanda tangan pencipta (seperti halaman 3 pada template): semua
// pindaian tanda tangan anggota dikumpulkan di satu halaman, tetap di kolom kanan.
#table(
  columns: kolom-ttd,
  stroke: none,
  align: center + top,
  inset: (x: 0.2cm, y: 0.3em),
  ..lainnya.map(p => (
    [], [], [#v(2.6cm)],
    [], [], [(#polos(p.nama)) #v(1.2em)],
  )).flatten(),
)

#pagebreak()

// =====================================================================
// Halaman 4 - SURAT PERNYATAAN
// =====================================================================
#set par(justify: true, leading: 0.75em)
#judul-tengah[SURAT PERNYATAAN]
#v(0.2em)

Yang bertanda tangan dibawah ini :
#v(-0.2em)
#let dval(body, width: 1fr) = table.cell(stroke: dotted, body)
#table(
  columns: (0.95cm, 3.6cm, 0.3cm, 10.5cm, 1fr),
  stroke: none,
  inset: (x: 0.05cm, y: 0.45em),
  align: left + top,
  [], [N a m a], [:], dval[Politeknik Negeri Malang], [],
  [], [Kewarganegaraan], [:], dval[Indonesia], [],
  [], [Alamat], [:], dval[Jl. Soekarno Hatta No. 9, Malang -- Jawa Timur], [],
)
#v(-0.2em)
Dengan ini menyatakan bahwa :

#set enum(indent: 0cm, body-indent: 0.75cm, spacing: 0.75em)
#set list(indent: 0.75cm, body-indent: 0.5cm, marker: text(size: 7pt)[▪], spacing: 0.75em)
#enum(
  [
    Karya Cipta yang saya mohonkan :
    #v(-0.3em)
    #table(
      columns: (0cm, 2.4cm, 0.3cm, 1fr, 2.3cm),
      stroke: none,
      inset: (x: 0.05cm, y: 0.45em),
      align: left + top,
      [], [Berupa], [:], dval[*#jenis-ciptaan*], [],
      table.cell(colspan: 4)[], [],
      [], [Berjudul], [:], table.cell(colspan: 2, stroke: dotted)[*#judul-ciptaan*],
    )
    #v(-0.1em)
    #list(
      [Tidak meniru dan tidak sama secara esensial dengan Karya Cipta milik pihak lain atau obyek kekayaan intelektual lainnya sebagaimana dimaksud dalam Pasal 68 ayat (2);],
      [Bukan merupakan Ekspresi Budaya Tradisional sebagaimana dimaksud dalam Pasal 38;],
      [Bukan merupakan Ciptaan yang tidak diketahui penciptanya sebagaimana dimaksud dalam Pasal 39;],
      [Bukan merupakan hasil karya yang tidak dilindungi Hak Cipta sebagaimana dimaksud dalam Pasal 41 dan 42;],
      [Bukan merupakan Ciptaan seni lukis yang berupa logo atau tanda pembeda yang digunakan sebagai merek dalam perdagangan barang/jasa atau digunakan sebagai lambang organisasi, badan usaha, atau badan hukum sebagaimana dimaksud dalam Pasal 65 dan;],
      [Bukan merupakan Ciptaan yang melanggar norma agama, norma susila, ketertiban umum, pertahanan dan keamanan negara atau melanggar peraturan perundang-undangan sebagaimana dimaksud dalam Pasal 74 ayat (1) huruf d Undang-Undang Nomor 28 Tahun 2014 tentang Hak Cipta.],
    )
  ],
  [Sebagai pemohon mempunyai kewajiban untuk menyimpan asli contoh ciptaan yang dimohonkan dan harus memberikan apabila dibutuhkan untuk kepentingan penyelesaian sengketa perdata maupun pidana sesuai dengan ketentuan perundang-undangan.],
  [Karya Cipta yang saya mohonkan pada Angka 1 tersebut di atas tidak pernah dan tidak sedang dalam sengketa pidana dan/atau perdata di Pengadilan.],
  [
    Dalam hal ketentuan sebagaimana dimaksud dalam Angka 1 dan Angka 3 tersebut di atas saya / kami langgar, maka saya / kami bersedia secara sukarela bahwa:
    #enum(
      numbering: "a.",
      indent: 0cm,
      body-indent: 0.5cm,
      [Permohonan karya cipta yang saya ajukan dianggap ditarik kembali; atau],
      [Karya Cipta yang telah terdaftar dalam Daftar Umum Ciptaan Direktorat Hak Cipta, Direktorat Jenderal Hak Kekayaan Intelektual, Kementerian Hukum Dan Hak Asasi Manusia R.I dihapuskan sesuai dengan ketentuan perundang-undangan yang berlaku.],
      [Dalam hal kepemilikan Hak Cipta yang dimohonkan secara elektronik sedang dalam berperkara dan/atau sedang dalam gugatan di Pengadilan maka status kepemilikan surat pencatatan elektronik tersebut ditangguhkan menunggu putusan Pengadilan yang berkekuatan hukum tetap.],
    )
  ],
)
#v(0.2em)
#block(inset: (left: 0.2cm))[Demikian Surat pernyataan ini saya/kami buat dengan sebenarnya dan untuk dipergunakan sebagimana mestinya.]
#v(1.2em)
#block(inset: (left: 12.3cm))[
  #set par(justify: false)
  Malang, #tanggal-surat \
  #h(0.4cm) Yang menyatakan,
  #v(1.2em)
  #align(center, materai-slot)
  #v(2.4em)
  (#kepala)
]

#pagebreak()

// =====================================================================
// Halaman 5 - lampiran KTP pencipta
// =====================================================================
#set par(justify: false, leading: 0.4em)
#v(1.5cm)
#for p in pencipta [
  #rect(width: 8.4cm, height: 5.4cm, stroke: (dash: "dashed"), inset: 0.4cm)[
    #todo("scan KTP " + polos(p.nama))
  ]
  #v(0.3cm)
]
