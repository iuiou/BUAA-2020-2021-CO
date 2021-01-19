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
static const char *ng0 = "D:/verilog/P5/test.v";
static int ng1[] = {0, 0};
static int ng2[] = {5000, 0};
static unsigned int ng3[] = {16384U, 0U};
static int ng4[] = {1, 0};



static void Initial_37_0(char *t0)
{
    char t6[8];
    char t18[8];
    char t29[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);

LAB4:    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(44, ng0);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB6:    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB7;

LAB8:    goto LAB1;

LAB7:    xsi_set_current_line(44, ng0);

LAB9:    xsi_set_current_line(45, ng0);
    t13 = (t0 + 4260);
    t14 = *((char **)t13);
    t15 = ((((char*)(t14))) + 56U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng3)));
    memset(t18, 0, 8);
    t19 = (t16 + 4);
    if (*((unsigned int *)t19) != 0)
        goto LAB11;

LAB10:    t20 = (t17 + 4);
    if (*((unsigned int *)t20) != 0)
        goto LAB11;

LAB14:    if (*((unsigned int *)t16) < *((unsigned int *)t17))
        goto LAB12;

LAB13:    t22 = (t18 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t18);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB15;

LAB16:
LAB17:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1608);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB6;

LAB11:    t21 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB13;

LAB12:    *((unsigned int *)t18) = 1;
    goto LAB13;

LAB15:    xsi_set_current_line(45, ng0);
    t28 = (t0 + 2336);
    xsi_process_wait(t28, 5000LL);
    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB18:    xsi_set_current_line(45, ng0);
    t30 = (t0 + 1288);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memset(t29, 0, 8);
    t33 = (t32 + 4);
    t34 = *((unsigned int *)t33);
    t35 = (~(t34));
    t36 = *((unsigned int *)t32);
    t37 = (t36 & t35);
    t38 = (t37 & 1U);
    if (t38 != 0)
        goto LAB22;

LAB20:    if (*((unsigned int *)t33) == 0)
        goto LAB19;

LAB21:    t39 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t39) = 1;

LAB22:    t40 = (t29 + 4);
    t41 = (t32 + 4);
    t42 = *((unsigned int *)t32);
    t43 = (~(t42));
    *((unsigned int *)t29) = t43;
    *((unsigned int *)t40) = 0;
    if (*((unsigned int *)t41) != 0)
        goto LAB24;

LAB23:    t48 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t48 & 1U);
    t49 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t49 & 1U);
    t50 = (t0 + 1288);
    xsi_vlogvar_assign_value(t50, t29, 0, 0, 1);
    goto LAB17;

LAB19:    *((unsigned int *)t29) = 1;
    goto LAB22;

LAB24:    t44 = *((unsigned int *)t29);
    t45 = *((unsigned int *)t41);
    *((unsigned int *)t29) = (t44 | t45);
    t46 = *((unsigned int *)t40);
    t47 = *((unsigned int *)t41);
    *((unsigned int *)t40) = (t46 | t47);
    goto LAB23;

}


extern void work_m_00000000000456604041_1985558087_init()
{
	static char *pe[] = {(void *)Initial_37_0};
	xsi_register_didat("work_m_00000000000456604041_1985558087", "isim/test_isim_beh.exe.sim/work/m_00000000000456604041_1985558087.didat");
	xsi_register_executes(pe);
}
