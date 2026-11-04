#import "../config.typ": laporan
#import "../template.typ": fit-page
#import "../dummy.typ": *

= ARTIKEL ILMIAH DAN BUKTI LUARAN <lampiran-6>

Lampiran ini memuat bukti luaran yang telah tersedia pada saat laporan disusun. Luaran wajib dan tambahan yang proses publikasinya belum selesai ditunjukkan dengan naskah atau dokumen persiapannya, dan statusnya dinyatakan apa adanya.

== Artikel Ilmiah

Naskah artikel ilmiah hasil kegiatan telah disusun mengikuti templat jurnal pengabdian kepada masyarakat yang dituju dan siap diajukan; artikel belum disubmit. Naskah ditunjukkan pada halaman berikut (angka hasil pengukuran pada naskah masih berupa angka dasar yang disorot).

#for p in range(1, 7) [
  #pagebreak()
  #fit-page("/artikel/artikel-jppm-preview.pdf", p)
]

== Publikasi Media Massa dan Video Kegiatan

Naskah berita rilis telah disiapkan sesuai ketentuan publikasi media massa hasil pengabdian dan belum diterbitkan. Video kegiatan (maksimal 5 menit) telah dirancang dalam bentuk naskah narasi dan storyboard, dan belum diproduksi serta diunggah. Naskah rilis dan storyboard ditunjukkan pada halaman berikut.

#for p in range(1, 3) [
  #pagebreak()
  #fit-page("/build/supplement-rilis-video.pdf", p)
]

== Hak Cipta

Pendaftaran Hak Cipta program komputer ABA-EDU Web sedang dalam proses. Formulir permohonan pendaftaran ciptaan untuk Sentra KI Polinema telah disiapkan, dan halaman pertamanya ditunjukkan berikut; surat pencatatan ciptaan akan diterbitkan setelah permohonan diproses.

#pagebreak()
#fit-page("/build/supplement-form-hki.pdf", 1)

== Dokumen Tata Kelola dan Serah Terima

Standar Operasional Prosedur pengelolaan website dan PPDB disahkan pimpinan yayasan pada #dummy[#tgl.sop], dan Berita Acara Serah Terima ABA-EDU Web ditandatangani pada #dummy[#tgl.bast]. Dokumennya ditunjukkan pada halaman berikut. Lembar analisis peningkatan level keberdayaan mitra (format Lampiran 70) terdapat pada Lampiran 9.

#for p in range(1, 3) [
  #pagebreak()
  #fit-page("/build/supplement-sop.pdf", p)
]
#pagebreak()
#fit-page("/build/supplement-bast.pdf", 1)
