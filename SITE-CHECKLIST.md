# Checklist sebelum laporan akhir diserahkan

## 1. Situs abs.halokes.com (kondisi per 13 Okt 2026)
Laporan BAB V ditulis seolah situs sudah operasional. Saat dicek, halaman publik masih:
- [ ] Tidak ada cabang sekolah aktif (dropdown PPDB kosong, statistik 0 siswa/0 staf/0 cabang). **Buat cabang & buka periode PPDB 2026/2027.**
- [ ] Alamat, kontak/WhatsApp, dan peta belum ada (Jl. Kresno 21, Polehan, Blimbing).
- [ ] Galeri/ulasan masih konten templat; ganti dengan foto kegiatan nyata.
- [ ] Tombol "Masuk ke Portal Langsung" dan "Daftar Akun Baru" pada `/daftar` tidak berfungsi (`javascript:void(0)`).
- [ ] Heading kosong di header; `/galeri` dan `/berita` 404 (hapus tautan bila ada).
- [ ] Setelah diperbaiki: `make screenshots`, lalu `make laporan`.

## 2. Berkas scan (salin ke `laporan-akhir/scan/`, nama persis)
Sudah terpasang: `pernyataan-keaslian.pdf` dan `sptjb.pdf` (pindaian bertanda tangan, 13 Okt 2026).
Seluruh pindaian pada `laporan-akhir/scan/` kini asli (lihat `scan/README.md`); jalankan `make scan-index laporan` setelah mengganti berkas.

## 3. Data yang harus diisi (cari `TODO` di PDF, atau `grep -rn "todo\[" laporan-akhir`)
- Nomor surat perjanjian (nomor SP DIPA 139.03.2.693474/2026 sudah diisi dari pengesahan proposal), jarak ke mitra (`mitra.jarak-km`, rute peta = 9,2 km), jabatan fungsional Dian (Lektor vs Asisten Ahli).
- Tanggal & peserta 5 sesi pelatihan; skor pre/post-test dan N-Gain (Tabel 5.6); jumlah pendaftar uji; hasil black-box (Tabel 5.2).
- Tanggal SOP, BAST, rapat refleksi; admin internal; jadwal backup; bentuk dukungan pasca-kegiatan.
- Realisasi anggaran asli per komponen (angka dummy sama dengan rencana).
- Bukti kesepakatan penyesuaian lingkup dengan mitra (BAB II 2.1).
- `references.bib`: lengkapi penulis/jurnal entri `mulawarman2026`.

## 4. Catatan
- Biodata (Lampiran 1) memuat ringkasan publikasi/HKI, tidak seluruh daftar pada biodata bertanda tangan; lengkapi bila diminta.
- Panduan Lampiran 16 menyebut SPTJB sebagai "Lampiran 21", tetapi format SPTJB ada di Lampiran 28 panduan.
- Klaim bahwa Kiddy School ERP/halokes adalah platform milik tim ditulis sesuai arahan; koreksi di BAB V 5.1.1 bila tidak benar.

## 5. Dokumen supplement (`make supplement` → `build/supplement-*.pdf`)
| Dokumen | Berkas | Tindakan |
|---|---|---|
| Ringkasan PKM (Lampiran 7) | `supplement-ringkasan-pkm.pdf` | Disematkan otomatis; isi N-Gain, status luaran, kepuasan mitra |
| Dokumen Prototype + Form TTG (Lampiran 8) | `supplement-dokumen-prototype.pdf`, `supplement-form-ttg.pdf` | Disematkan; isi TKT, status KI, foto pengabdian |
| Lembar Keberdayaan (Lampiran 9) | `supplement-lembar-keberdayaan.pdf` | Disematkan; isi skor pre/post-test; **cetak, tanda tangan Ketua dan Pimpinan Yayasan, pindai, ganti** |
| SPTJB | `supplement-sptjb.pdf` | Cetak, meterai, tanda tangan, pindai ke `scan/sptjb.pdf` (realisasi belanja asli; konfirmasi uraian baris ke P3M) |
| Kuesioner Kepuasan Mitra | `supplement-kuesioner-mitra.pdf` | Cetak, isi oleh pimpinan/pengelola, isi rekap di halaman 3 dan Tabel 5.4 laporan |
| Form HKI | `supplement-form-hki.pdf` | Isi alamat rumah, tanggal, tanda tangan, dan pindaian KTP 6 pencipta |
| Buku panduan modul PPDB (tim Dian dkk) | `supplement-manual-ppdb.pdf` | Tangkapan layar setelah login (`images/manual-*.jpg`) dari akun demo; ambil ulang bila tampilan berubah |
| SOP | `supplement-sop.pdf` | Isi nomor/tanggal, dahulukan pembahasan dengan pengurus, pimpinan menandatangani, pindai ke Lampiran 6 |
| BAST | `supplement-bast.pdf` | Isi hari/tanggal, jumlah akun, nilai aset; tanda tangan di atas meterai |
| Naskah rilis + storyboard video | `supplement-rilis-video.pdf` | Isi kutipan narasumber; kirim rilis ke Pokja Humas; produksi video (maks. 5 menit) |

