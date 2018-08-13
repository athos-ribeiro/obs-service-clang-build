DESTDIR ?=
PREFIX = /usr
mylibdir = $(PREFIX)/lib/obs/service

.PHONY: install

install:
	mkdir -p $(DESTDIR)$(mylibdir)
	install -m 0644 clang_build.service $(DESTDIR)$(mylibdir)/clang_build.service
	install -m 0755 clang_build $(DESTDIR)$(mylibdir)/clang_build
