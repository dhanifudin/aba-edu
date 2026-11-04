// Data DUMMY untuk mensimulasikan hasil kegiatan pada laporan akhir dan dokumen supplement.
// Seluruh nilai di berkas ini bukan hasil pengukuran: ganti dengan data nyata sebelum laporan
// diserahkan. Nilai tampil dengan sorotan kuning (matikan lewat `tampilkan-dummy` di config.typ).
// Angka sama dengan naskah artikel (artikel/artikel-jppm.docx).
#import "config.typ": laporan

#let dummy(body) = if laporan.tampilkan-dummy {
  highlight(fill: rgb("#fff176"), extent: 0pt, body)
} else { body }

// ---------- pemformatan angka gaya Indonesia ----------
#let fmt(x, d: 2) = {
  let s = str(calc.round(x, digits: d))
  if s.contains(".") {
    let parts = s.split(".")
    s = parts.at(0) + "." + parts.at(1) + "0" * (d - parts.at(1).len())
  } else if d > 0 {
    s = s + "." + "0" * d
  }
  s.replace(".", ",")
}
#let rp(n) = {
  let s = str(n)
  let out = ""
  for (i, c) in s.clusters().enumerate() {
    if i > 0 and calc.rem(s.len() - i, 3) == 0 { out += "." }
    out += c
  }
  out
}

// ---------- pelatihan: pre-test, post-test, N-Gain ----------
#let peserta = (
  (kode: "P1", peran: "Pimpinan yayasan", pre: 45, post: 80),
  (kode: "P2", peran: "Operator pendaftaran", pre: 50, post: 85),
  (kode: "P3", peran: "Guru 1", pre: 55, post: 85),
  (kode: "P4", peran: "Guru 2", pre: 50, post: 80),
  (kode: "P5", peran: "Guru 3", pre: 60, post: 90),
  (kode: "P6", peran: "Guru 4", pre: 55, post: 80),
)
#let n-peserta = peserta.len()
#let ng(p) = (p.post - p.pre) / (100 - p.pre)
#let kat(g) = if g >= 0.7 { "Tinggi" } else if g >= 0.3 { "Sedang" } else { "Rendah" }
#let rata-pre = peserta.map(p => p.pre).sum() / n-peserta
#let rata-post = peserta.map(p => p.post).sum() / n-peserta
#let rata-ng = peserta.map(ng).sum() / n-peserta
#let kenaikan = (rata-post - rata-pre) / rata-pre * 100
#let n-tinggi = peserta.filter(p => kat(ng(p)) == "Tinggi").len()
#let n-sedang = peserta.filter(p => kat(ng(p)) == "Sedang").len()
#let n-rendah = peserta.filter(p => kat(ng(p)) == "Rendah").len()
#let s-pre = fmt(rata-pre, d: 1)         // 52,5
#let s-post = fmt(rata-post, d: 1)       // 83,3
#let s-ng = fmt(rata-ng)                 // 0,65
#let s-naik = fmt(kenaikan, d: 1) + "%"  // 58,7%
#let kat-ng = kat(rata-ng)               // Sedang

// ---------- kepuasan mitra (skala 1-5; 6 responden x 2 butir per aspek = 12 jawaban) ----------
#let aspek-kepuasan = (
  ("Kesesuaian solusi dengan kebutuhan mitra", 54),
  ("Kemudahan penggunaan website profil dan PPDB online", 53),
  ("Kualitas pelatihan dan pendampingan", 55),
  ("Manfaat SOP dan tata kelola", 52),
  ("Ketepatan waktu dan komunikasi tim", 52),
  ("Keberlanjutan pemanfaatan oleh mitra", 53),
)
#let kat-puas(x) = if x >= 4.21 { "Sangat puas" } else if x >= 3.41 { "Puas" } else if x >= 2.61 { "Cukup" } else if x >= 1.81 { "Tidak puas" } else { "Sangat tidak puas" }
#let rata-aspek(a) = a.at(1) / (2 * n-peserta)
#let rata-puas = aspek-kepuasan.map(a => a.at(1)).sum() / (2 * n-peserta * aspek-kepuasan.len())
#let s-puas = fmt(rata-puas)             // 4,43

// ---------- pengujian dan data lain ----------
#let n-skenario = 12
#let n-valid = 12
#let n-pendaftar-uji = 20
#let n-akun = 3
#let n-admin-internal = 2
#let masa-dukungan = "6 bulan"
#let batas-verifikasi = "2 hari kerja"

// ---------- tanggal pelaksanaan (dummy; seluruhnya sebelum 13 Oktober 2026) ----------
#let tgl = (
  koordinasi: "8 April 2026",
  website: "20 Mei 2026",
  ppdb: "24 Juni 2026",
  repositori: "8 Juli 2026",
  digitalisasi: "22 Juli 2026",
  sesi: ("5 Agustus 2026", "19 Agustus 2026", "2 September 2026", "16 September 2026", "30 September 2026"),
  sop: "7 Oktober 2026",
  refleksi: "9 Oktober 2026",
  bast: "12 Oktober 2026",
)
