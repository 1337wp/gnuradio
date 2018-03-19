/*this file is auto_generated by volk_register.py*/

#include <volk/volk_cpu.h>
#include <volk/volk_config_fixed.h>

struct VOLK_CPU volk_cpu;

int i_can_has_generic () {
    return 1;
}

int i_can_has_orc () {
    return 1;
}

int i_can_has_altivec () {
    return 1;
}

int i_can_has_32 () {
    return 0;
}

int i_can_has_64 () {
    return 0;
}

int i_can_has_3dnow () {
    return 0;
}

int i_can_has_abm () {
    return 0;
}

int i_can_has_popcount () {
    return 0;
}

int i_can_has_mmx () {
    return 0;
}

int i_can_has_sse () {
    return 0;
}

int i_can_has_sse2 () {
    return 0;
}

int i_can_has_sse3 () {
    return 0;
}

int i_can_has_ssse3 () {
    return 0;
}

int i_can_has_sse4_a () {
    return 0;
}

int i_can_has_sse4_1 () {
    return 0;
}

int i_can_has_sse4_2 () {
    return 0;
}

int i_can_has_avx () {
    return 0;
}

void volk_cpu_init() {
    volk_cpu.has_generic = &i_can_has_generic;
    volk_cpu.has_orc = &i_can_has_orc;
    volk_cpu.has_altivec = &i_can_has_altivec;
    volk_cpu.has_32 = &i_can_has_32;
    volk_cpu.has_64 = &i_can_has_64;
    volk_cpu.has_3dnow = &i_can_has_3dnow;
    volk_cpu.has_abm = &i_can_has_abm;
    volk_cpu.has_popcount = &i_can_has_popcount;
    volk_cpu.has_mmx = &i_can_has_mmx;
    volk_cpu.has_sse = &i_can_has_sse;
    volk_cpu.has_sse2 = &i_can_has_sse2;
    volk_cpu.has_sse3 = &i_can_has_sse3;
    volk_cpu.has_ssse3 = &i_can_has_ssse3;
    volk_cpu.has_sse4_a = &i_can_has_sse4_a;
    volk_cpu.has_sse4_1 = &i_can_has_sse4_1;
    volk_cpu.has_sse4_2 = &i_can_has_sse4_2;
    volk_cpu.has_avx = &i_can_has_avx;
}

unsigned int volk_get_lvarch() {
    unsigned int retval = 0;
    volk_cpu_init();
    retval += volk_cpu.has_generic() << LV_GENERIC;
    retval += volk_cpu.has_orc() << LV_ORC;
    retval += volk_cpu.has_altivec() << LV_ALTIVEC;
    retval += volk_cpu.has_32() << LV_32;
    retval += volk_cpu.has_64() << LV_64;
    retval += volk_cpu.has_3dnow() << LV_3DNOW;
    retval += volk_cpu.has_abm() << LV_ABM;
    retval += volk_cpu.has_popcount() << LV_POPCOUNT;
    retval += volk_cpu.has_mmx() << LV_MMX;
    retval += volk_cpu.has_sse() << LV_SSE;
    retval += volk_cpu.has_sse2() << LV_SSE2;
    retval += volk_cpu.has_sse3() << LV_SSE3;
    retval += volk_cpu.has_ssse3() << LV_SSSE3;
    retval += volk_cpu.has_sse4_a() << LV_SSE4_A;
    retval += volk_cpu.has_sse4_1() << LV_SSE4_1;
    retval += volk_cpu.has_sse4_2() << LV_SSE4_2;
    retval += volk_cpu.has_avx() << LV_AVX;
    return retval;
}

