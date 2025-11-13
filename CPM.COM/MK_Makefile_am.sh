#/bin/sh

# prepare the file Makefile.am based on the content of this directory

echo 'noinst_DATA = *.com'
echo
echo 'install-data-local:'
for DIR in bin80 lib80 include80; do
	echo \\t'$(mkinstalldirs) $(DESTDIR)$(libdir)/cpm/'$DIR
done
for COM in *.com; do
	echo \\t'$(INSTALL_DATA) $(srcdir)/'$COM '$(DESTDIR)$(libdir)/cpm/bin80/'$COM
done
echo
echo 'uninstall-local:'
for COM in *.com; do
	echo \\t'$(RM) $(DESTDIR)$(libdir)/cpm/bin80/'$COM
done
echo
