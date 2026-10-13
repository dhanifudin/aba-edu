// Dokumen Prototype/ Model/ Kebijakan -- format Lampiran 69 docs/panduan.pdf
// (Template Dokumen Prototipe/ Teknologi Tepat Guna/ Model) untuk luaran IPTEKSB ABA-EDU Web.
#import "common.typ": laporan, todo, doc, letterhead

#show: doc
#set text(size: 10.5pt)
#set par(justify: false)

#letterhead()

#align(center)[#text(size: 16pt, weight: "bold")[Dokumen Prototype/ Model/ Kebijakan]]
#v(0.2cm)

#let lbl(body) = text(weight: "bold", body)
#table(
  columns: (5cm, 1fr),
  stroke: 0.5pt,
  inset: 6pt,
  align: left + top,
  lbl[Nama ketua dan anggota],
  [
    Ketua: #laporan.ketua.nama (NIDN. #laporan.ketua.nidn) \
    Anggota: \
    #for (i, a) in laporan.anggota.enumerate() [#(i + 1). #a.nama (NIDN. #a.nidn) \ ]
  ],
  lbl[Jurusan / Program Studi], [Jurusan Teknologi Informasi / Teknik Informatika, Politeknik Negeri Malang],
  lbl[Judul prototype/ Model/ Kebijakan], [Prototype: ABA-EDU Web, website profil dan sistem pendaftaran peserta didik baru (PPDB) online untuk #laporan.mitra.nama-pendek],
  lbl[TKT], [#todo[tentukan TKT sesuai pengukuran TKT perangkat lunak (Lampiran 2 panduan)]],
  lbl[Fungsi],
  [
    ABA-EDU Web mendigitalkan layanan informasi dan pendaftaran lembaga PAUD. Website profil menampilkan identitas, visi dan misi, program, galeri kegiatan, dan keunggulan lembaga secara responsif. Modul PPDB online memungkinkan orang tua membuat akun, memilih cabang sekolah tujuan, mengisi formulir, dan mengunggah dokumen persyaratan, sedangkan pengelola yayasan memverifikasi dan merekap pendaftar pada basis data terpusat.

    Alamat operasional: #laporan.mitra.situs.
  ],
  lbl[Spesifikasi teknis (untuk prototype)],
  [
    - Platform multi-lembaga Kiddy School ERP (halokes.com); ABA-EDU Web berjalan sebagai tenant #raw("/y/ABS") pada subdomain #laporan.mitra.situs.
    - Kerangka kerja Laravel (PHP), antarmuka Bootstrap 5, diakses melalui jaringan Cloudflare; desain responsif.
    - Delapan kemampuan sesuai surat kesediaan mitra: website profil; modul PPDB online (formulir, unggah dokumen, penyimpanan terpusat, rekap otomatis); manajemen data pendaftar (lihat, verifikasi, ubah, ekspor); manajemen konten website (berita, pengumuman, foto kegiatan); desain responsif; manajemen pengguna berbasis peran (Admin Yayasan, Operator Pendaftaran); keamanan data dasar (otentikasi admin, validasi input, pencadangan data); dasbor ringkasan statistik pendaftaran.
    - Status tiap kemampuan: lihat BAB V laporan akhir, Tabel Kesesuaian Spesifikasi #todo[konfirmasi kemampuan yang aktif].
  ],
)

#pagebreak()

#table(
  columns: (5cm, 1fr),
  stroke: 0.5pt,
  inset: 6pt,
  align: left + top,
  [#lbl[Status KI \*] \ (coret yang tidak perlu)],
  [
    #lbl[Judul KI:] ABA-EDU Web (program komputer) \
    #v(0.2cm)
    Status : #strike[Belum didaftarkan]/Terdaftar/Granted #todo[pilih status dan nomor pencatatan] \
    Jenis : Hak Cipta/#strike[Paten]/#strike[Paten Sederhana]
  ],
)

#v(0.4cm)
#lbl[Keterangan]
#v(0.1cm)

- *Tampilan produk.* Halaman profil lembaga dan portal PPDB ABA-EDU Web ditunjukkan pada gambar berikut.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 0.5cm,
  figure(
    image("/images/web-beranda-atas.png", width: 100%),
    caption: [Halaman profil lembaga.],
    numbering: none,
  ),
  figure(
    image("/images/web-pendaftaran.png", width: 100%),
    caption: [Portal PPDB Online TA 2026/2027.],
    numbering: none,
  ),
)

- *Cara kerja.* Orang tua membuka website profil, memilih menu PPDB, membuat akun, memilih cabang sekolah tujuan, mengisi formulir pendaftaran, dan mengunggah dokumen persyaratan (kartu keluarga, akta kelahiran, pas foto, dan bukti pembayaran). Admin atau operator yayasan masuk melalui panel pengelolaan untuk memperbarui konten profil, mengelola cabang dan periode PPDB, serta memverifikasi dan merekap data pendaftar. Data tersimpan pada basis data terpusat dan dilindungi otentikasi, validasi input, dan pencadangan data.
- *Pemeliharaan.* Pengelolaan sehari-hari dilakukan admin internal yayasan berdasarkan SOP pengelolaan website dan PPDB; platform dipelihara tim pelaksana.
