# Create Makefile.sub and then source it.  This is a bit kludgy,
# but it works on Mac, Windows & Linux, and this way, we always
# get the up-to-date version of Makefile.sub from the RtTests
# package.

%: Makefile.sub

Makefile.sub:
	@R_LIBS='$(R_LIBS)' $(R) $(R_OPTS) --vanilla --slave -e "cat('include ', system.file(package='RtTests', 'scripts'), '/Makefile.sub', sep='')" > Makefile.sub

sinclude Makefile.sub
