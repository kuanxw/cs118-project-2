CC=gcc
CPPFLAGS=-g -Wall
USERID=004454718
CLASSES=
FILES=server.c Makefile README

all: server

server: $(CLASSES)
	$(CC) -o $@ $^ $(CPPFLAGS) $@.c



clean:
	rm -rf *.o *~ *.gch *.swp *.dSYM server  *.tar.gz

dist: tarball

tarball: clean
	tar -cvzf $(USERID).tar.gz $(FILES)
