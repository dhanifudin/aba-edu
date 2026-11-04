// Form Teknologi Tepat Guna (TTG) / Model / IPTEKSB -- format Lampiran 71 docs/panduan.pdf.
#import "common.typ": laporan, todo, doc, letterhead

#show: doc
#set text(size: 10pt)
#set par(justify: false)

#letterhead()

#align(center)[
  #text(size: 13pt, weight: "bold")[FORM TEKNOLOGI TEPAT GUNA / MODEL / IPTEKSB] \
  #text(size: 12pt, weight: "bold")[KEGIATAN PENGABDIAN PADA MASYARAKAT]
]
#v(0.3cm)

#let lbl(body) = text(weight: "bold", body)

#lbl[JUDUL PENGABDIAN PADA MASYARAKAT:] \
#laporan.judul

#v(0.3cm)
#lbl[NAMA / JURUSAN / NIP PELAKSANA PENGABDIAN PADA MASYARAKAT:]
#for (i, p) in ((laporan.ketua,) + laporan.anggota).enumerate() [
  \ #(i + 1). #p.nama / Jurusan Teknologi Informasi / NIP. #p.nip
]

#v(0.3cm)
#lbl[NAMA TTG / MODEL / IPTEKSB:] \
ABA-EDU Web: website profil dan sistem pendaftaran peserta didik baru (PPDB) online.

#v(0.3cm)
#lbl[URAIAN TTG / MODEL / IPTEKSB:] \
ABA-EDU Web adalah aplikasi web berbasis Laravel yang berjalan pada platform Kiddy School ERP sebagai tenant #laporan.mitra.nama-pendek (#laporan.mitra.situs). Aplikasi menyediakan website profil lembaga (visi dan misi, program, galeri kegiatan, keunggulan) dan portal PPDB online (akun orang tua, pilihan cabang sekolah, formulir pendaftaran, dokumen persyaratan) dengan penyimpanan data terpusat dan pengelolaan oleh admin yayasan. Teknologi ini dipilih karena dapat langsung dipakai pengelola tanpa server sendiri, mudah diakses dari ponsel, dan dapat dikembangkan ke modul rapor digital dan pembelajaran pada platform yang sama.

#v(0.3cm)
#lbl[FOTO TTG:]
#v(0.2cm)
#align(center)[
  #image("/images/web-beranda-hero.jpg", width: 78%)
  Halaman profil ABA-EDU Web
]

#pagebreak()

#lbl[FOTO PENGABDIAN MASYARAKAT:]
#v(0.2cm)
#grid(
  columns: (1.5fr, 0.7fr),
  column-gutter: 0.6cm,
  align: top + center,
  [#image("/images/web-pendaftaran.jpg", width: 100%) \ #text(size: 9pt)[Portal PPDB Online TA 2026/2027]],
  [#image("/images/web-beranda-mobile-atas.jpg", width: 100%) \ #text(size: 9pt)[Tampilan pada ponsel]],
)
#v(0.3cm)
Gambar menunjukkan hasil kegiatan yang telah beroperasi pada #laporan.mitra.situs.
