#!/bin/bash
ASSEMBLER_HOME=~/gitroot/Ophis/bin
ASSEMBLER=ophis
ASSEMBLER_OPTS=

EMULATOR_HOME=/usr/local/bin
EMULATOR=x64
EMULATOR_OPTS=-ntsc

PRG=testcart
CARTSIZE=8192

all: $(PRG)

$(PRG):
	$(ASSEMBLER_HOME)/$(ASSEMBLER) $(ASSEMBLER_OPTS) $(PRG).s -o $(PRG).bin
	dd if=/dev/null of=$(PRG).bin bs=1 count=0 seek=$(CARTSIZE)

clean:
	rm $(PRG).bin

test: $(PRG)
	$(EMULATOR_HOME)/$(EMULATOR) $(EMULATOR_OPTS) -cart8 ./$(PRG).bin
