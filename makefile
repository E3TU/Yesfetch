PREFIX ?= /usr
MANDIR ?= $(PREFIX)/share/man

default:
	@printf "targets:\n  make install\n  make uninstall\n"

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@install -Dm755 yesfetch $(DESTDIR)$(PREFIX)/bin/yesfetch
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p yesfetch.1 $(DESTDIR)$(MANDIR)/man1

uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/yesfetch
	@rm -rf $(DESTDIR)$(MANDIR)/man1/yesfetch.1*
