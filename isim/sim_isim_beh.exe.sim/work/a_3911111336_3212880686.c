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
static const char *ng0 = "/media/omar/Documentos/Archivos v/Cursos/ElbertV2/VGA_controlador/Generador_magen.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_1496620905533613331_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3911111336_3212880686_p_0(char *t0)
{
    char t1[16];
    char t2[16];
    char t3[16];
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(61, ng0);

LAB3:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 5200U);
    t6 = (t0 + 5252);
    t8 = (t0 + 5168U);
    t9 = ieee_p_3620187407_sub_1496620905533613331_3965413181(IEEE_P_3620187407, t3, t5, t4, t6, t8);
    t10 = (t0 + 1192U);
    t11 = *((char **)t10);
    t10 = (t0 + 5200U);
    t12 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t2, t9, t3, t11, t10);
    t13 = (t0 + 1032U);
    t14 = *((char **)t13);
    t13 = (t0 + 5184U);
    t15 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t1, t12, t2, t14, t13);
    t16 = (t1 + 12U);
    t17 = *((unsigned int *)t16);
    t18 = (1U * t17);
    t19 = (8U != t18);
    if (t19 == 1)
        goto LAB5;

LAB6:    t20 = (t0 + 3144);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t15, 8U);
    xsi_driver_first_trans_fast_port(t20);

LAB2:    t25 = (t0 + 3064);
    *((int *)t25) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t18, 0);
    goto LAB6;

}


extern void work_a_3911111336_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3911111336_3212880686_p_0};
	xsi_register_didat("work_a_3911111336_3212880686", "isim/sim_isim_beh.exe.sim/work/a_3911111336_3212880686.didat");
	xsi_register_executes(pe);
}
