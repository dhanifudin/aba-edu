#import "template.typ": laporan-akhir, lampiran-rules

#show: laporan-akhir

// ---------- Front matter: penomoran romawi, dimulai dari halaman sampul ----------
#set page(numbering: none)
#counter(page).update(1)

#include "frontmatter/cover.typ"
// Sampul dihitung halaman i tetapi nomornya tidak ditampilkan.
#pagebreak()
#set page(numbering: "i")

#include "frontmatter/pengesahan-scan.typ"
#pagebreak()

#include "frontmatter/ringkasan.typ"
#pagebreak()

#include "frontmatter/prakata.typ"
#pagebreak()

#include "frontmatter/daftar.typ"

// ---------- BAB I - VI: penomoran arabic, reset chapter counter ----------
#set page(numbering: "1")
#counter(page).update(1)
#counter(heading).update(0)

#include "bab/bab1.typ"
#include "bab/bab2.typ"
#include "bab/bab3.typ"
#include "bab/bab4.typ"
#include "bab/bab5.typ"
#include "bab/bab6.typ"

#bibliography("/references.bib", title: [DAFTAR PUSTAKA], style: "apa")

// ---------- Surat Pernyataan Keaslian (sebelum lampiran, sesuai Lampiran 16 panduan) ----------
#include "lampiran/0-pernyataan-keaslian.typ"

// ---------- Lampiran ----------
#metadata("lampiran") <mulai-lampiran>
#show: lampiran-rules

#include "lampiran/1-biodata.typ"
#include "lampiran/2-peta-lokasi.typ"
#include "lampiran/3-kesediaan-mitra.typ"
#include "lampiran/4-pernyataan-ketua.typ"
#include "lampiran/5-sptjb.typ"
#include "lampiran/6-bukti-luaran.typ"
#include "lampiran/7-ringkasan.typ"
#include "lampiran/8-prototipe-ttg.typ"
#include "lampiran/9-keberdayaan.typ"
