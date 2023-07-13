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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Xilinx/elevator_final_bun/registeer.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );


static void work_a_0146618706_3212880686_p_0(char *t0)
{
    char t16[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    static char *nl0[] = {&&LAB13, &&LAB13, &&LAB11, &&LAB12, &&LAB13, &&LAB13, &&LAB13, &&LAB13, &&LAB13};

LAB0:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)3);
    if (t11 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 3776);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3632);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 5716);
    t6 = (t0 + 3712);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(24, ng0);
    t5 = (t0 + 1352U);
    t6 = *((char **)t5);
    t13 = *((unsigned char *)t6);
    t5 = (char *)((nl0) + t13);
    goto **((char **)t5);

LAB7:    t1 = (t0 + 992U);
    t12 = xsi_signal_has_event(t1);
    t3 = t12;
    goto LAB9;

LAB10:    goto LAB3;

LAB11:    xsi_set_current_line(25, ng0);
    t7 = (t0 + 1832U);
    t8 = *((char **)t7);
    t7 = (t0 + 3712);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB10;

LAB12:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)3);
    if (t11 == 1)
        goto LAB17;

LAB18:    t3 = (unsigned char)0;

LAB19:    if (t3 != 0)
        goto LAB14;

LAB16:
LAB15:    goto LAB10;

LAB13:    xsi_set_current_line(30, ng0);
    goto LAB10;

LAB14:    xsi_set_current_line(28, ng0);
    t8 = (t0 + 2152U);
    t9 = *((char **)t8);
    t8 = (t0 + 5676U);
    t10 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t16, t9, t8, (unsigned char)3);
    t14 = (t16 + 12U);
    t17 = *((unsigned int *)t14);
    t18 = (1U * t17);
    t13 = (4U != t18);
    if (t13 == 1)
        goto LAB20;

LAB21:    t15 = (t0 + 3712);
    t19 = (t15 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t10, 4U);
    xsi_driver_first_trans_fast(t15);
    goto LAB15;

LAB17:    t1 = (t0 + 2152U);
    t5 = *((char **)t1);
    t1 = (t0 + 5676U);
    t6 = (t0 + 1672U);
    t7 = *((char **)t6);
    t6 = (t0 + 5628U);
    t12 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t5, t1, t7, t6);
    t3 = t12;
    goto LAB19;

LAB20:    xsi_size_not_matching(4U, t18, 0);
    goto LAB21;

}


extern void work_a_0146618706_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0146618706_3212880686_p_0};
	xsi_register_didat("work_a_0146618706_3212880686", "isim/simulation_isim_beh.exe.sim/work/a_0146618706_3212880686.didat");
	xsi_register_executes(pe);
}
