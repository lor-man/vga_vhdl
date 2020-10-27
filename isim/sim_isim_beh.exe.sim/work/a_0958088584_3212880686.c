/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/media/omar/Documentos/Archivos v/Cursos/ElbertV2/VGA_controlador/vga_sync.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_13554554585326073636_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_3488768496604610246_503743352(char *, unsigned char , unsigned char );


static void work_a_0958088584_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 7920);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(71, ng0);
    t3 = (t0 + 2952U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 + 1);
    t3 = (t0 + 8112);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t6;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (96 - 1);
    t2 = (t5 == t6);
    if (t2 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (800 - 1);
    t2 = (t5 == t6);
    if (t2 != 0)
        goto LAB8;

LAB9:    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (264 - 1);
    t2 = (t5 == t6);
    if (t2 != 0)
        goto LAB10;

LAB11:    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (664 - 1);
    t2 = (t5 == t6);
    if (t2 != 0)
        goto LAB12;

LAB13:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 8176);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 8240);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 8176);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 8240);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 8112);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB10:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 8304);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB12:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 8304);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

}

static void work_a_0958088584_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 3712U);
    t2 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 7936);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(90, ng0);
    t3 = (t0 + 2792U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 + 1);
    t3 = (t0 + 8368);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t6;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (2 - 1);
    t2 = (t5 == t6);
    if (t2 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (525 - 1);
    t2 = (t5 == t6);
    if (t2 != 0)
        goto LAB8;

LAB9:    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (75 - 1);
    t2 = (t5 == t6);
    if (t2 != 0)
        goto LAB10;

LAB11:    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (475 - 1);
    t2 = (t5 == t6);
    if (t2 != 0)
        goto LAB12;

LAB13:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 8432);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 8432);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 8368);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB10:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 8496);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB12:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 8496);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

}

static void work_a_0958088584_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(103, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 8560);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t1);

LAB2:    t11 = (t0 + 7952);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0958088584_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(104, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8624);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 7968);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0958088584_3212880686_p_4(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 7984);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(108, ng0);
    t3 = (t0 + 3112U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 + 1);
    t3 = (t0 + 8688);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t6;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(109, ng0);
    t1 = (t0 + 3112U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 13);
    if (t2 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 3112U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 24);
    if (t2 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(110, ng0);
    t1 = (t0 + 8752);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 8752);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(113, ng0);
    t1 = (t0 + 8688);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

}

static void work_a_0958088584_3212880686_p_5(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(121, ng0);
    t1 = (t0 + 3712U);
    t2 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 8000);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(122, ng0);
    t3 = (t0 + 3272U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 + 1);
    t3 = (t0 + 8816);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t6;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(123, ng0);
    t1 = (t0 + 3272U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 12);
    if (t2 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 3272U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 24);
    if (t2 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(124, ng0);
    t1 = (t0 + 8880);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(126, ng0);
    t1 = (t0 + 8880);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(127, ng0);
    t1 = (t0 + 8816);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

}

static void work_a_0958088584_3212880686_p_6(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    int t13;
    char *t14;

LAB0:    xsi_set_current_line(134, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t2 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t1, t4, 4);
    t5 = (t0 + 8944);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(135, ng0);
    t2 = (t0 + 2432U);
    t10 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t10 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 8016);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(136, ng0);
    t3 = (t0 + 2312U);
    t5 = *((char **)t3);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    if (t12 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(137, ng0);
    t3 = (t0 + 3592U);
    t6 = *((char **)t3);
    t4 = *((int *)t6);
    t13 = (t4 + 1);
    t3 = (t0 + 9008);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t14 = *((char **)t9);
    *((int *)t14) = t13;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(138, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t10 = (t4 == 15);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(139, ng0);
    t2 = (t0 + 9008);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

}

static void work_a_0958088584_3212880686_p_7(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    int t13;
    char *t14;

LAB0:    xsi_set_current_line(150, ng0);
    t2 = (t0 + 3432U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t2 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t1, t4, 4);
    t5 = (t0 + 9072);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(151, ng0);
    t2 = (t0 + 2592U);
    t10 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t10 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 8032);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(152, ng0);
    t3 = (t0 + 2152U);
    t5 = *((char **)t3);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    if (t12 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(153, ng0);
    t3 = (t0 + 3432U);
    t6 = *((char **)t3);
    t4 = *((int *)t6);
    t13 = (t4 + 1);
    t3 = (t0 + 9136);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t14 = *((char **)t9);
    *((int *)t14) = t13;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(154, ng0);
    t2 = (t0 + 3432U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t10 = (t4 == 16);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(155, ng0);
    t2 = (t0 + 9136);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

}


extern void work_a_0958088584_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0958088584_3212880686_p_0,(void *)work_a_0958088584_3212880686_p_1,(void *)work_a_0958088584_3212880686_p_2,(void *)work_a_0958088584_3212880686_p_3,(void *)work_a_0958088584_3212880686_p_4,(void *)work_a_0958088584_3212880686_p_5,(void *)work_a_0958088584_3212880686_p_6,(void *)work_a_0958088584_3212880686_p_7};
	xsi_register_didat("work_a_0958088584_3212880686", "isim/sim_isim_beh.exe.sim/work/a_0958088584_3212880686.didat");
	xsi_register_executes(pe);
}
