#import "../template.typ": scan-pages

// Halaman Pengesahan bertanda tangan basah dipindai ke laporan-akhir/scan/a-pengesahan.pdf.
// Selama belum ada, `make scan-index` membuat halaman placeholder. Draf yang dapat dicetak
// untuk ditandatangani ada di frontmatter/pengesahan.typ (di-include dari file ini bila perlu).
#scan-pages("a-pengesahan")
