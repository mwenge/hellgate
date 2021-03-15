.PHONY: all clean run

VIC_IMAGE = "bin/hellgate.prg"
VIC_ORIG_IMAGE = "orig/hellgate.prg"
XVIC = xvic

all: clean run
original: clean run_orig

hellgate.prg: src/hellgate.asm
	64tass -Wall -Wno-implied-reg --cbm-prg -o bin/hellgate.prg -L bin/list-co1.txt -l bin/labels.txt src/hellgate.asm
	md5sum bin/hellgate.prg orig/hellgate.prg

run: hellgate.prg
	$(XVIC) -drive8ram2000 -memory 8k -verbose $(XVIC_IMAGE)

run_orig:
	$(XVIC) -verbose -moncommands bin/labels.txt $(VIC_ORIG_IMAGE)

clean:
	-rm $(VIC_IMAGE)
	-rm bin/hellgate.prg
	-rm bin/*.txt
