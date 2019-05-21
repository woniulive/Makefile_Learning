
#add source file
#you can't use C_FILES = *.c simply
#since it won't unfold
C_FILES += $(wildcard ./show/*.c)

#add include path
CFLAGS += -I./show/

#generate .o file
show.o : ./show/show.h
	cc -c -g ./show/show.c
add.o : ./show/add.h
	cc -c -g ./show/add.c 

