
APPS := simpleua resampleplay streamutil simple_pjsua

PJINSTALL := ./pjinstall

PKGCONFIG := \
	PKG_CONFIG_LIBDIR=$(PJINSTALL)/lib/pkgconfig/ \
	PKG_CONFIG_SYSROOT_DIR=$(PJINSTALL) \
	pkg-config

all : $(APPS)

% : %.c
	gcc --verbose -g `$(PKGCONFIG) --cflags libpjproject` $< -Wl,--start-group `$(PKGCONFIG) --libs libpjproject` -Wl,--end-group -o $@

clean :
	rm -f $(APPS)
