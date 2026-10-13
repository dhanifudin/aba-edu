// Buku panduan (manual book) ABA-EDU Web -- lampiran pendaftaran Hak Cipta program komputer
// dan bahan pelatihan pengelola. Tangkapan layar halaman publik diambil dari
// abs.halokes.com (images/web-*.png); halaman di balik login berupa kotak TODO sampai
// tangkapan layar tersedia (samarkan data pribadi anak dan orang tua).
#import "common.typ": laporan, todo

#let accent = rgb("#1e40af")
#let accent-soft = rgb("#eff6ff")
#let ink = rgb("#1f2937")
#let muted = rgb("#6b7280")
#let polos(nama) = nama.split(",").at(0).trim()

#set page(paper: "a4", margin: 2cm, numbering: "1", footer: context [
  #set text(size: 8.5pt, fill: muted)
  Buku Panduan ABA-EDU Web #h(1fr) #counter(page).display()
])
#set text(font: ("Noto Sans", "DejaVu Sans"), size: 10.5pt, lang: "id", region: "ID", fill: ink)
#set par(justify: false, leading: 0.7em, spacing: 1.1em)
#set heading(numbering: "1.1.")
#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  v(0.4cm)
  block(below: 0.5cm, sticky: true, text(size: 18pt, weight: "bold", fill: accent)[#counter(heading).display() #it.body])
}
#show heading.where(level: 2): it => { v(0.35cm, weak: true); block(below: 0.2cm, sticky: true, text(size: 12.5pt, weight: "bold")[#it]) }
#show figure.caption: it => text(size: 9pt, fill: muted, it)
#set table(stroke: (x: none, y: 0.5pt + rgb("#e2e8f0")), inset: 6pt)
#show table.cell.where(y: 0): it => { set text(weight: "bold", fill: accent); it }

#let tip(body) = block(width: 100%, fill: accent-soft, stroke: (left: 3pt + accent), inset: 8pt, body)
#let ph(nama, tinggi: 6cm) = block(width: 100%, height: tinggi, stroke: (paint: red, dash: "dashed"), inset: 8pt, align(center + horizon, text(fill: red, size: 9.5pt)[\[TODO: sisipkan tangkapan layar images/#(nama + ".png") (data disamarkan)\]]))

// ---------------------------------------------------------------- sampul
#page(numbering: none, footer: none)[
  #v(3cm)
  #align(center)[
    #image("/images/logo.png", width: 3cm)
    #v(1cm)
    #text(size: 28pt, weight: "bold", fill: accent)[ABA-EDU Web]
    #v(0.2cm)
    #text(size: 14pt)[Buku Panduan Penggunaan]
    #v(0.2cm)
    #text(size: 11pt, fill: muted)[Website Profil dan Sistem Pendaftaran Peserta Didik Baru (PPDB) Online]
    #v(2cm)
    #text(size: 11pt)[Disusun untuk #laporan.mitra.nama-pendek]
    #v(0.3cm)
    #text(size: 10pt, fill: muted)[Alamat sistem: #laporan.mitra.situs]
  ]
  #v(1fr)
  #align(center)[
    #text(size: 10pt, fill: muted)[Tim penyusun] \
    #text(size: 10pt)[#((laporan.ketua.nama,) + laporan.anggota.map(a => a.nama)).map(polos).join(" · ")] \
    #v(0.4cm)
    #text(size: 11pt, weight: "bold")[Politeknik Negeri Malang · #laporan.bulan-tahun-laporan]
  ]
]

#outline(title: [Daftar Isi], depth: 2)

= Pengantar

== Tentang ABA-EDU Web
ABA-EDU Web adalah aplikasi web untuk lembaga pendidikan anak usia dini yang menyediakan (1) website profil yang menampilkan identitas, visi dan misi, program, galeri, dan keunggulan lembaga, serta (2) portal PPDB online tempat orang tua membuat akun dan mendaftarkan anak. Pengelola yayasan memperbarui konten dan memverifikasi pendaftar melalui panel pengelolaan. Sistem berjalan pada platform Kiddy School ERP (halokes.com) dan dapat dibuka dari komputer maupun ponsel tanpa memasang aplikasi.

== Pengguna dan peran
#table(
  columns: (3.4cm, 1fr),
  [Peran], [Kegunaan],
  [Pengunjung/orang tua], [Membaca profil lembaga, membuat akun, dan mendaftarkan anak melalui portal PPDB.],
  [Operator Pendaftaran], [Memeriksa data dan dokumen pendaftar, memverifikasi atau menolak berkas.],
  [Admin Yayasan], [Mengelola akun petugas, konten profil, cabang sekolah, periode PPDB, dan rekap data.],
)

== Kebutuhan perangkat
- Peramban (browser) versi terbaru: Chrome, Firefox, Edge, atau Safari.
- Koneksi internet; komputer, tablet, atau ponsel.
- Untuk pendaftaran: berkas dalam bentuk foto atau pindaian yang jelas (kartu keluarga, akta kelahiran, pas foto 3x4, bukti pembayaran).

= Halaman Profil Lembaga

== Membuka website
Buka peramban dan ketik #laporan.mitra.situs. Sistem membawa Anda ke halaman profil yayasan. Menu pada bagian atas halaman memuat Beranda, Tentang Kami, Cabang TK/PAUD, Galeri Kegiatan, Keunggulan, dan Testimoni, serta tombol *Daftar PPDB Online* dan *Login*.

#figure(
  image("/images/web-beranda-atas.png", width: 100%),
  caption: [Bagian atas halaman profil: menu, ajakan pendaftaran, dan statistik lembaga.],
)

