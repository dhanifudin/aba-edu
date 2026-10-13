#import "../config.typ": laporan
#import "../template.typ": ttd-block, todo
#set page(margin: 1.5cm)

#heading(level: 1, numbering: none, outlined: true)[HALAMAN PENGESAHAN \ LAPORAN PENGABDIAN PADA MASYARAKAT]

#set text(size: 8.5pt)
#set par(first-line-indent: 0pt, leading: 0.65em, spacing: 0.9em, justify: false)

#table(
  columns: (0.7cm, 6.2cm, 1fr),
  stroke: none,
  row-gutter: 0pt,
  [1.], [Judul], [: #laporan.judul],
  [2.], [Nama mitra program pengabdian pada masyarakat], [: #laporan.mitra.nama],
  [3.], [Program strategis pengabdian pada masyarakat], [: #laporan.program-strategis],
  [4.], [Ketua pelaksana pengabdian pada masyarakat], [],
  [], [#h(0.6cm) a. Nama], [: #laporan.ketua.nama],
  [], [#h(0.6cm) b. NIDN], [: #laporan.ketua.nidn],
  [], [#h(0.6cm) c. Pangkat / golongan], [: #laporan.ketua.pangkat],
  [], [#h(0.6cm) d. Jabatan fungsional], [: #laporan.ketua.jabatan #todo[konfirmasi jabatan fungsional terbaru]],
  [], [#h(0.6cm) e. Sedang melakukan penelitian], [: Tidak],
  [], [#h(0.6cm) f. Alamat], [: #laporan.ketua.alamat],
  [5.], [Anggota pelaksana pengabdian pada masyarakat], [: #laporan.anggota.len() orang dosen dan #laporan.mahasiswa.len() orang mahasiswa],
  ..for (i, a) in laporan.anggota.enumerate() {
    ([], [#h(0.6cm) #numbering("a.", i + 1) Anggota #(i + 1)], [: #a.nama \ #h(0.25cm) NIDN. #a.nidn])
  },
  [6.], [Lokasi kegiatan mitra], [],
  [], [#h(0.6cm) a. Desa, Kecamatan], [: #laporan.mitra.desa-kecamatan],
  [], [#h(0.6cm) b. Kabupaten, Kota, Provinsi], [: #laporan.mitra.kota-provinsi],
  [], [#h(0.6cm) c. Jarak Polinema ke lokasi], [: #if laporan.mitra.jarak-km == "" [#todo[jarak (km)]] else [#laporan.mitra.jarak-km km]],
  [7.], [Jangka waktu pelaksanaan], [: #laporan.waktu.lama],
  [], [#h(0.6cm) a. Mulai], [: #laporan.waktu.mulai],
  [], [#h(0.6cm) b. Sampai], [: #laporan.waktu.sampai],
  [8.], [Biaya kegiatan], [],
  [], [#h(0.6cm) a. Politeknik Negeri Malang], [: Rp #laporan.biaya,-],
  [], [], [Kegiatan ini dibiayai dengan dana DIPA Politeknik Negeri Malang Nomor SP DIPA-#laporan.dipa-nomor dengan Surat Perjanjian Nomor: #todo[nomor surat perjanjian]],
  [], [#h(0.6cm) b. Mitra], [: Rp #todo[kontribusi mitra, bila ada]],
)

#v(0.3cm)

#grid(
  columns: (1fr, 1fr),
  gutter: 1cm,
  align(center)[Menyetujui, \ Kepala P3M, #v(1.1cm) *#laporan.pejabat.kepala-p3m.nama* \ NIDN. #laporan.pejabat.kepala-p3m.nidn],
  align(center)[Malang, #laporan.tanggal-pengesahan \ Ketua Tim Pengabdian pada Masyarakat, #v(0.2cm) #image(laporan.ketua.ttd, width: 3cm) #v(-0.3cm) *#laporan.ketua.nama* \ NIDN. #laporan.ketua.nidn],
  align(center)[Mengetahui, \ Direktur, #v(1.1cm) *#laporan.pejabat.direktur.nama* \ NIDN. #laporan.pejabat.direktur.nidn],
  align(center)[Pejabat Pembuat Komitmen Bidang I, #v(1.1cm) *#laporan.pejabat.ppk.nama* \ NIP. #laporan.pejabat.ppk.nip],
)
