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
  #image("/images/web-beranda-hero.png", width: 78%)
  Halaman profil ABA-EDU Web
]

#pagebreak()

#lbl[FOTO PENGABDIAN MASYARAKAT:]
#v(0.2cm)
#block(width: 100%, height: 7cm, stroke: (paint: red, dash: "dashed"), inset: 8pt, align(center + horizon, todo[sisipkan foto pelatihan/pendampingan di #laporan.mitra.nama-pendek (images/pelatihan-1.png)]))
#v(0.3cm)
#block(width: 100%, height: 7cm, stroke: (paint: red, dash: "dashed"), inset: 8pt, align(center + horizon, todo[sisipkan foto serah terima sistem/penandatanganan SOP (images/bukti-sop-bast.png)]))
