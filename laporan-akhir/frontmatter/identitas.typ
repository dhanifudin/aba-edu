#import "../config.typ": laporan

// Lembar identitas dan uraian umum laporan pengabdian (panduan Lampiran 14).
// Semua isian dibaca dari config.typ agar konsisten dengan sampul dan halaman pengesahan.
#heading(level: 1, numbering: none, outlined: true)[IDENTITAS DAN URAIAN UMUM PENGABDIAN PADA MASYARAKAT]

#set text(size: 9pt)
#set par(first-line-indent: 0pt, leading: 0.5em, spacing: 0.55em, justify: false)

*1. Judul pengabdian pada masyarakat:* #laporan.judul

*2. Tim pengabdian pada masyarakat:*

#table(
  columns: (0.7cm, 4.7cm, 1.8cm, 5.3cm, 2.2cm, 1.6cm),
  align: left + top,
  inset: 2pt,
  table.header([*No.*], [*Nama*], [*Jabatan*], [*Bidang Keahlian*], [*Jurusan*], [*Jam/ minggu*]),
  [1], [#laporan.ketua.nama], [Ketua], [Pemrograman dan pengembangan sistem informasi berbasis web], [Teknologi Informasi], [12],
  ..for (i, a) in laporan.anggota.enumerate() {
    ([#(i + 2)], [#a.nama], [Anggota], [#a.kepakaran], [Teknologi Informasi], [#a.jam.split(" ").at(0)])
  },
  ..for (i, m) in laporan.mahasiswa.enumerate() {
    ([#(i + 2 + laporan.anggota.len())], [#m.nama], [Mahasiswa], [#m.tugas], [Teknologi Informasi], [4])
  },
)

*3. Objek pengabdian (khalayak sasaran):* Pengelola, guru (tujuh orang dari KB dan TK), dan orang tua peserta didik #laporan.mitra.nama.

*4. Masa pelaksanaan:* #laporan.waktu.mulai s.d. #laporan.waktu.sampai

*5. Biaya:* Rp #laporan.biaya (dana DIPA Politeknik Negeri Malang, Nomor SP DIPA-#laporan.dipa-nomor)

*6. Lokasi:* #laporan.mitra.alamat, #laporan.mitra.kota-provinsi

*7. Mitra yang terlibat dan kontribusinya:* #laporan.mitra.nama menyediakan data, ruang pelatihan, perangkat, dan akses internet, menunjuk admin internal, serta berpartisipasi pada penggalian kebutuhan, uji coba, dan pelatihan.

*8. Permasalahan yang ditemukan dan solusi yang ditawarkan:*

- _Permasalahan:_ belum ada website profil resmi; pendaftaran peserta didik baru manual dan datanya tersebar; dokumentasi administrasi dan pembelajaran tidak terpusat; literasi digital guru dan pengelola masih rendah; kesiapan akreditasi PAUD terhambat.
- _Solusi:_ penerapan ABA-EDU Web sebagai website profil dan portal PPDB online disertai data terpusat, pelatihan dan pendampingan pengelola, serta penyusunan SOP tata kelola digital.

*9. Kontribusi mendasar pada mitra:* kanal informasi digital resmi, pendaftaran online dengan data terpusat, rapor dan administrasi kelas digital, serta pengelola yang mampu mengoperasikan sistem secara mandiri.

*10. Luaran yang dihasilkan:* ABA-EDU Web sebagai produk teknologi tepat guna; SOP pengelolaan website dan PPDB; analisis peningkatan penerapan iptek; artikel ilmiah, publikasi media massa, video kegiatan, dan Hak Cipta (status pada BAB V).
