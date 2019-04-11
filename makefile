

objects = main.o kbd.o command.o display.o \
	insert.o search.o files.o utils.o show/show.o

edit :  $(objects)
	cc $(CFLAGS) -o edit $(objects)

#include show file 
#if you want to ignore makefile error
#when include file not found
#just add - in front of include 
#like this: -include make/makefile

#since makefile use first goal as final goal
#so include should call after edit(final goal)
include show/makefile

main.o : defs.h
kbd.o : defs.h command.h
command.o : defs.h command.h
display.o : defs.h buffer.h
insert.o : defs.h buffer.h
search.o : defs.h buffer.h
files.o : defs.h buffer.h command.h
utils.o : defs.h

.PHONY : clean
clean : 
	-rm edit $(objects)

