all: nasm ld



nasm:
	nasm -felf64 wttr.asm
# Supported emulations: elf_x86_64 elf32_x86_64 elf_i386 elf_iamcu i386pep i386pe elf64bpf
ld:
	ld -m elf_x86_64 wttr.o