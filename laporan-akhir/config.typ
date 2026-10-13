// Single source of truth untuk metadata laporan akhir PKM ABA-EDU Web.
// Ubah berkas ini untuk memperbarui sampul, pengesahan, dan lampiran.

#let laporan = (
  judul: "Transformasi Digital Layanan Pendidikan Anak Usia Dini melalui Pendampingan dan Implementasi ABA-EDU Web di Yayasan Aboe Bakar Soemijati",
  jenis: "Reguler Kompetisi",
  tahun: "2026",
  skema: "Pengabdian kepada Masyarakat DIPA Swadana Reguler Kompetisi",
  dipa-nomor: "139.03.2.693474/2026", // dibaca dari halaman pengesahan proposal (SIM P2M); nomor surat perjanjian masih TODO
  tanggal-pengesahan: "November 2026",
  bulan-tahun-laporan: "November 2026",
  waktu: (mulai: "1 April 2026", sampai: "15 November 2026", lama: "8 bulan"),
  program-strategis: "Rekayasa Keteknikan",
  rumpun-ilmu: "Teknik Informatika",
  biaya: "8.000.000",

  mitra: (
    nama: "Yayasan Aboe Bakar Soemijati (KB & TK Rumah Bintang Kecil)",
    nama-pendek: "Yayasan Aboe Bakar Soemijati",
    alamat: "Jl. Kresno No. 21, Polehan, Kec. Blimbing, Kota Malang",
    desa-kecamatan: "Kel. Polehan, Kec. Blimbing",
    kota-provinsi: "Kota Malang, Jawa Timur",
    jarak-km: "", // isi jarak Polinema ke lokasi mitra (km); peta rute di Lampiran 2 menunjukkan 9,2 km
    situs: "https://abs.halokes.com",
    pimpinan: "Qurrotu A'yunul Chasanah", // TODO: verifikasi ejaan pada surat kesediaan mitra
    jabatan-pimpinan: "Pimpinan Yayasan",
    npsn: "KB 70030031 / TK 70030030", // TODO: verifikasi (terbaca dari kop surat mitra beresolusi rendah)
  ),

  ketua: (
    nama: "Dian Hanifudin Subhi, S.Kom., M.Kom.",
    nip: "198806102019031018",
    nidn: "0010068807",
    jabatan: "Lektor",
    pangkat: "Penata Muda Tingkat I/III/B",
    alamat: "Jl. Soekarno-Hatta No. 9, Jatimulyo, Kota Malang",
    hp: "082230743546",
    email: "dhanifudin@polinema.ac.id",
    ttd: "/images/signature-dian.png",
  ),

  anggota: (
    (
      nama: "Hendra Pradibta, S.E., M.Sc.",
      nip: "198305212006041003",
      nidn: "0021058301",
      jabatan: "Lektor",
      kepakaran: "Manajemen organisasi dan tata kelola kelembagaan",
      jam: "10 jam",
      email: "hendra.pradibta@polinema.ac.id",
      hp: "081252537493",
      tugas: (
        "Analisis kebutuhan organisasi dan proses bisnis mitra",
        "Penyusunan SOP pengelolaan sistem digital",
        "Pendampingan manajemen perubahan (change management)",
      ),
    ),
    (
      nama: "Usman Nurhasan, S.Kom., M.T.",
      nip: "198609232015041001",
      nidn: "0023098604",
      jabatan: "Lektor",
      kepakaran: "Pemrograman dan pengolahan data berbasis sistem informasi",
      jam: "10 jam",
      email: "usmannurhasan@polinema.ac.id",
      hp: "082143246664",
      tugas: (
        "Pendampingan dan pemanfaatan fitur ABA-EDU Web",
        "Perancangan dan pengelolaan basis data peserta didik",
        "Integrasi sistem pendaftaran online dengan repositori data",
        "Pengujian sistem dan keamanan data",
        "Laporan evaluasi penggunaan sistem dan rekomendasi berbasis data",
      ),
    ),
    (
      nama: "Anugrah Nur Rahmanto, S.Sn., M.Ds.",
      nip: "199112302019031016",
      nidn: "0030129101",
      jabatan: "Asisten Ahli",
      kepakaran: "UI/UX Design dan pengalaman pengguna",
      jam: "8 jam",
      email: "anugrahnur@polinema.ac.id",
      hp: "0818536604",
      tugas: (
        "Perancangan UI/UX website profil dan sistem pendaftaran",
        "Prototipe desain antarmuka dengan Figma",
        "Uji kenyamanan dan kemudahan penggunaan (usability testing)",
        "Penyempurnaan desain berbasis kebutuhan pengguna",
      ),
    ),
    (
      nama: "Prof. Dr. Eng. Rosa Andrie Asmara, S.T., M.T.",
      nip: "198010102005011001",
      nidn: "0010108003",
      jabatan: "Profesor",
      kepakaran: "Manajemen tata kelola dan pengolahan data untuk sistem berkelanjutan",
      jam: "8 jam",
      email: "rosa.andrie@polinema.ac.id",
      hp: "081336657220",
      tugas: (
        "Perumusan model tata kelola data dan kebijakan pengelolaan informasi",
        "Evaluasi kesiapan kelembagaan untuk mendukung akreditasi",
        "Supervisi strategis dan evaluasi keberlanjutan program",
      ),
    ),
    (
      nama: "Erfan Rohadi, S.T., M.Eng., Ph.D",
      nip: "197201232008011006",
      nidn: "0404079101",
      jabatan: "Lektor",
      kepakaran: "Jaringan dan keamanan infrastruktur",
      jam: "8 jam",
      email: "erfanr@polinema.ac.id",
      hp: "081553271964",
      tugas: (
        "Perumusan arsitektur sistem",
        "Evaluasi keamanan infrastruktur",
      ),
    ),
  ),

  mahasiswa: (
    (nama: "Nur Melisa Makyatika", nim: "2241760029", tugas: "Membantu pengujian fitur pada aplikasi"),
    (nama: "Regita Delya Putri", nim: "2241720137", tugas: "Membantu pengujian fitur pada aplikasi"),
    (nama: "Putri Ayu Aliciawati", nim: "2241720132", tugas: "Membantu pengujian fitur pada aplikasi"),
    (nama: "Sandrina Athallia Dwi Andselma", nim: "2241760034", tugas: "Membantu pengujian fitur pada aplikasi"),
    (nama: "Mochamad Imam Hanafi", nim: "2241720151", tugas: "Dokumentasi pelaksanaan kegiatan"),
    (nama: "Elis Nurhidayati", nim: "2241720035", tugas: "Dokumentasi pelaksanaan kegiatan"),
  ),

  pejabat: (
    kepala-p3m: (nama: "Prof. Dr. Ratna Ika Putri, S.T., M.T.", nidn: "0022107701"),
    direktur: (nama: "Ir. Supriatna Adhisuwignjo, S.T., M.T.", nidn: "0008017107"),
    ppk: (nama: "Tjandra Dewi Wulandari, S.E., M.M.", nip: "197509162003122002"),
  ),
)
