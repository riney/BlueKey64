#!/bin/bash
ASSEMBLER_HOME=~/gitroot/Ophis/bin
ASSEMBLER=ophis
ASSEMBLER_OPTS=

EMULATOR_HOME=/usr/local/bin
EMULATOR=x64
EMULATOR_OPTS=-ntsc

PRG=testcart
CARTSIZE=8192

FLASHSIZE=131072

# the appropriate device code for minipro
FLASHDEVICE=SST39SF010A

all: $(PRG)

$(PRG):
	$(ASSEMBLER_HOME)/$(ASSEMBLER) $(ASSEMBLER_OPTS) $(PRG).s -o $(PRG).bin
	dd if=/dev/null of=$(PRG).bin bs=1 count=0 seek=$(CARTSIZE)
	cp $(PRG).bin $(PRG)_flash.bin
	dd if=/dev/null of=$(PRG)_flash.bin bs=1 count=0 seek=$(FLASHSIZE)
clean:
	rm $(PRG).bin $(PRG)_flash.bin

test: $(PRG)
	$(EMULATOR_HOME)/$(EMULATOR) $(EMULATOR_OPTS) -cart8 ./$(PRG).bin

flash: $(PRG)
	minipro -p $(FLASHDEVICE) -w $(PRG)_flash.bin
