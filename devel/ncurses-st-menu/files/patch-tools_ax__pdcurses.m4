--- tools/ax_pdcurses.m4.orig	2020-09-28 21:09:59 UTC
+++ tools/ax_pdcurses.m4
@@ -71,7 +71,6 @@ AC_DEFUN([AX_PDCURSES], [
         #    AC_SUBST(BUILD_OS, "mac")
         #    ;;
         *)
-            AC_MSG_ERROR(["OS $host_os is not supported"])
             ;;
     esac
 
