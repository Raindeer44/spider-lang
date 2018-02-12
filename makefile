#  These directories are where spider installs.
#
#    PREFIX/BINDIR  The spider translator will install here.
#    PREFIX/MANDIR  The spider man page will install here.
#
#  If these directories do not exist they are created.

prefix = /usr/local
bindir = $(prefix)/bin
mandir = $(prefix)/man/man1

options = -g -Wall -Wextra


#  make all
#  Compile spider from source, leaving it in the current directory.
#  You need not be root to do this

all:
	cc -c $(options) src/spider.c
	cc *.o -o spider
	rm -f *.o


#  make clean
#  Undo the effects of make all. You need not be root to do this

clean:
	rm -f Out.c a.out spider *.o


#  make install
#  Install spider, by doing these things.
#
#    01. Make bin directory if it doesn't exist
#    02. Make man directory if it doesn't exist
#    04. Compile the spider interpreter
#    05. Move the spider interpreter to the bin directory
#    06. Let root be the owner of the spider interpreter
#    07. Let nonroots read and run the spider interpreter, not write it
#    08. Copy the spider man page to man directory
#    09. Let root be the owner of the spider man page
#    10. Let nonroots read the spider man page, not run or write it
#
#  You must be root to do this

install:
	mkdir -p $(bindir)
	mkdir -p $(mandir)
	cc -c $(options) src/spider.c
	cc *.o -o spider
	rm -f *.o
	mv spider $(bindir)
	chown root $(bindir)/spider
	chmod go-w+rx $(bindir)/spider
	# cp spider.1 $(mandir)
	# chown root $(mandir)/spider.1
	# chmod go-wx+r $(mandir)/spider.1


#  make uninstall
#  Undo the effects of make install
#
#     1. Undo the effects of make all.
#     2. Remove the spider interpreter from bin directory.
#     3. Remove the spider man page from man directory.
#
#  You must be root to do this.

uninstall:
	rm -f Out.c a.out spider *.o
	rm -f $(bindir)/spider
	rm -f $(mandir)/spider.1
