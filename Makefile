

SRC := boot.asm
#OBJS := ${SRC:.asm=.o}
BIN := ${SRC:.asm=.bin}

all: ${BIN}

qemu: ${BIN}
	qemu-system-i386 -hda ${BIN}


%.bin : %.asm
	nasm -f bin $< -o $@

clean:
	rm -rf ${BIN}

.PHONY: clean qemu all

 