== Membaca informasi lembaga
Gulir ke bawah untuk membaca visi dan misi, daftar cabang sekolah, galeri kegiatan dan fasilitas, keunggulan lembaga, serta ulasan orang tua. Bagian *Cabang Sekolah* menampilkan unit pendidikan yang aktif dan menjadi pilihan saat pendaftaran.

#figure(
  image("/images/web-beranda-tengah.png", width: 100%),
  caption: [Bagian tengah halaman profil: cabang sekolah, galeri kegiatan, dan keunggulan.],
)

== Membuka dari ponsel
Tampilan menyesuaikan lebar layar, sehingga seluruh informasi dan menu dapat dibaca pada ponsel.

#align(center)[#figure(
  image("/images/web-beranda-mobile.png", width: 38%),
  caption: [Tampilan halaman profil pada ponsel.],
)]

= Pendaftaran Peserta Didik Baru (untuk Orang Tua)

== Membuka portal PPDB
Tekan tombol *Daftar PPDB Online* pada halaman profil. Portal menampilkan pilihan cabang sekolah tujuan dan daftar dokumen yang perlu disiapkan.

#figure(
  image("/images/web-pendaftaran.png", width: 100%),
  caption: [Portal PPDB Online TA 2026/2027.],
)

== Membuat akun orang tua
+ Pada kolom kanan, pilih tab *Buat Akun Baru*.
+ Isi nama lengkap, nomor telepon/WhatsApp, email (boleh dikosongkan), kata sandi, dan konfirmasi kata sandi.
+ Tekan tombol pembuatan akun. Bila ada kolom yang salah, sistem menampilkan pesan dan akun belum dibuat.

#tip[Gunakan kata sandi minimal 8 karakter dan jangan membagikannya. Nomor telepon dipakai pengelola untuk menghubungi Anda.]

#ph("manual-buat-akun", tinggi: 5cm)

== Masuk ke portal
Pilih tab *Masuk Portal*, isi email atau nomor telepon dan kata sandi, lalu tekan *Masuk ke Portal Sekarang*. Centang *Ingat Saya* hanya pada perangkat pribadi.

== Mendaftarkan anak
+ Pilih cabang sekolah tujuan.
+ Lengkapi formulir pendaftaran: data anak dan data orang tua/wali #todo[sesuaikan dengan kolom formulir yang tampil di sistem].
+ Unggah dokumen persyaratan: kartu keluarga dan akta kelahiran, pas foto anak (3x4, setengah badan), dan bukti pembayaran pendaftaran (struk atau transfer bank).
+ Periksa kembali, lalu kirim pendaftaran. Pantau status pendaftaran dari portal.

#ph("manual-formulir-pendaftaran", tinggi: 6cm)

= Panel Pengelolaan (untuk Admin dan Operator)

#tip[Bab ini memerlukan tangkapan layar dari akun admin. Isi langkah sesuai tampilan sistem yang berjalan.]

== Masuk sebagai petugas
Buka halaman login, masukkan email dan kata sandi akun petugas. Setiap petugas memakai akun sendiri sesuai SOP.

#ph("admin-dasbor", tinggi: 6cm)

== Mengelola konten profil
Admin memperbarui profil lembaga, visi dan misi, galeri, dan informasi kontak melalui menu pengelolaan profil #todo[nama menu]. Simpan perubahan, lalu periksa tampilan pada halaman publik dan pada ponsel.

== Mengelola cabang sekolah dan periode PPDB
Admin menambahkan cabang sekolah (nama, jenjang, alamat, kuota) dan mengaktifkan periode pendaftaran agar portal menampilkan pilihan cabang #todo[nama menu dan langkah].

#ph("admin-cabang", tinggi: 5cm)

== Memverifikasi pendaftar
+ Buka daftar pendaftar #todo[nama menu].
+ Pilih pendaftar, periksa data dan dokumen.
+ Verifikasi bila lengkap, atau tolak dengan catatan alasan bila kurang.
+ Ekspor rekap pendaftar pada akhir periode dan simpan sesuai SOP.

#ph("admin-pendaftar", tinggi: 6cm)

= Keamanan dan Data Pribadi

- Data anak dan orang tua adalah data pribadi; hanya Admin dan Operator yang berwenang boleh mengaksesnya.
- Jangan membagikan kata sandi; nonaktifkan akun petugas yang tidak lagi bertugas.
- Jangan mengirim berkas pendaftar melalui kanal publik atau grup pesan.
- Laporkan dugaan kebocoran data kepada pimpinan yayasan dan tim pendukung dalam 1 x 24 jam.

= Pertanyaan yang Sering Diajukan

#table(
  columns: (5cm, 1fr),
  [Pertanyaan], [Jawaban],
  [Pilihan cabang kosong.], [Cabang sekolah dan periode PPDB belum diaktifkan Admin. Hubungi pengelola yayasan.],
  [Lupa kata sandi.], [Gunakan tautan lupa kata sandi pada halaman login atau minta Admin menyetel ulang akun.],
  [Dokumen gagal diunggah.], [Pastikan berkas berupa foto atau pindaian yang jelas dan ukurannya tidak terlalu besar; coba lagi dengan jaringan yang stabil.],
  [Tampilan tidak sesuai pada ponsel.], [Perbarui peramban dan muat ulang halaman; bila masih terjadi, laporkan kepada tim pendukung.],
)

= Kontak dan Dukungan

#table(
  columns: (4cm, 1fr),
  [Pihak], [Kontak],
  [Tim pendukung Polinema], [#laporan.ketua.nama, #laporan.ketua.email, #laporan.ketua.hp],
  [Pengelola yayasan], [#laporan.mitra.nama-pendek, #laporan.mitra.alamat],
)
