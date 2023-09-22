all: decrypt.asm
	yasm -a x86 -m amd64 -g dwarf2 -f elf64 -o decrypt.o decrypt.asm 
	gcc -m64 -no-pie -o decrypt.out decrypt.o

clean:
	rm *.out
	rm *.o