// SOP Pengelolaan Website dan PPDB ABA-EDU Web -- untuk disahkan pimpinan yayasan.
// Dokumen milik mitra; kop berupa teks (tanpa logo) agar dapat dipindahkan ke kop surat yayasan.
#import "common.typ": laporan, todo, doc

#show: doc
#set text(size: 10.5pt)
#set par(leading: 0.6em)
#set heading(numbering: "1.")
#show heading.where(level: 1): it => block(above: 0.8em, below: 0.4em, text(size: 11pt, weight: "bold", it))

#align(center)[
  #text(size: 13pt, weight: "bold")[#upper(laporan.mitra.nama-pendek)] \
  #text(size: 11pt)[Lembaga Pendidikan Anak Usia Dini KB & TK Rumah Bintang Kecil] \
  #text(size: 9.5pt)[#laporan.mitra.alamat]
  #line(length: 100%, stroke: 1.2pt)
]

#v(0.1cm)

#table(
  columns: (3.4cm, 1fr, 3.4cm, 3.6cm),
  stroke: 0.5pt,
  inset: 5pt,
  align: left + horizon,
  [*Judul SOP*], table.cell(colspan: 3)[*Pengelolaan Website Profil dan PPDB Online ABA-EDU Web*],
  [Nomor SOP], [#todo[nomor SOP]], [Tanggal berlaku], [#todo[tanggal]],
  [Revisi], [0], [Disusun oleh], [Tim PKM Polinema bersama pengurus yayasan],
)

= Tujuan
Menjamin website profil dan portal PPDB online #laporan.mitra.situs dikelola secara tertib, aman, dan berkelanjutan oleh pengelola yayasan.

= Ruang Lingkup
Berlaku bagi Admin Yayasan dan Operator Pendaftaran dalam pengelolaan akun, konten profil, periode dan cabang PPDB, verifikasi berkas pendaftar, pencadangan data, dan pelindungan data pribadi.

= Definisi
- *ABA-EDU Web:* website profil dan sistem PPDB online yang berjalan pada platform Kiddy School ERP.
- *Admin Yayasan:* pengelola yang berwenang atas seluruh pengaturan sistem.
- *Operator Pendaftaran:* petugas yang memproses data pendaftar.
- *PPDB:* penerimaan peserta didik baru.

= Peran dan Tanggung Jawab
#table(
  columns: (3.6cm, 1fr),
  stroke: 0.5pt,
  inset: 5pt,
  [*Admin Yayasan*], [Mengelola akun pengguna dan hak akses; memperbarui konten profil; membuka dan menutup periode serta cabang PPDB; memantau rekap pendaftar; melaporkan kendala kepada tim pendukung.],
  [*Operator Pendaftaran*], [Memeriksa kelengkapan data dan dokumen pendaftar; memverifikasi atau menolak berkas disertai alasan; menghubungi orang tua bila ada kekurangan berkas.],
  [*Pimpinan Yayasan*], [Menetapkan Admin dan Operator; menyetujui jadwal PPDB; meninjau laporan evaluasi.],
  [*Tim pendukung (Polinema)*], [Memberi dukungan teknis platform dan bimbingan penggunaan sesuai kesepakatan #todo[masa dukungan].],
)

= Prosedur
== Pengelolaan akun dan hak akses
+ Pimpinan menetapkan nama Admin dan Operator secara tertulis.
+ Admin membuat akun individual untuk tiap petugas dengan peran sesuai tugas; akun tidak dipakai bersama.
+ Kata sandi minimal 8 karakter, tidak dibagikan, dan diganti bila petugas berganti atau dicurigai bocor.
+ Akun petugas yang tidak lagi bertugas dinonaktifkan pada hari yang sama.

== Pembaruan konten profil
+ Admin meninjau profil lembaga, visi dan misi, program, galeri, dan kontak setiap bulan dan setiap ada perubahan kegiatan.
+ Foto kegiatan yang memuat wajah anak hanya diunggah dengan persetujuan orang tua.
+ Admin memeriksa tampilan pada ponsel setelah setiap pembaruan.

== Pembukaan periode dan cabang PPDB
+ Pimpinan menyetujui jadwal, kuota, dan persyaratan PPDB.
+ Admin mengaktifkan cabang sekolah tujuan dan periode pendaftaran serta memeriksa bahwa portal dapat menerima pendaftaran.
+ Admin mengumumkan jadwal PPDB melalui website dan kanal komunikasi yayasan.

== Verifikasi berkas pendaftar
+ Operator memeriksa data anak, data orang tua, kartu keluarga, akta kelahiran, pas foto, dan bukti pembayaran.
+ Berkas yang lengkap diverifikasi; berkas yang kurang atau tidak jelas ditolak dengan catatan alasan.
+ Operator menyelesaikan verifikasi paling lambat #todo[jumlah] hari kerja sejak pendaftaran diterima.
+ Rekap pendaftar diekspor pada akhir periode dan disimpan oleh yayasan.

== Pencadangan dan keamanan data
+ Pencadangan basis data dilakukan berkala pada sisi platform #todo[konfirmasi jadwal dan penanggung jawab].
+ Admin mengekspor rekap pendaftar setiap akhir periode PPDB dan menyimpannya pada penyimpanan yayasan.
+ Data pribadi anak dan orang tua hanya diakses petugas berwenang dan tidak dikirim melalui kanal publik.
+ Kebocoran atau penyalahgunaan data dilaporkan kepada Pimpinan dan tim pendukung dalam 1 x 24 jam.

== Penanganan keluhan dan evaluasi
+ Keluhan orang tua atau kendala teknis dicatat Operator dan diteruskan kepada Admin; kendala platform diteruskan kepada tim pendukung.
+ Admin menyusun laporan evaluasi singkat setiap akhir periode PPDB (jumlah pendaftar, kendala, perbaikan) untuk Pimpinan.
+ SOP ditinjau setidaknya setahun sekali.

= Dokumen Terkait
Buku panduan ABA-EDU Web; Berita Acara Serah Terima; kuesioner kepuasan mitra.

#v(0.6cm)

#grid(
  columns: (1fr, 1fr),
  gutter: 0.8cm,
  align(center)[Disusun oleh, \ Ketua Tim PKM Polinema #v(1.8cm) *#laporan.ketua.nama* \ NIDN. #laporan.ketua.nidn],
  align(center)[Malang, #todo[tanggal] \ Disahkan oleh, \ #laporan.mitra.jabatan-pimpinan #v(1.8cm) *#laporan.mitra.pimpinan* \ #laporan.mitra.nama-pendek],
)
