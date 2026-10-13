// Ringkasan PKM -- tata letak mengikuti "Template Ringkasan Penelitian&PKM" (Lampiran 29 panduan):
// banner judul oranye, kolom Pelaksana + Ringkasan Eksekutif + Luaran (halaman 1),
// Latar Belakang, Metode, Hasil dan Manfaat (halaman 2).
#import "common.typ": laporan, todo, doc

#show: doc
#set text(size: 10.5pt)
#set par(leading: 0.6em)

#let orange = rgb("#FFC000")
#let blue = rgb("#5b9bd5")

#let pill(body) = box(
  width: 100%,
  radius: 1em,
  inset: (y: 6pt, x: 8pt),
  fill: gradient.linear(rgb("#eaf2fa"), rgb("#bdd7ee"), angle: 90deg),
  stroke: 0.75pt + blue,
  align(center + horizon, text(weight: "bold", body)),
)

#let banner = block(
  width: 100%,
  fill: orange,
  inset: 12pt,
  align(center + horizon, text(size: 14pt, weight: "bold")[#laporan.judul]),
)

// ---------- Halaman 1 ----------

#banner
#v(0.5cm)

#grid(
  columns: (36%, 1fr),
  column-gutter: 0.8cm,
  [
    #pill[#box(image("/images/icon-person.png", height: 0.6cm), baseline: 25%) #h(0.2cm) Pelaksana]
    #v(0.4cm)
    #set par(justify: false, leading: 0.5em)
    #for p in (laporan.ketua,) + laporan.anggota [
      *#p.nama* \
      Jurusan Teknologi Informasi \
      Politeknik Negeri Malang \
      #p.email
      #v(0.3cm)
    ]
    *Skema PKM:* \
    #laporan.skema \
    *Mitra:* \
    #laporan.mitra.nama
  ],
  [
    #pill[Ringkasan Eksekutif]
    #v(0.3cm)
    #laporan.mitra.nama-pendek adalah lembaga PAUD yang belum memiliki website profil resmi maupun sistem pendaftaran peserta didik baru (PPDB) online, sehingga komunikasi dengan orang tua terbatas, data pendaftar tersebar secara manual, dan dokumentasi untuk akreditasi sulit dihimpun. Kegiatan pengabdian ini mentransformasikan layanan lembaga secara digital melalui pendampingan dan implementasi ABA-EDU Web, yaitu website profil dan portal PPDB online yang berjalan pada #laporan.mitra.situs.

    Kegiatan dilaksanakan secara partisipatif dalam delapan tahap: perencanaan dan konsolidasi, pengembangan website profil, implementasi PPDB online, penataan repositori data pendaftar, digitalisasi administrasi, pelatihan dan pendampingan literasi digital (lima sesi dengan pre-test dan post-test), pendampingan penyusunan SOP, serta evaluasi dan keberlanjutan. Peningkatan kompetensi pengelola diukur dengan N-Gain #todo[N-Gain rata-rata].

    *Kata kunci:* transformasi digital, PAUD, ABA-EDU Web, PPDB online, literasi digital, tata kelola sekolah

    #v(0.3cm)
    #pill[Luaran PKM]
    #v(0.3cm)
    #enum(
      [Peningkatan penerapan iptek pada mitra: dua kanal layanan digital resmi (website profil dan PPDB online) beserta analisis peningkatan level keberdayaan mitra.],
      [Artikel ilmiah pada Jurnal Pengabdian kepada Masyarakat Unindra #todo[status: submitted / accepted / published].],
      [Publikasi media massa #todo[URL] dan video kegiatan #todo[URL YouTube].],
      [Produk/teknologi tepat guna ABA-EDU Web dan SOP pengelolaan website dan PPDB.],
      [Hak Cipta program komputer ABA-EDU Web #todo[status: registered / granted].],
    )
  ],
)

#pagebreak()

// ---------- Halaman 2 ----------

#grid(
  columns: (1fr, 1fr),
  column-gutter: 0.8cm,
  [
    #pill[Latar Belakang]
    #v(0.3cm)
    Sebagai PAUD swasta, #laporan.mitra.nama-pendek dituntut memberi layanan berkualitas sekaligus memiliki administrasi yang akuntabel dan siap akreditasi. Namun yayasan belum memiliki website profil, pendaftaran masih manual, arsip tersebar pada flashdisk, laptop, dan dokumen cetak, dan literasi digital guru serta pengelola masih rendah.

    Kondisi ini membatasi transparansi lembaga, memperlambat pengarsipan dan pelaporan, serta menyulitkan penyiapan bukti akreditasi. Diperlukan intervensi teknologi yang disertai peningkatan kapasitas sumber daya manusia agar pemanfaatannya berkelanjutan.

    #v(0.4cm)
    #pill[Metode]
    #v(0.3cm)
    Pendekatan partisipatif berbasis kebutuhan dengan substitusi IPTEKS terpadu. Tim menyusun rencana bersama pimpinan yayasan, membangun dan mengaktifkan website profil serta modul PPDB online pada platform Kiddy School ERP, menata data pendaftar, dan melatih pengelola melalui lima sesi praktik langsung dengan pre-test dan post-test. Tim kemudian menyusun SOP bersama pengurus, menyerahterimakan sistem melalui berita acara, dan menunjuk admin internal sebagai pengelola berkelanjutan.
  ],
  [
    #pill[Hasil dan Manfaat]
    #v(0.3cm)
    ABA-EDU Web beroperasi di #laporan.mitra.situs dengan website profil responsif dan portal PPDB online TA 2026/2027. Pengelola mitra dilatih mengoperasikan sistem (N-Gain #todo[nilai]), SOP pengelolaan disahkan pimpinan yayasan #todo[tanggal], dan kepuasan mitra pada kuesioner akhir bernilai #todo[rata-rata skala 1--5].

    Manfaatnya bagi mitra: kanal informasi resmi yang meningkatkan kredibilitas lembaga, pendaftaran yang tertib dengan data terpusat, serta dasar dokumentasi digital untuk persiapan akreditasi. Model pendampingan ini dapat direplikasi pada PAUD lain karena platform yang digunakan bersifat multi-lembaga.

    #v(0.3cm)
    #figure(
      image("/images/web-beranda-atas.png", width: 100%),
      caption: [Halaman profil ABA-EDU Web (#laporan.mitra.situs).],
      numbering: n => [#n],
    )
  ],
)
