# Makefile for ws10 assignment

all: clean.csv

trimmed.csv: raw.csv
	cut -d',' -f1,3,5 $< > $@

clean.csv: trimmed.csv
	awk -F',' 'NR==1 || ($$2 != "" && $$3 != "")' $< > $@

.PHONY: clean

clean:
	rm -f trimmed.csv clean.csv
