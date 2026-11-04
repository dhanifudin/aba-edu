# Laporan Akhir PKM ABA-EDU Web

Laporan akhir (Typst) pengabdian kepada masyarakat **Transformasi Digital Layanan Pendidikan Anak Usia Dini melalui Pendampingan dan Implementasi ABA-EDU Web di Yayasan Aboe Bakar Soemijati**.

- Skema: Pengabdian kepada Masyarakat DIPA Swadana Reguler Kompetisi, Politeknik Negeri Malang, 2026
- Mitra: KB dan TK Rumah Bintang Kecil, Malang (situs: https://abs.halokes.com)
- Format mengikuti panduan pada `docs/panduan.pdf` (Lampiran 16 dan lampiran pendukung)

## Struktur

| Folder | Isi |
|---|---|
| `laporan-akhir/` | Laporan akhir (`main.typ`, `config.typ`, `dummy.typ`, `bab/`, `frontmatter/`, `lampiran/`, `scan/`) |
| `supplement/` | Dokumen pendukung: SPTJB, pernyataan keaslian, ringkasan, form HKI/TTG, lembar keberdayaan, buku panduan modul PPDB dan modul rapor, SOP, BAST, rilis |
| `artikel/` | Naskah artikel jurnal (docx) dan pratinjaunya |
| `docs/` | Panduan, formulir sumber, dan pindaian bertanda tangan |
| `images/` | Gambar laporan (tangkapan layar situs, peta, logo) |
| `scripts/` | `screenshots.sh` untuk menangkap ulang halaman publik |

## Kebutuhan

- [Typst](https://typst.app) 0.14, `make`, `pdfinfo` (poppler-utils)
- Font Times New Roman atau Liberation Serif, dan Carlito/Calibri
- Opsional: Ghostscript (kompres pindaian), ImageMagick dan Chromium (`make screenshots`)

## Perintah

```bash
make laporan      # build/laporan-akhir.pdf
make supplement   # build/supplement-*.pdf
make pengesahan   # draf halaman pengesahan untuk ditandatangani
make scan-index   # placeholder pindaian + indeks halaman
make screenshots  # tangkap ulang abs.halokes.com
make clean
```

## Catatan

- Pindaian di `laporan-akhir/scan/*.pdf` dan `images/signature-dian.png` tidak ikut repositori. Jika tidak ada, `make laporan` membuat halaman placeholder "SCAN BELUM TERSEDIA"; salin berkas asli dengan nama yang sama untuk menggantinya.
- Angka dan tanggal simulasi terpusat di `laporan-akhir/dummy.typ` dan ditandai kuning (`tampilkan-dummy` pada `config.typ`). Ganti dengan data lapangan sebelum pengumpulan.
- PDF akhir harus ≤ 7 MB (gambar besar memakai JPEG, pindaian dikompres).
- Daftar pekerjaan dan status luaran: `SITE-CHECKLIST.md`.
