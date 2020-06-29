##
# turtle
#
# @file
# @version 0.1

CFLAGS = `guile-config compile`
LIBS = `guile-config link`

.PHONY: clean build run

build: turtle
clean:
	rm -f turtle turtle.o

run: turtle
	./turtle

turtle: turtle.o
	gcc $< -o $@ $(LIBS)

turtle.o: turtle.c
	gcc -c $< -o $@ $(CFLAGS)

# end
