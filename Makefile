CC = cl
SRC_FILES = src/rc4.c

OBJ_FILES = rc4.obj

INCLUDE_FILES = includes
BUILD_LIB = lib

build_x64:
	@$(CC) /c /TC $(SRC_FILES) /I $(INCLUDE_FILES)
	@$(BUILD_LIB) $(OBJ_FILES) /MACHINE:X64 /OUT:rc4_x64.lib

build_x86:
	@$(BUILD_LIB) $(OBJ_FILES) /MACHINE:X86 /OUT:rc4_x86.lib

clean:
	@del $(OBJ_FILES)

compile: build_x64 clean
	@echo off
	@echo Done....
