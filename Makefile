# Makefile laporan akhir PKM ABA-EDU Web (Typst)
BUILD_DIR = build
LAPORAN_SRC = laporan-akhir/main.typ
LAPORAN_PDF = $(BUILD_DIR)/laporan-akhir.pdf

# Lampiran yang memerlukan scan hardcopy: salin PDF scan ke laporan-akhir/scan/<nama>.pdf.
# Placeholder dibuat otomatis hanya jika file belum ada; pages.json menyimpan jumlah halaman.
SCAN_DIR = laporan-akhir/scan
SCAN_NAMES = a-pengesahan pernyataan-keaslian kesediaan-mitra pernyataan-ketua sptjb
SCAN_PDFS = $(patsubst %,$(SCAN_DIR)/%.pdf,$(SCAN_NAMES))

SUPPLEMENTS = pernyataan-keaslian ringkasan-pkm sptjb dokumen-prototype form-ttg lembar-keberdayaan kuesioner-mitra form-hki manual-book sop bast rilis-video
SUPPLEMENT_PDFS = $(patsubst %,$(BUILD_DIR)/supplement-%.pdf,$(SUPPLEMENTS))
EMBEDDED_PDFS = $(BUILD_DIR)/supplement-ringkasan-pkm.pdf $(BUILD_DIR)/supplement-dokumen-prototype.pdf $(BUILD_DIR)/supplement-form-ttg.pdf $(BUILD_DIR)/supplement-lembar-keberdayaan.pdf

.PHONY: supplement sptjb ringkasan hki manual-book sop bast kuesioner rilis-video pengesahan pernyataan all laporan laporan-watch laporan-view scan-placeholders scan-index screenshots clean help
all: laporan

$(BUILD_DIR):
	@mkdir -p $(BUILD_DIR)

scan-placeholders: $(SCAN_PDFS)

$(SCAN_DIR)/%.pdf:
	typst compile --root . --input label="$*" $(SCAN_DIR)/placeholder.typ $@

scan-index: scan-placeholders
	@printf '{' > $(SCAN_DIR)/pages.json; sep=''; \
	for n in $(SCAN_NAMES); do \
	  p=$$(pdfinfo $(SCAN_DIR)/$$n.pdf | awk '/^Pages:/{print $$2}'); \
	  printf '%s"%s": %s' "$$sep" "$$n" "$$p" >> $(SCAN_DIR)/pages.json; sep=', '; \
	done; printf '}\n' >> $(SCAN_DIR)/pages.json

# Dokumen supplement (Typst) -> build/supplement-*.pdf; empat di antaranya disematkan ke
# laporan akhir (Lampiran 7-9), sisanya berdiri sendiri (cetak, tandatangani, serahkan).
supplement: $(SUPPLEMENT_PDFS)

$(BUILD_DIR)/supplement-%.pdf: supplement/%.typ supplement/common.typ laporan-akhir/config.typ | $(BUILD_DIR)
	typst compile --root . $< $@

$(BUILD_DIR)/supplement-manual-book.pdf: $(wildcard images/web-*.png)
$(BUILD_DIR)/supplement-form-hki.pdf: supplement/common.typ

sptjb: $(BUILD_DIR)/supplement-sptjb.pdf
ringkasan: $(BUILD_DIR)/supplement-ringkasan-pkm.pdf
hki: $(BUILD_DIR)/supplement-form-hki.pdf
manual-book: $(BUILD_DIR)/supplement-manual-book.pdf
sop: $(BUILD_DIR)/supplement-sop.pdf
bast: $(BUILD_DIR)/supplement-bast.pdf
kuesioner: $(BUILD_DIR)/supplement-kuesioner-mitra.pdf
rilis-video: $(BUILD_DIR)/supplement-rilis-video.pdf

laporan: $(EMBEDDED_PDFS) scan-index | $(BUILD_DIR)
	typst compile --root . $(LAPORAN_SRC) $(LAPORAN_PDF)
	@echo "PDF built successfully: $(LAPORAN_PDF)"

laporan-watch: scan-index
	typst watch --root . $(LAPORAN_SRC) $(LAPORAN_PDF)

laporan-view: laporan
	zathura $(LAPORAN_PDF) &

# Draf yang dapat dicetak untuk ditandatangani lalu dipindai ke laporan-akhir/scan/
pengesahan: | $(BUILD_DIR)
	typst compile --root . laporan-akhir/frontmatter/pengesahan.typ $(BUILD_DIR)/draf-pengesahan.pdf

pernyataan: $(BUILD_DIR)/supplement-pernyataan-keaslian.pdf

# Tangkap ulang halaman publik abs.halokes.com ke images/web-*.png
screenshots:
	./scripts/screenshots.sh

clean:
	rm -f $(LAPORAN_PDF) $(SUPPLEMENT_PDFS) $(SCAN_DIR)/pages.json $(SCAN_PDFS)

help:
	@echo "make laporan      - build PDF laporan akhir ($(LAPORAN_PDF))"
	@echo "make laporan-watch- build kontinu"
	@echo "make supplement   - build semua dokumen supplement ke build/supplement-*.pdf"
	@echo "make scan-index   - buat placeholder scan + indeks halaman (laporan-akhir/scan/)"
	@echo "make screenshots  - tangkap ulang halaman publik abs.halokes.com"
	@echo "make clean        - hapus hasil build dan placeholder scan"
