TEX_FILES=$(shell find ./ -maxdepth 1 -type f -name '*.tex')
OUTPUT_DIR=./output

all: doc

doc: $(TEX_FILES)
	pdflatex --shell-escape --output-directory=$(OUTPUT_DIR) $<
	@printf "\n"
	pdflatex --shell-escape --output-directory=$(OUTPUT_DIR) $<

clean:
	rm -f $(OUTPUT_DIR)/*.aux
	rm -f $(OUTPUT_DIR)/*.log
	rm -f $(OUTPUT_DIR)/*.out
	rm -f $(OUTPUT_DIR)/*.toc


.PHONY: clean
