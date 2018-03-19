dnl this file is auto generated by volk_register.py

AC_DEFUN([_MAKE_FAKE_PROCCPU],
[
  AC_REQUIRE([GR_SET_MD_CPU])
  AC_MSG_CHECKING([proccpu])
  case "$MD_CPU" in
  (x86)
    if test -z "`${CC} -o proccpu -I$srcdir/include/ -I$srcdir/lib $srcdir/lib/volk_proccpu_sim.c $srcdir/lib/volk_cpu_x86.c 2>&1`"
      then
        AC_MSG_RESULT(yes)
        lv_PROCCPU="`./proccpu`"
        rm -f proccpu
      else
        AC_MSG_RESULT(no)
        lv_PROCCPU=no
    fi
  ;;
  (powerpc)
    if test -z "`${CC} -o proccpu -I$srcdir/include/ $srcdir/lib/volk_proccpu_sim.c $srcdir/lib/volk_cpu_powerpc.c 2>&1`"
      then
        AC_MSG_RESULT(yes)
        lv_PROCCPU="`./proccpu`"
        rm -f proccpu
      else
        AC_MSG_RESULT(no)
        lv_PROCCPU=no
    fi
  ;;
  (*)
    if test -z "`${CC} -o proccpu -I$srcdir/include/ $srcdir/lib/volk_proccpu_sim.c $srcdir/lib/volk_cpu_generic.c 2>&1`"
      then
        AC_MSG_RESULT(yes)
        lv_PROCCPU="`./proccpu`"
        rm -f proccpu
      else
        AC_MSG_RESULT(no)
        lv_PROCCPU=no
    fi
  ;;
  esac
])
AC_DEFUN([_TRY_ADD_ALTIVEC],
[
  LF_CHECK_CC_FLAG([-maltivec])
  LF_CHECK_CXX_FLAG([-maltivec])
])
AC_DEFUN([_TRY_ADD_32],
[
  LF_CHECK_CC_FLAG([-m32])
  LF_CHECK_CXX_FLAG([-m32])
])
AC_DEFUN([_TRY_ADD_64],
[
  LF_CHECK_CC_FLAG([-m64])
  LF_CHECK_CXX_FLAG([-m64])
])
AC_DEFUN([_TRY_ADD_3DNOW],
[
  LF_CHECK_CC_FLAG([-m3dnow])
  LF_CHECK_CXX_FLAG([-m3dnow])
])
AC_DEFUN([_TRY_ADD_ABM],
[
  LF_CHECK_CC_FLAG([-sse4.2])
  LF_CHECK_CXX_FLAG([-sse4.2])
])
AC_DEFUN([_TRY_ADD_POPCOUNT],
[
  LF_CHECK_CC_FLAG([-mpopcnt])
  LF_CHECK_CXX_FLAG([-mpopcnt])
])
AC_DEFUN([_TRY_ADD_MMX],
[
  LF_CHECK_CC_FLAG([-mmmx])
  LF_CHECK_CXX_FLAG([-mmmx])
])
AC_DEFUN([_TRY_ADD_SSE],
[
  LF_CHECK_CC_FLAG([-msse])
  LF_CHECK_CXX_FLAG([-msse])
])
AC_DEFUN([_TRY_ADD_SSE2],
[
  LF_CHECK_CC_FLAG([-msse2])
  LF_CHECK_CXX_FLAG([-msse2])
])
AC_DEFUN([_TRY_ADD_SSE3],
[
  LF_CHECK_CC_FLAG([-msse3])
  LF_CHECK_CXX_FLAG([-msse3])
])
AC_DEFUN([_TRY_ADD_SSSE3],
[
  LF_CHECK_CC_FLAG([-mssse3])
  LF_CHECK_CXX_FLAG([-mssse3])
])
AC_DEFUN([_TRY_ADD_SSE4_A],
[
  LF_CHECK_CC_FLAG([-msse4a])
  LF_CHECK_CXX_FLAG([-msse4a])
])
AC_DEFUN([_TRY_ADD_SSE4_1],
[
  LF_CHECK_CC_FLAG([-msse4.1])
  LF_CHECK_CXX_FLAG([-msse4.1])
])
AC_DEFUN([_TRY_ADD_SSE4_2],
[
  LF_CHECK_CC_FLAG([-msse4.2])
  LF_CHECK_CXX_FLAG([-msse4.2])
])
AC_DEFUN([_TRY_ADD_AVX],
[
  LF_CHECK_CC_FLAG([-mavx])
  LF_CHECK_CXX_FLAG([-mavx])
])
AC_DEFUN([LV_SET_SIMD_FLAGS],
[
  AC_REQUIRE([GR_SET_MD_CPU])
  AC_SUBST(LV_CXXFLAGS)
  indCC=no
  indCXX=no
  indLV_ARCH=no
  AC_ARG_WITH(lv_arch,
    AC_HELP_STRING([--with-lv_arch=ARCH],[set volk hardware speedups as space separated string with elements from the following list(generic, orc, altivec, 32, 64, 3dnow, abm, popcount, mmx, sse, sse2, sse3, ssse3, sse4_a, sse4_1, sse4_2, avx)]),
      [cf_with_lv_arch="$withval"],
      [cf_with_lv_arch=""])
  ADDONS=""
  BUILT_ARCHS=""
  _MAKE_FAKE_PROCCPU
  OVERRULE_FLAG="no"
  if test -z "$cf_with_lv_arch"; then
    cf_with_lv_arch=$lv_PROCCPU
    OVERRULE_FLAG="yes"
  fi
  LV_HAVE_ALTIVEC=no
  LV_HAVE_32=no
  LV_HAVE_64=no
  LV_HAVE_3DNOW=no
  LV_HAVE_ABM=no
  LV_HAVE_POPCOUNT=no
  LV_HAVE_MMX=no
  LV_HAVE_SSE=no
  LV_HAVE_SSE2=no
  LV_HAVE_SSE3=no
  LV_HAVE_SSSE3=no
  LV_HAVE_SSE4_A=no
  LV_HAVE_SSE4_1=no
  LV_HAVE_SSE4_2=no
  LV_HAVE_AVX=no
  case "$MD_CPU" in
  (x86)
    _TRY_ADD_32
    _TRY_ADD_64
    _TRY_ADD_3DNOW
    _TRY_ADD_ABM
    _TRY_ADD_POPCOUNT
    _TRY_ADD_MMX
    _TRY_ADD_SSE
    _TRY_ADD_SSE2
    _TRY_ADD_SSE3
    _TRY_ADD_SSSE3
    _TRY_ADD_SSE4_A
    _TRY_ADD_SSE4_1
    _TRY_ADD_SSE4_2
    _TRY_ADD_AVX
    for i in $cf_with_lv_arch
    do
      if test "X$i" = Xgeneric; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "" && test "$" == "" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_GENERIC, 1, [generic flag set])
      LV_HAVE_GENERIC=yes
      BUILT_ARCHS="${BUILT_ARCHS} generic"
    fi
    indLV_ARCH=no
    for i in $cf_with_lv_arch
    do
      if test "X$i" = Xorc; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "LV_HAVE_ORC" && test "$LV_HAVE_ORC" == "no" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_ORC, 1, [orc flag set])
      LV_HAVE_ORC=yes
      BUILT_ARCHS="${BUILT_ARCHS} orc"
    fi
    indLV_ARCH=no
    for i in $lf_CXXFLAGS
    do
      if test "X$i" = X-m32; then
        indCXX=yes
      fi
    done
    for i in $lf_CFLAGS
    do
      if test "X$i" = X-m32; then
        indCC=yes
      fi
    done
    for i in $cf_with_lv_arch
    do
      if test "X$i" = X32; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "MD_SUBCPU" && test "$MD_SUBCPU" == "x86_64" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indCC" == "yes" && test "$indCXX" == "yes" && test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_32, 1, [32 flag set])
      ADDONS="${ADDONS} -m32"
      BUILT_ARCHS="${BUILT_ARCHS} 32"
      LV_HAVE_32=yes
    fi
    indCC=no
    indCXX=no
    indLV_ARCH=no
    for i in $lf_CXXFLAGS
    do
      if test "X$i" = X-m64; then
        indCXX=yes
      fi
    done
    for i in $lf_CFLAGS
    do
      if test "X$i" = X-m64; then
        indCC=yes
      fi
    done
    for i in $cf_with_lv_arch
    do
      if test "X$i" = X64; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "MD_SUBCPU" && test "$MD_SUBCPU" == "x86" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indCC" == "yes" && test "$indCXX" == "yes" && test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_64, 1, [64 flag set])
      ADDONS="${ADDONS} -m64"
      BUILT_ARCHS="${BUILT_ARCHS} 64"
      LV_HAVE_64=yes
    fi
    indCC=no
    indCXX=no
    indLV_ARCH=no
    for i in $lf_CXXFLAGS
    do
      if test "X$i" = X-m3dnow; then
        indCXX=yes
      fi
    done
    for i in $lf_CFLAGS
    do
      if test "X$i" = X-m3dnow; then
        indCC=yes
      fi
    done
    for i in $cf_with_lv_arch
    do
      if test "X$i" = X3dnow; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "" && test "$" == "" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indCC" == "yes" && test "$indCXX" == "yes" && test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_3DNOW, 1, [3dnow flag set])
      ADDONS="${ADDONS} -m3dnow"
      BUILT_ARCHS="${BUILT_ARCHS} 3dnow"
      LV_HAVE_3DNOW=yes
    fi
    indCC=no
    indCXX=no
    indLV_ARCH=no
    for i in $lf_CXXFLAGS
    do
      if test "X$i" = X-sse4.2; then
        indCXX=yes
      fi
    done
    for i in $lf_CFLAGS
    do
      if test "X$i" = X-sse4.2; then
        indCC=yes
      fi
    done
    for i in $cf_with_lv_arch
    do
      if test "X$i" = Xabm; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "" && test "$" == "" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indCC" == "yes" && test "$indCXX" == "yes" && test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_ABM, 1, [abm flag set])
      ADDONS="${ADDONS} -sse4.2"
      BUILT_ARCHS="${BUILT_ARCHS} abm"
      LV_HAVE_ABM=yes
    fi
    indCC=no
    indCXX=no
    indLV_ARCH=no
    for i in $lf_CXXFLAGS
    do
      if test "X$i" = X-mpopcnt; then
        indCXX=yes
      fi
    done
    for i in $lf_CFLAGS
    do
      if test "X$i" = X-mpopcnt; then
        indCC=yes
      fi
    done
    for i in $cf_with_lv_arch
    do
      if test "X$i" = Xpopcount; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "" && test "$" == "" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indCC" == "yes" && test "$indCXX" == "yes" && test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_POPCOUNT, 1, [popcount flag set])
      ADDONS="${ADDONS} -mpopcnt"
      BUILT_ARCHS="${BUILT_ARCHS} popcount"
      LV_HAVE_POPCOUNT=yes
    fi
    indCC=no
    indCXX=no
    indLV_ARCH=no
    for i in $lf_CXXFLAGS
    do
      if test "X$i" = X-mmmx; then
        indCXX=yes
      fi
    done
    for i in $lf_CFLAGS
    do
      if test "X$i" = X-mmmx; then
        indCC=yes
      fi
    done
    for i in $cf_with_lv_arch
    do
      if test "X$i" = Xmmx; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "" && test "$" == "" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indCC" == "yes" && test "$indCXX" == "yes" && test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_MMX, 1, [mmx flag set])
      ADDONS="${ADDONS} -mmmx"
      BUILT_ARCHS="${BUILT_ARCHS} mmx"
      LV_HAVE_MMX=yes
    fi
    indCC=no
    indCXX=no
    indLV_ARCH=no
    for i in $lf_CXXFLAGS
    do
      if test "X$i" = X-msse; then
        indCXX=yes
      fi
    done
    for i in $lf_CFLAGS
    do
      if test "X$i" = X-msse; then
        indCC=yes
      fi
    done
    for i in $cf_with_lv_arch
    do
      if test "X$i" = Xsse; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "" && test "$" == "" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indCC" == "yes" && test "$indCXX" == "yes" && test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_SSE, 1, [sse flag set])
      ADDONS="${ADDONS} -msse"
      BUILT_ARCHS="${BUILT_ARCHS} sse"
      LV_HAVE_SSE=yes
    fi
    indCC=no
    indCXX=no
    indLV_ARCH=no
    for i in $lf_CXXFLAGS
    do
      if test "X$i" = X-msse2; then
        indCXX=yes
      fi
    done
    for i in $lf_CFLAGS
    do
      if test "X$i" = X-msse2; then
        indCC=yes
      fi
    done
    for i in $cf_with_lv_arch
    do
      if test "X$i" = Xsse2; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "" && test "$" == "" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indCC" == "yes" && test "$indCXX" == "yes" && test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_SSE2, 1, [sse2 flag set])
      ADDONS="${ADDONS} -msse2"
      BUILT_ARCHS="${BUILT_ARCHS} sse2"
      LV_HAVE_SSE2=yes
    fi
    indCC=no
    indCXX=no
    indLV_ARCH=no
    for i in $lf_CXXFLAGS
    do
      if test "X$i" = X-msse3; then
        indCXX=yes
      fi
    done
    for i in $lf_CFLAGS
    do
      if test "X$i" = X-msse3; then
        indCC=yes
      fi
    done
    for i in $cf_with_lv_arch
    do
      if test "X$i" = Xsse3; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "" && test "$" == "" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indCC" == "yes" && test "$indCXX" == "yes" && test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_SSE3, 1, [sse3 flag set])
      ADDONS="${ADDONS} -msse3"
      BUILT_ARCHS="${BUILT_ARCHS} sse3"
      LV_HAVE_SSE3=yes
    fi
    indCC=no
    indCXX=no
    indLV_ARCH=no
    for i in $lf_CXXFLAGS
    do
      if test "X$i" = X-mssse3; then
        indCXX=yes
      fi
    done
    for i in $lf_CFLAGS
    do
      if test "X$i" = X-mssse3; then
        indCC=yes
      fi
    done
    for i in $cf_with_lv_arch
    do
      if test "X$i" = Xssse3; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "" && test "$" == "" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indCC" == "yes" && test "$indCXX" == "yes" && test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_SSSE3, 1, [ssse3 flag set])
      ADDONS="${ADDONS} -mssse3"
      BUILT_ARCHS="${BUILT_ARCHS} ssse3"
      LV_HAVE_SSSE3=yes
    fi
    indCC=no
    indCXX=no
    indLV_ARCH=no
    for i in $lf_CXXFLAGS
    do
      if test "X$i" = X-msse4a; then
        indCXX=yes
      fi
    done
    for i in $lf_CFLAGS
    do
      if test "X$i" = X-msse4a; then
        indCC=yes
      fi
    done
    for i in $cf_with_lv_arch
    do
      if test "X$i" = Xsse4_a; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "" && test "$" == "" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indCC" == "yes" && test "$indCXX" == "yes" && test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_SSE4_A, 1, [sse4_a flag set])
      ADDONS="${ADDONS} -msse4a"
      BUILT_ARCHS="${BUILT_ARCHS} sse4_a"
      LV_HAVE_SSE4_A=yes
    fi
    indCC=no
    indCXX=no
    indLV_ARCH=no
    for i in $lf_CXXFLAGS
    do
      if test "X$i" = X-msse4.1; then
        indCXX=yes
      fi
    done
    for i in $lf_CFLAGS
    do
      if test "X$i" = X-msse4.1; then
        indCC=yes
      fi
    done
    for i in $cf_with_lv_arch
    do
      if test "X$i" = Xsse4_1; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "" && test "$" == "" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indCC" == "yes" && test "$indCXX" == "yes" && test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_SSE4_1, 1, [sse4_1 flag set])
      ADDONS="${ADDONS} -msse4.1"
      BUILT_ARCHS="${BUILT_ARCHS} sse4_1"
      LV_HAVE_SSE4_1=yes
    fi
    indCC=no
    indCXX=no
    indLV_ARCH=no
    for i in $lf_CXXFLAGS
    do
      if test "X$i" = X-msse4.2; then
        indCXX=yes
      fi
    done
    for i in $lf_CFLAGS
    do
      if test "X$i" = X-msse4.2; then
        indCC=yes
      fi
    done
    for i in $cf_with_lv_arch
    do
      if test "X$i" = Xsse4_2; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "" && test "$" == "" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indCC" == "yes" && test "$indCXX" == "yes" && test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_SSE4_2, 1, [sse4_2 flag set])
      ADDONS="${ADDONS} -msse4.2"
      BUILT_ARCHS="${BUILT_ARCHS} sse4_2"
      LV_HAVE_SSE4_2=yes
    fi
    indCC=no
    indCXX=no
    indLV_ARCH=no
    for i in $lf_CXXFLAGS
    do
      if test "X$i" = X-mavx; then
        indCXX=yes
      fi
    done
    for i in $lf_CFLAGS
    do
      if test "X$i" = X-mavx; then
        indCC=yes
      fi
    done
    for i in $cf_with_lv_arch
    do
      if test "X$i" = Xavx; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "" && test "$" == "" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indCC" == "yes" && test "$indCXX" == "yes" && test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_AVX, 1, [avx flag set])
      ADDONS="${ADDONS} -mavx"
      BUILT_ARCHS="${BUILT_ARCHS} avx"
      LV_HAVE_AVX=yes
    fi
    indCC=no
    indCXX=no
    indLV_ARCH=no
  ;;
  (powerpc)
    _TRY_ADD_ALTIVEC
    for i in $cf_with_lv_arch
    do
      if test "X$i" = Xgeneric; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "" && test "$" == "" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_GENERIC, 1, [generic flag set])
      LV_HAVE_GENERIC=yes
      BUILT_ARCHS="${BUILT_ARCHS} generic"
    fi
    indLV_ARCH=no
    for i in $cf_with_lv_arch
    do
      if test "X$i" = Xorc; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "" && test "$" == "" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_ORC, 1, [orc flag set])
      LV_HAVE_ORC=yes
      BUILT_ARCHS="${BUILT_ARCHS} orc"
    fi
    indLV_ARCH=no
    for i in $lf_CXXFLAGS
    do
      if test "X$i" = X-maltivec; then
        indCXX=yes
      fi
    done
    for i in $lf_CFLAGS
    do
      if test "X$i" = X-maltivec; then
        indCC=yes
      fi
    done
    for i in $cf_with_lv_arch
    do
      if test "X$i" = Xaltivec; then
        indLV_ARCH=yes
      fi
    done
    if test "$indCC" = yes && test "indCXX" = yes && "indLV_ARCH" = yes; then
      AC_DEFINE(LV_HAVE_ALTIVEC, 1, [altivec flag set])
      ADDONS="${ADDONS} -maltivec"
      BUILT_ARCHS="${BUILT_ARCHS} altivec"
      LV_HAVE_ALTIVEC=yes
    fi
    indCC=no
    indCXX=no
    indLV_ARCH=no
  ;;
  (*)
    for i in $cf_with_lv_arch
    do
      if test "X$i" = Xgeneric; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "" && test "$" == "" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_GENERIC, 1, [generic flag set])
      LV_HAVE_GENERIC=yes
      BUILT_ARCHS="${BUILT_ARCHS} generic"
    fi
    indLV_ARCH=no
    for i in $cf_with_lv_arch
    do
      if test "X$i" = Xorc; then
        indLV_ARCH=yes
      fi
    done
    if  test -n "" && test "$" == "" && test "$OVERRULE_FLAG" == "yes" && test "$indLV_ARCH" == "yes"; then
      indLV_ARCH=no
    fi
    if test "$indLV_ARCH" == "yes"; then
      AC_DEFINE(LV_HAVE_ORC, 1, [orc flag set])
      LV_HAVE_ORC=yes
      BUILT_ARCHS="${BUILT_ARCHS} orc"
    fi
    indLV_ARCH=no
  ;;
  esac
  LV_CXXFLAGS="${LV_CXXFLAGS} ${ADDONS}"
])