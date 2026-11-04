
## Catatan
`kesediaan-mitra.pdf` sementara diisi dari `docs/proposal.pdf` halaman 75--76 (surat kesediaan mitra bertanggal 9 Februari 2026, resolusi rendah). Ganti dengan pindaian asli bila ada.
`pernyataan-keaslian.pdf` dan `pernyataan-ketua.pdf` harus dibuat baru untuk laporan akhir (jangan memakai surat pada proposal: tertulis "penelitian ... diusulkan" dan memuat NIDN yang tidak sesuai).
`a-pengesahan.pdf` berisi Halaman Pengesahan **laporan** bertanda tangan (30 Oktober 2026), dibuat dari `docs/Lembar Pengesahan PKM.png` (`magick "docs/Lembar Pengesahan PKM.png" -background white -gravity center -resize 1240x1754 -extent 1240x1754 -units PixelsPerInch -density 150 laporan-akhir/scan/a-pengesahan.pdf`).
`images/signature-dian.png` (tanda tangan ketua) tidak ikut repositori; salin manual ke `images/` sebelum `make laporan`.
`pernyataan-keaslian.pdf` dan `sptjb.pdf` kini berisi pindaian bertanda tangan (13 Oktober 2026). Sumbernya di `docs/` tertukar namanya: `docs/sptjb-pkm.pdf` berisi surat pernyataan keaslian dan `docs/surat-keaslian-pkm.pdf` berisi SPTJB; berkas disalin sesuai isinya.
`sptjb.pdf` dan `pernyataan-keaslian.pdf` dikompres (Ghostscript `-dPDFSETTINGS=/ebook`, 150 dpi) dari berkas asli di `docs/` menjadi di bawah 1 MB (sekitar 190 KB dan 175 KB); salinan siap unggah ada di `build/sptjb-signed-under1MB.pdf` dan `build/pernyataan-keaslian-signed-under1MB.pdf`. Untuk mengulang: `gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=keluaran.pdf asli.pdf`.
