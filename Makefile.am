SUBDIRS	=src

EXTRA_DIST=\
	   AUTHORS	\
	   COPYING	\
	   README.md	\
	   INSTALL	\
	   NEWS		\
	   LICENSE	\
	   TODO

README: README.md
	markown2 $< | lynx -stdin -dump >$@

README.html: README.md
	markdown $< >$@
