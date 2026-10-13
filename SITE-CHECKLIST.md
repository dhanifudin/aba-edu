# Checklist sebelum laporan akhir diserahkan

## 1. Situs abs.halokes.com (kondisi per 13 Okt 2026)
Laporan BAB V ditulis seolah situs sudah operasional. Saat dicek, halaman publik masih:
- [ ] Tidak ada cabang sekolah aktif (dropdown PPDB kosong, statistik 0 siswa/0 staf/0 cabang). **Buat cabang & buka periode PPDB 2026/2027.**
- [ ] Alamat, kontak/WhatsApp, dan peta belum ada (Jl. Kresno 21, Polehan, Blimbing).
- [ ] Galeri/ulasan masih konten templat; ganti dengan foto kegiatan nyata.
- [ ] Tombol "Masuk ke Portal Langsung" dan "Daftar Akun Baru" pada `/daftar` tidak berfungsi (`javascript:void(0)`).
- [ ] Heading kosong di header; `/galeri` dan `/berita` 404 (hapus tautan bila ada).
- [ ] Setelah diperbaiki: `make screenshots`, lalu `make laporan`.
- [ ] Tangkapan layar di balik login (samarkan data pribadi anak/orang tua, tulis "data disamarkan"): `images/manual-buat-akun.png`, `images/manual-formulir-pendaftaran.png`, `images/admin-dasbor.png`, `images/admin-cabang.png`, `images/admin-pendaftar.png`, `images/admin-konten.png`, `images/admin-pengguna.png` (BAB V 5.1.2 Fitur Aplikasi, Gambar 5.8--5.14), serta `images/pelatihan-1.png`, `images/bukti-media.png`, `images/bukti-sop-bast.png`, `images/dokumentasi-1.png`. Ganti `fig-todo("...")` di `bab5.typ` / `lampiran/6-bukti-luaran.typ` dengan `image("/images/....png", width: 100%)`, lalu lengkapi uraian "Gambar 5.n menunjukkan ..." yang bertanda TODO.

## 2. Berkas scan (salin ke `laporan-akhir/scan/`, nama persis)
`a-pengesahan.pdf` (draf: `make pengesahan`), `pernyataan-keaslian.pdf` (draf: `make pernyataan`), `kesediaan-mitra.pdf`, `pernyataan-ketua.pdf`, `sptjb.pdf`. Lalu `make scan-index laporan`.

## 3. Data yang harus diisi (cari `TODO` di PDF, atau `grep -rn "todo\[" laporan-akhir`)
- Nomor surat perjanjian (nomor SP DIPA 139.03.2.693474/2026 sudah diisi dari pengesahan proposal), jarak ke mitra (`mitra.jarak-km`, rute peta = 9,2 km), jabatan fungsional Dian (Lektor vs Asisten Ahli).
- Tanggal & peserta 5 sesi pelatihan; skor pre/post-test dan N-Gain (Tabel 5.6); jumlah pendaftar uji; hasil black-box (Tabel 5.2).
- Tanggal SOP, BAST, rapat refleksi; admin internal; jadwal backup; bentuk dukungan pasca-kegiatan.
- Status luaran (artikel, media, video, Hak Cipta) + URL/nomor; realisasi anggaran per komponen.
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
| Buku panduan (manual book) | `supplement-manual-book.pdf` | Isi tangkapan layar admin dan nama menu (TODO bertanda) |
| SOP | `supplement-sop.pdf` | Isi nomor/tanggal, dahulukan pembahasan dengan pengurus, pimpinan menandatangani, pindai ke Lampiran 6 |
| BAST | `supplement-bast.pdf` | Isi hari/tanggal, jumlah akun, nilai aset; tanda tangan di atas meterai |
| Naskah rilis + storyboard video | `supplement-rilis-video.pdf` | Isi kutipan narasumber; kirim rilis ke Pokja Humas; produksi video (maks. 5 menit) |

Catatan dari `docs/proposal.pdf`:
- Surat kesediaan mitra (9 Feb 2026) menyepakati 8 kemampuan ABA-EDU Web (CMS berita, manajemen pengguna berbasis peran, dasbor statistik, ekspor data, dst.). Tabel "Kesesuaian dengan Spesifikasi" di BAB V 5.1.3 menunggu status masing-masing; fitur yang belum ada harus dibuat atau dijelaskan sebagai penyesuaian lingkup.
- `scan/kesediaan-mitra.pdf` sementara diambil dari proposal (resolusi rendah); ganti dengan pindaian asli.
- Surat keaslian pada proposal (hlm. 74) tertulis "penelitian ... diusulkan" dan mencantumkan NIDN 0023098604 (NIDN Usman, bukan Dian); buat surat baru lewat `make pernyataan`.
- Biodata pada proposal hlm. 68--69 berjudul "Biodata Ketua" padahal milik Erfan Rohadi (anggota); di laporan sudah ditempatkan sebagai Anggota Pelaksana 5.
- Ejaan nama pimpinan yayasan ("Qurrotu A'yunul Chasanah") dan NPSN diambil dari scan beresolusi rendah; verifikasi di `config.typ`.

## 6. Selisih antara halaman pengesahan proposal (SIM P2M, `docs/proposal.pdf` hlm. 3) dan laporan
Dibaca dari scan beresolusi rendah; pastikan mana yang benar sebelum laporan dicetak:
- Jangka waktu: proposal 31 Maret 2026 -- 31 Oktober 2026; laporan kemajuan dan laporan ini 1 April -- 15 November 2026.
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
