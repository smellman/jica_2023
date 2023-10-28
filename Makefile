SRC = jica-seminar-2023.md
HTML = $(SRC:%.md=%.html)
PDF = $(SRC:%.md=%.pdf)
PPTX = $(SRC:%.md=%.pptx)

all: html pdf pptx

html: $(SRC) $(HTML)
	npx -y @marp-team/marp-cli@latest $(SRC) -o $(HTML)

pdf: $(SRC) $(PDF)
	npx -y @marp-team/marp-cli@latest $(SRC) -o $(PDF) --allow-local-files

pptx: $(SRC) $(PPTX)
	npx -y @marp-team/marp-cli@latest $(SRC) -o $(PPTX) --allow-local-files
