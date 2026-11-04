#import "../config.typ": laporan
#import "../template.typ": todo

= PETA LOKASI MITRA DAN JARAK DARI POLITEKNIK NEGERI MALANG <lampiran-2>

Lokasi mitra, #laporan.mitra.nama, berada di #laporan.mitra.alamat. Jarak Politeknik Negeri Malang (Jl. Soekarno-Hatta No. 9, Malang) ke lokasi mitra adalah #laporan.mitra.jarak-km km, dengan rute kendaraan seperti pada @fig-peta-lokasi (sekitar 19 menit), sehingga memenuhi batas maksimal 100 km sesuai ketentuan skema.

#figure(
  image("/images/peta-lokasi.jpg", width: 60%),
  caption: [Rute dari Politeknik Negeri Malang ke lokasi mitra],
) <fig-peta-lokasi>

#figure(
  image("/images/lokasi-mitra.jpg", width: 90%),
  caption: [Lokasi dan profil #laporan.mitra.nama-pendek],
)
