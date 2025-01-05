file = $(wildcard projects/*.md)
output = $(patsubst %.md,%.html,$(file))

all: $(output)
%.html: $(file)
	md2html $< -o $@


.SILENT: clean
clean:
	rm -f $(output)
