
SUBDIRS = include lib glib apps ircp doc

pkgconfigdir = $(libdir)/pkgconfig

if GLIB
pkgconfig_DATA = openobex.pc openobex-glib.pc
else
pkgconfig_DATA = openobex.pc
endif

DISTCHECK_CONFIGURE_FLAGS = --enable-apps

EXTRA_DIST = openobex.m4 \
		INSTALL.txt INSTALL_Win32.txt \
		CMakeLists.txt \
		CMakeModules/FindBluetooth.cmake CMakeModules/FindGlib.cmake \
		CMakeModules/FindIrda.cmake CMakeModules/FindLibUSB.cmake \
		CMakeModules/FindXslt.cmake CMakeModules/UseXslt.cmake \
		CMakeModules/FindDocbook.cmake CMakeModules/UseDocbook.cmake \
		CMakeModules/MaintainerMode.cmake

DISTCLEANFILES = $(pkgconfig_DATA)

MAINTAINERCLEANFILES = Makefile.in \
	aclocal.m4 configure config.h.in config.sub config.guess \
	ltmain.sh depcomp missing install-sh mkinstalldirs
