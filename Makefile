ARIELY_FILENAME=P27-Ariely

ARIELY_SRC_FOLDER=src/ariely
ARIELY_OUT_FOLDER=out/ariely


PFLAGS= --dpi=300 \
				-f markdown+fancy_lists+implicit_figures \
				--listings \
				-V lang=es \
				-t beamer \
				--resource-path=$(ARIELY_SRC_FOLDER)


pdf: ariely-pdf

ariely-pdf:
	pandoc -s $(ARIELY_SRC_FOLDER)/main.md $(PFLAGS) -o $(ARIELY_OUT_FOLDER)/$(ARIELY_FILENAME).pdf

ariely-latex:
	pandoc -s $(ARIELY_SRC_FOLDER)/main.md $(PFLAGS) -o $(ARIELY_OUT_FOLDER)/$(ARIELY_FILENAME).tex
