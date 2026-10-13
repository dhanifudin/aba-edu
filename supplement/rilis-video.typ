// (a) Naskah berita rilis -- Lampiran 78 panduan (publikasi media massa).
// (b) Naskah dan storyboard video kegiatan -- Lampiran 73 panduan (maks. 5 menit).
#import "common.typ": laporan, todo, doc, letterhead

#show: doc
#set text(size: 10.5pt)
#set par(leading: 0.6em)

#letterhead()

#align(center)[#text(size: 13pt, weight: "bold")[NASKAH BERITA RILIS DAN STORYBOARD VIDEO KEGIATAN]]
#v(0.2cm)

= A. Naskah Berita Rilis
#set heading(numbering: none)
#show heading.where(level: 1): it => block(above: 0.6em, below: 0.4em, text(size: 12pt, weight: "bold", it))

*Ketentuan (Lampiran 78):* memuat nama Polinema sebagai penyandang dana, judul dan skema kegiatan, nama mitra, dan tahun pelaksanaan. Untuk skema Reguler, berita dapat dimuat di laman www.polinema.ac.id atau media massa lokal/nasional; rilis disampaikan kepada Pokja Humas sesuai templat dan alur Nota Dinas Nomor 120/DIR/TU/2024. Foto kegiatan wajib mendapat persetujuan dan tidak menampilkan data pribadi anak.

#block(stroke: 0.5pt, inset: 10pt, width: 100%)[
  #set par(justify: true)
  *Dosen Polinema Dampingi Transformasi Digital PAUD Aboe Bakar Soemijati melalui ABA-EDU Web*

  MALANG -- Tim dosen Jurusan Teknologi Informasi Politeknik Negeri Malang (Polinema) mendampingi #laporan.mitra.nama-pendek di Kelurahan Polehan, Kecamatan Blimbing, Kota Malang, dalam transformasi digital layanan pendidikan anak usia dini. Kegiatan berjudul "#laporan.judul" ini merupakan program Pengabdian kepada Masyarakat skema #laporan.skema tahun #laporan.tahun yang dibiayai Dana DIPA Polinema dan diketuai #laporan.ketua.nama, bersama #(laporan.anggota.len()) dosen anggota serta mahasiswa.

  Selama ini yayasan belum memiliki website resmi dan masih menerima pendaftaran siswa baru secara manual. Melalui program ini, tim membangun dan mengaktifkan ABA-EDU Web, yaitu website profil lembaga dan portal pendaftaran peserta didik baru (PPDB) online yang dapat diakses pada #laporan.mitra.situs.

  Tim juga melatih guru dan pengelola yayasan dalam lima sesi praktik langsung dan menyusun Standar Operasional Prosedur pengelolaan website dan PPDB. "#todo[kutipan ketua tim: tujuan dan harapan kegiatan]," ujar #laporan.ketua.nama. Pimpinan yayasan, #laporan.mitra.pimpinan, menyampaikan, "#todo[kutipan pimpinan yayasan: manfaat yang dirasakan]."

  Hasil pelatihan menunjukkan peningkatan kemampuan pengelola dengan N-Gain #todo[nilai]. Dengan sistem ini, orang tua dapat mengenal sekolah dan mendaftar dari ponsel, sedangkan yayasan memiliki data pendaftar yang tertib sebagai dasar dokumentasi akreditasi. Ke depan, yayasan berencana mengadopsi modul rapor digital dan pembelajaran pada platform yang sama.

  #text(size: 9pt)[Foto: #todo[foto kegiatan dan keterangan foto]. Narahubung: #laporan.ketua.nama, #laporan.ketua.email.]
]

= B. Naskah dan Storyboard Video Kegiatan

*Ketentuan (Lampiran 73):* durasi maksimal 5 menit; mencantumkan logo Polinema; berupa rekaman aktivitas (bukan kumpulan foto); narasi latar belakang, tujuan, dan hasil sepanjang 50--100 kata; memuat testimoni mitra; mencantumkan tautan berita terkait di www.polinema.ac.id (bila rilis belum tersedia, cukup www.polinema.ac.id); memuat tagar #raw("#polinema #polinemaprima"); resolusi minimal 720p, landscape; diunggah ke kanal YouTube Polinema/P3M.

*Kartu pembuka (wajib):*
- Judul dan skema: #laporan.judul; #laporan.skema.
- Ketua dan anggota beserta NIDN: #laporan.ketua.nama (#laporan.ketua.nidn)#for a in laporan.anggota [; #a.nama (#a.nidn)].
- Nama instansi: Politeknik Negeri Malang (POLINEMA).
- Nama mitra: #laporan.mitra.nama.
- Tahun pelaksanaan: #laporan.tahun.

#let narasi = "Yayasan Aboe Bakar Soemijati mengelola PAUD yang belum memiliki website resmi dan pendaftaran online. Tim Politeknik Negeri Malang mendampingi yayasan melalui program pengabdian kepada masyarakat. Hasilnya, ABA-EDU Web kini aktif sebagai website profil dan portal pendaftaran siswa baru. Guru dan pengelola dilatih mengoperasikannya secara mandiri, dan prosedur pengelolaan disahkan dalam SOP. Orang tua dapat mengenal sekolah dan mendaftar dari ponsel, sedangkan yayasan memiliki data yang lebih tertib untuk akreditasi."
*Narasi (#narasi.split().len() kata):*

#block(inset: (left: 0.6cm))[_#narasi _]

#v(0.2cm)

#table(
  columns: (0.8cm, 2.2cm, 5.2cm, 5cm, 1.8cm),
  stroke: 0.5pt,
  inset: 5pt,
  align: left + top,
  [*No.*], [*Adegan*], [*Visual (rekaman aktivitas)*], [*Teks layar / suara*], [*Durasi*],
  [1], [Pembuka], [Logo Polinema, kartu pembuka (judul, tim dan NIDN, mitra, tahun)], [Teks layar sesuai kartu pembuka], [0:15],
  [2], [Latar belakang], [Suasana PAUD, kegiatan administrasi manual (tanpa menampilkan wajah anak yang tidak mendapat persetujuan)], [Narasi kalimat 1--2], [0:30],
  [3], [Pengembangan], [Tim berdiskusi dengan pengurus; layar komputer saat website profil dan portal PPDB dioperasikan], [Narasi kalimat 3], [0:40],
  [4], [Pelatihan], [Sesi praktik langsung guru/pengelola mengelola konten dan memverifikasi pendaftar], [Narasi kalimat 4; teks layar: N-Gain #todo[nilai]], [0:50],
  [5], [Hasil], [Tampilan website di ponsel; orang tua mencoba mendaftar; rapat penandatanganan SOP/serah terima], [Narasi kalimat 5], [0:40],
  [6], [Testimoni mitra], [Pimpinan yayasan menyampaikan manfaat kegiatan (wawancara singkat)], [Suara pimpinan: #todo[testimoni]], [0:40],
  [7], [Penutup], [Foto bersama tim dan mitra (bila ada); tautan berita], [Teks layar: berita di www.polinema.ac.id #todo[URL berita]; tagar #raw("#polinema #polinemaprima")], [0:25],
  table.cell(colspan: 4, align: right)[*Total*], [*±3:40*],
)

#v(0.2cm)
*Teknis:* resolusi 1280x720 atau lebih, landscape; musik latar tanpa hak cipta; takarir bahasa Indonesia; tautan YouTube dicatat pada Lampiran 6 laporan akhir: #todo[URL].