Catatan dari `docs/proposal.pdf`:
- Surat kesediaan mitra (9 Feb 2026) menyepakati 8 kemampuan ABA-EDU Web (CMS berita, manajemen pengguna berbasis peran, dasbor statistik, ekspor data, dst.). Tabel "Kesesuaian dengan Spesifikasi" di BAB V 5.1.3 menunggu status masing-masing; fitur yang belum ada harus dibuat atau dijelaskan sebagai penyesuaian lingkup.
- Surat keaslian pada proposal (hlm. 74) tertulis "penelitian ... diusulkan" dan mencantumkan NIDN 0023098604 (NIDN Usman, bukan Dian); buat surat baru lewat `make pernyataan`.
- Biodata pada proposal hlm. 68--69 berjudul "Biodata Ketua" padahal milik Erfan Rohadi (anggota); di laporan sudah ditempatkan sebagai Anggota Pelaksana 5.
- Ejaan nama pimpinan yayasan ("Qurrotu A'yunul Chasanah") dan NPSN (KB 70050031, TK 70050030) sudah dicocokkan dengan kop surat kesediaan mitra dan halaman pengesahan bertanda tangan.

## 6. Selisih antara halaman pengesahan proposal (SIM P2M, `docs/proposal.pdf` hlm. 3) dan laporan
Dibaca dari scan beresolusi rendah; pastikan mana yang benar sebelum laporan dicetak:
- Jangka waktu: laporan ini kini 1 April -- 31 Oktober 2026 (7 bulan; tanggal akhir sesuai halaman pengesahan proposal); proposal tertulis 31 Maret -- 31 Oktober 2026, laporan kemajuan 1 April -- 15 November 2026.
- Jarak Polinema ke lokasi: proposal "8 KM" (angka kurang jelas); peta rute 9,2 km.
- Program strategis: proposal "Revitalisasi infrastruktur sosial dan pariwisata"; laporan ini "Rekayasa Keteknikan".
- NIDN Erfan Rohadi: sampul proposal 0404079101; pengesahan terbaca "0023017200" (kabur). Laporan memakai 0404079101.

## 7. Rujukan struktur BAB V (`docs/pkm-usman.docx`)
Graf pengetahuan laporan rujukan ada di `docs/pkm-usman-graph/` (`graph.html`, `GRAPH_REPORT.md`, `graph.json`). Hanya strukturnya yang diadopsi (daftar fitur bernomor per aktor, "Gambar 5.n menunjukkan ...", Pengujian pada Mitra, Status Luaran); isinya tidak disalin.

## 8. Naskah artikel (`artikel/artikel-jppm.docx`)
Dibuat dari templat JPPM (`artikel/template-jppm.docx`, diunduh dari Google Docs): A4, Times New Roman, badan dua kolom, 6 halaman pada LibreOffice (`artikel-jppm-preview.pdf`); periksa ulang jumlah halaman di Word (batas 6--10).
- Penulis: 6 dosen, Dian korespondensi (`dhanifudin@polinema.ac.id`); mahasiswa pada Ucapan Terimakasih.
- **Angka yang disorot kuning adalah angka dasar (baseline) ilustratif, bukan hasil pengukuran**: jumlah peserta (6), pre/post-test, N-Gain, kategori, 12/12 skenario black-box, kepuasan mitra per aspek (rata-rata 4,43), status fitur admin. Ganti seluruhnya dengan data nyata sebelum dikirim, lalu hitung ulang rata-rata, kenaikan 58,7%, dan N-Gain pada abstrak (Inggris dan Indonesia), Tabel 3--5, dan Kesimpulan.
- Penanda `ISI: ...` (disorot): nama jurnal pada 4 rujukan (ERA Society, Putera dkk., Wahyuni dkk.) dan penulis/jurnal Universitas Mulawarman.
- Templat bernama JPPM, sedangkan laporan dan proposal menyebut Jurnal Pengabdian kepada Masyarakat Unindra (Sinta 4) sebagai target; laporan belum diubah.

