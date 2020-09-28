# $FreeBSD$

PORTNAME=	ncurses-st-menu
PORTVERSION=	g2020092801
CATEGORIES=	devel

MAINTAINER=	swills@FreeBSD.org
COMMENT=	Library for CUA look menu

USES=		autoreconf gettext gmake iconv libtool ncurses:base pkgconfig
USE_GITHUB=	yes
GH_ACCOUNT=	okbob
GH_TAGNAME=	28a8537
CFLAGS+=	-DHAVE_NCURSES_H -DHAVE_PANEL_H -lncursesw -lpanelw
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes

post-extract:
	@${TOUCH} ${WRKSRC}/config.make
	@${RM} ${WRKSRC}/configure

pre-build:
	cd ${WRKSRC} ; ${SH} autogen.sh

do-install:
	${INSTALL_LIB} ${WRKSRC}/libst_menu.a ${STAGEDIR}${PREFIX}/lib/
	${INSTALL_LIB} ${WRKSRC}/libst_menu.so ${STAGEDIR}${PREFIX}/lib/
	${INSTALL_DATA} ${WRKSRC}/include/st_menu.h ${STAGEDIR}${PREFIX}/include/
	${INSTALL_DATA} ${WRKSRC}/st_menu.pc ${STAGEDIR}${PREFIX}/libdata/pkgconfig/
	${INSTALL_PROGRAM} ${WRKSRC}/simple ${STAGEDIR}${PREFIX}/bin/st-menu-simple
	${INSTALL_PROGRAM} ${WRKSRC}/simple2 ${STAGEDIR}${PREFIX}/bin/st-menu-simple2
	${INSTALL_PROGRAM} ${WRKSRC}/demoapp ${STAGEDIR}${PREFIX}/bin/st-menu-demoapp
	${INSTALL_PROGRAM} ${WRKSRC}/demoapp_sl ${STAGEDIR}${PREFIX}/bin/st-menu-demoapp_sl

.include <bsd.port.mk>
