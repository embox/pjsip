
APPS := simpleua resampleplay

PJINSTALL := ./pjinstall

PKGCONFIG := \
	PKG_CONFIG_LIBDIR=$(PJINSTALL)/lib/pkgconfig/ \
	PKG_CONFIG_SYSROOT_DIR=$(PJINSTALL) \
	pkg-config

all : $(APPS)

% : %.c
	gcc -g `$(PKGCONFIG) --cflags libpjproject` $< `$(PKGCONFIG) --libs libpjproject` -o $@

clean :
	rm -f $(APPS)