## 9. Data DUMMY (simulasi hasil) -- wajib diganti sebelum diserahkan
Seluruh angka hasil dan tanggal pelaksanaan berikut adalah **dummy**, tampil **berlatar kuning** di PDF laporan dan supplement, dan didefinisikan sekali di `laporan-akhir/dummy.typ` (matikan sorotan dengan `tampilkan-dummy: false` di `laporan-akhir/config.typ`). Nilai sama dengan naskah artikel (`artikel/artikel-jppm.docx`, juga berlatar kuning).
- Peserta pelatihan 6 orang (P1--P6); pre-test 45/50/55/50/60/55, post-test 80/85/85/80/90/80; rata-rata 52,5 menjadi 83,3 (naik 58,7%); N-Gain rata-rata 0,65 (sedang; 2 tinggi, 4 sedang, 0 rendah).
- Black-box 12 dari 12 skenario valid; evaluasi keamanan "Sesuai"; 20 pendaftar uji; 3 akun petugas; 2 admin internal; dukungan 6 bulan; verifikasi maks. 2 hari kerja.
- Kepuasan mitra (n = 6): 4,50 / 4,42 / 4,58 / 4,33 / 4,33 / 4,42, rata-rata 4,43 (sangat puas); status 8 fitur spesifikasi mitra "Tercapai".
- Realisasi anggaran = rencana per uraian (Rp 8.000.000).
- Tanggal: koordinasi 8 April; website aktif 20 Mei; PPDB aktif dan diuji 24 Juni; repositori 8 Juli; digitalisasi 22 Juli; pelatihan 5 dan 19 Agustus, 2, 16, dan 30 September; SOP disahkan 7 Oktober; rapat refleksi 9 Oktober; BAST 12 Oktober 2026.
- Nyata (bukan dummy): jarak 9,2 km (rute peta), kontribusi mitra Rp 0 (halaman pengesahan proposal).
- Belum final (bukan angka/tanggal): URL dan status artikel/media/video/Hak Cipta, nomor SOP, tingkat TKT. Uraian fitur admin dan orang tua sudah mengikuti menu nyata di abs.halokes.com (akun demo); konten profil lembaga belum punya menu pengelolaan sendiri pada portal admin (diperbarui melalui pendampingan tim) dan spesifikasi surat kesediaan nomor 4 ditandai "Sebagian".
- `supplement/ringkasan-pkm.typ` sengaja tetap berkata "kegiatan masih berlangsung" (permintaan sebelumnya), jadi tidak memuat angka dummy.

## 10. Status luaran dan placeholder (diperbarui)
- Tidak ada lagi penanda TODO di laporan akhir maupun supplement. Status luaran ditulis apa adanya (dalam proses): naskah artikel disusun dan belum disubmit; naskah rilis disiapkan dan belum terbit; naskah dan storyboard video disiapkan; Hak Cipta dalam proses pendaftaran (formulir permohonan). Setelah luaran benar-benar terbit/terdaftar, perbarui Tabel 5.9 (BAB V 5.7), BAB VI, Ringkasan, dan Lampiran 6, lalu tambahkan URL/nomor aslinya.
- Tangkapan layar halaman admin dan foto kegiatan tidak lagi diwajibkan di laporan; deskripsi fitur ditulis dari spesifikasi mitra. Bila ingin menambahkannya, buat gambar di `images/` dan tambahkan `#figure(image(...))` pada BAB V 5.1.2.
- BAB III 3.2 (Rencana dan Realisasi Kegiatan) dihapus; BAB III kini 3.1 Pelaksanaan Solusi dan 3.2 Partisipasi Mitra.
- Dummy yang menyentuh dokumen ini: TKT 7 pada Dokumen Prototipe, tanggal rapat koordinasi awal (BAB II), tanggal permohonan Hak Cipta 13 Oktober dan tanggal pertama diumumkan (formulir HKI). Alamat rumah dan KTP pencipta pada formulir HKI diisi/ditempel manual (garis titik-titik dan kotak KTP).
- Nomor SOP pada supplement SOP berupa garis isian `.............../SOP/ABS/X/2026` untuk diisi yayasan saat SOP ditandatangani.
- Siaran pers tidak memuat kutipan langsung; tambahkan setelah wawancara bila diperlukan.

