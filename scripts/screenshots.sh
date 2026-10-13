#!/usr/bin/env bash
# Tangkap halaman publik abs.halokes.com (desktop + mobile) ke images/web-*.png.
# Halaman di balik login (admin, daftar pendaftar) tidak dapat ditangkap otomatis;
# simpan manual ke images/ dengan nama yang dirujuk di bab5.typ. Samarkan data pribadi.
set -euo pipefail
cd "$(dirname "$0")/.."
BASE="${BASE:-https://abs.halokes.com/y/ABS}"
CHROME="${CHROME:-google-chrome-stable}"

shot() { # nama url lebar,tinggi
  "$CHROME" --headless=new --disable-gpu --hide-scrollbars --no-sandbox \
    --window-size="$3" --virtual-time-budget=10000 \
    --screenshot="images/$1.png" "$2" >/dev/null 2>&1
  echo "images/$1.png"
}

shot web-beranda "$BASE" 1366,5200
shot web-beranda-mobile "$BASE" 390,9000
shot web-pendaftaran "$BASE/daftar" 1366,1800
shot web-login "$BASE/login" 1366,900

# Buang ruang kosong di bawah halaman pendek.
for f in web-pendaftaran web-login; do
  magick "images/$f.png" -fuzz 1% -trim +repage "images/$f.png"
done

# Potongan halaman profil untuk laporan (koordinat piksel pada tangkapan 1366 x 5200).
magick images/web-beranda.png -crop 1366x1480+0+0 +repage images/web-beranda-atas.png      # menu, hero, statistik, tentang
magick images/web-beranda.png -crop 1366x1700+0+1450 +repage images/web-beranda-tengah.png  # cabang sekolah, galeri
magick images/web-beranda.png -crop 1366x1900+0+3200 +repage images/web-beranda-bawah.png  # keunggulan, ulasan, ajakan daftar
magick images/web-beranda.png -crop 1366x760+0+0 +repage images/web-beranda-hero.png       # hero saja
magick images/web-beranda-mobile.png -fuzz 1% -trim +repage -crop 390x2600+0+0 +repage images/web-beranda-mobile.png
magick images/web-beranda.png -crop 1366x850+0+600 +repage images/web-beranda-tentang.png   # statistik, visi dan misi
magick images/web-login.png -crop 560x470+800+230 +repage images/web-login-form.png          # formulir masuk
