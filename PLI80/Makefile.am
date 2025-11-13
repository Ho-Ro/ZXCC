
noinst_DATA = pli.com pli[0-2].ovl

install-data-local:
	$(mkinstalldirs) $(DESTDIR)$(libdir)/cpm/bin80
	$(mkinstalldirs) $(DESTDIR)$(libdir)/cpm/lib80
	$(mkinstalldirs) $(DESTDIR)$(libdir)/cpm/include80
	$(INSTALL_DATA) $(srcdir)/pli.com $(DESTDIR)$(libdir)/cpm/bin80/pli.com
	$(INSTALL_DATA) $(srcdir)/pli0.ovl $(DESTDIR)$(libdir)/cpm/bin80/pli0.ovl
	$(INSTALL_DATA) $(srcdir)/pli1.ovl $(DESTDIR)$(libdir)/cpm/bin80/pli1.ovl
	$(INSTALL_DATA) $(srcdir)/pli2.ovl $(DESTDIR)$(libdir)/cpm/bin80/pli2.ovl
	$(INSTALL_DATA) $(srcdir)/plilib.irl $(DESTDIR)$(libdir)/cpm/lib80/plilib.irl

uninstall-local:
	$(RM) $(DESTDIR)$(libdir)/cpm/bin80/pli.com
	$(RM) $(DESTDIR)$(libdir)/cpm/bin80/pli[0-2].ovl
	$(RM) $(DESTDIR)$(libdir)/cpm/lib80/plilib.irl