## 11. Ukuran berkas
`build/laporan-akhir.pdf` harus tidak lebih dari 7 MB (sekarang sekitar 5,8 MB). Gambar besar (tangkapan layar, diagram metode, foto lokasi) dipakai dalam versi JPEG di `images/*.jpg` (kualitas 86); `scripts/screenshots.sh` membuat ulang JPEG dari PNG. Bila menambah pindaian atau gambar baru dan ukuran melewati batas, kompres dengan Ghostscript (`-dPDFSETTINGS=/ebook`, lihat `laporan-akhir/scan/README.md`) sebelum disematkan.

- Lampiran 9 (lembar keberdayaan / penerapan iptek) mengikuti format `docs/penerapan-iptek-kuisioner.docx` (Lampiran 70); sumber: `supplement/lembar-keberdayaan.typ`.

## 7. Analisis kebutuhan dan tangkapan layar (BAB III dan BAB V)

- BAB III subbab 3.1 "Analisis Kebutuhan" bersumber dari 5 foto di folder Drive penggalian kebutuhan (`docs/requirements/`, tidak dilacak git): 3 foto diskusi di kelas, sampul buku rapor cetak (nama dan nomor induk disamarkan), dan jadwal pelajaran TK-A. Versi siap-laporan ada di `images/req-*.jpg`.
- Tanggal foto 4 November 2026 (setelah masa pelaksanaan 31 Oktober); teks laporan sengaja tidak menyebut tanggal. Konfirmasi tanggal dan peserta kegiatan bila akan dicantumkan.
- Kebutuhan KF-01 sampai KF-14 dan KNF-01 sampai KNF-05 disintesis dari foto, permasalahan mitra, dan fitur sistem; periksa kembali dengan notulen asli bila ada.
- BAB V 5.1.2 memuat tangkapan layar halaman profil, PPDB, dan admin (`images/manual-a-*.jpg`, `manual-w-*.jpg` yang dipertahankan, akun demonstrasi) yang terbatas pada lingkup proposal; modul rapor, presensi, jurnal, fisik, dan materi tidak dibahas (hanya disebut sebagai tahap adopsi berikutnya di BAB I, II, VI). Kebutuhan fungsional kini KF-01 sampai KF-07. Isi BAB I sampai BAB VI kini 41 halaman (syarat minimal 40).
- Data profil TK (BAB I dan 4.4.1, Tabel 4.2) bersumber dari data pokok pendidikan Kemendikdasmen (Sekolah Kita, diakses 4 Nov 2026; dalam daftar pustaka sebagai `kemendikdasmen2026`). NPSN TK 70050030 menggantikan nilai lama pada `config.typ`; 
- TK sudah terakreditasi B (SK 561/BAN-PDM/SK/2025, berlaku sampai 2030). Narasi laporan tentang "kesiapan akreditasi" sebaiknya dibaca sebagai pemeliharaan dan persiapan akreditasi berikutnya; periksa konsistensi kalimat di BAB I, 2, dan 3.
- Data pokok mencatat kurikulum 2013 (semester 2025 Gasal), sedangkan template rapor sistem memakai Kurikulum Merdeka PAUD/TK; belum disebut di laporan.
- Daftar peserta penggalian kebutuhan (7 guru dan pengelola: 3 TK, 4 KB) dari pengguna; tanpa tanggal kegiatan. Perhatikan: pelatihan pada `dummy.typ` memakai 6 peserta dan kuesioner kepuasan n = 6, sedangkan data pokok mencatat 4 guru TK; sesuaikan bila jumlah sebenarnya berbeda.
- Nilai pada `laporan-akhir/dummy.typ` (skor pre/post-test, kepuasan, tanggal SOP/BAST/aktivasi, jumlah skenario dan pendaftar uji, dan sejenisnya) masih data contoh; sorotan kuning dimatikan (`tampilkan-dummy: false`) sehingga tidak tampak berbeda. Samakan dengan hasil pengukuran nyata sebelum laporan diserahkan.
- Scan yang masih placeholder: Lampiran 3 (`kesediaan-mitra.pdf`) kini pindaian asli dari `docs/Mitra Yayasan 1.pdf`. Lampiran 4 (`pernyataan-ketua.pdf`) sementara memakai pernyataan keaslian bertanda tangan ketua (sama dengan yang di depan lampiran); ganti bila ada surat pernyataan ketua tim pelaksana tersendiri.
