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
static const char *ng0 = "D:/verilog/alu1/alu.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};



static void Cont_27_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t36[8];
    char t71[8];
    char t72[8];
    char t75[8];
    char t105[8];
    char t136[8];
    char t137[8];
    char t140[8];
    char t170[8];
    char t187[8];
    char t188[8];
    char t191[8];
    char t221[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    int t59;
    int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t73;
    char *t74;
    char *t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;
    char *t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    char *t103;
    char *t104;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;
    char *t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    char *t118;
    char *t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    char *t138;
    char *t139;
    char *t141;
    char *t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    char *t155;
    char *t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    char *t162;
    char *t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    char *t167;
    char *t168;
    char *t169;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    char *t174;
    char *t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    char *t189;
    char *t190;
    char *t192;
    char *t193;
    unsigned int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    unsigned int t200;
    unsigned int t201;
    unsigned int t202;
    unsigned int t203;
    unsigned int t204;
    unsigned int t205;
    char *t206;
    char *t207;
    unsigned int t208;
    unsigned int t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    char *t213;
    char *t214;
    unsigned int t215;
    unsigned int t216;
    unsigned int t217;
    char *t218;
    char *t219;
    char *t220;
    unsigned int t222;
    unsigned int t223;
    unsigned int t224;
    unsigned int t225;
    char *t226;
    char *t227;
    char *t228;
    char *t229;
    char *t230;
    unsigned int t231;
    unsigned int t232;
    char *t233;
    unsigned int t234;
    unsigned int t235;
    char *t236;
    unsigned int t237;
    unsigned int t238;
    char *t239;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1368U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t67 = *((unsigned int *)t4);
    t68 = (~(t67));
    t69 = *((unsigned int *)t29);
    t70 = (t68 || t69);
    if (t70 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t71, 8);

LAB20:    t226 = (t0 + 3088);
    t227 = (t226 + 56U);
    t228 = *((char **)t227);
    t229 = (t228 + 56U);
    t230 = *((char **)t229);
    memset(t230, 0, 8);
    t231 = 15U;
    t232 = t231;
    t233 = (t3 + 4);
    t234 = *((unsigned int *)t3);
    t231 = (t231 & t234);
    t235 = *((unsigned int *)t233);
    t232 = (t232 & t235);
    t236 = (t230 + 4);
    t237 = *((unsigned int *)t230);
    *((unsigned int *)t230) = (t237 | t231);
    t238 = *((unsigned int *)t236);
    *((unsigned int *)t236) = (t238 | t232);
    xsi_driver_vfirst_trans(t226, 0, 3);
    t239 = (t0 + 3008);
    *((int *)t239) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 1048U);
    t34 = *((char **)t33);
    t33 = (t0 + 1208U);
    t35 = *((char **)t33);
    t37 = *((unsigned int *)t34);
    t38 = *((unsigned int *)t35);
    t39 = (t37 & t38);
    *((unsigned int *)t36) = t39;
    t33 = (t34 + 4);
    t40 = (t35 + 4);
    t41 = (t36 + 4);
    t42 = *((unsigned int *)t33);
    t43 = *((unsigned int *)t40);
    t44 = (t42 | t43);
    *((unsigned int *)t41) = t44;
    t45 = *((unsigned int *)t41);
    t46 = (t45 != 0);
    if (t46 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB13;

LAB14:    t73 = (t0 + 1368U);
    t74 = *((char **)t73);
    t73 = ((char*)((ng2)));
    memset(t75, 0, 8);
    t76 = (t74 + 4);
    t77 = (t73 + 4);
    t78 = *((unsigned int *)t74);
    t79 = *((unsigned int *)t73);
    t80 = (t78 ^ t79);
    t81 = *((unsigned int *)t76);
    t82 = *((unsigned int *)t77);
    t83 = (t81 ^ t82);
    t84 = (t80 | t83);
    t85 = *((unsigned int *)t76);
    t86 = *((unsigned int *)t77);
    t87 = (t85 | t86);
    t88 = (~(t87));
    t89 = (t84 & t88);
    if (t89 != 0)
        goto LAB27;

LAB24:    if (t87 != 0)
        goto LAB26;

LAB25:    *((unsigned int *)t75) = 1;

LAB27:    memset(t72, 0, 8);
    t91 = (t75 + 4);
    t92 = *((unsigned int *)t91);
    t93 = (~(t92));
    t94 = *((unsigned int *)t75);
    t95 = (t94 & t93);
    t96 = (t95 & 1U);
    if (t96 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t91) != 0)
        goto LAB30;

LAB31:    t98 = (t72 + 4);
    t99 = *((unsigned int *)t72);
    t100 = *((unsigned int *)t98);
    t101 = (t99 || t100);
    if (t101 > 0)
        goto LAB32;

LAB33:    t132 = *((unsigned int *)t72);
    t133 = (~(t132));
    t134 = *((unsigned int *)t98);
    t135 = (t133 || t134);
    if (t135 > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t98) > 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t72) > 0)
        goto LAB38;

LAB39:    memcpy(t71, t136, 8);

LAB40:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 4, t36, 4, t71, 4);
    goto LAB20;

LAB18:    memcpy(t3, t36, 8);
    goto LAB20;

LAB21:    t47 = *((unsigned int *)t36);
    t48 = *((unsigned int *)t41);
    *((unsigned int *)t36) = (t47 | t48);
    t49 = (t34 + 4);
    t50 = (t35 + 4);
    t51 = *((unsigned int *)t34);
    t52 = (~(t51));
    t53 = *((unsigned int *)t49);
    t54 = (~(t53));
    t55 = *((unsigned int *)t35);
    t56 = (~(t55));
    t57 = *((unsigned int *)t50);
    t58 = (~(t57));
    t59 = (t52 & t54);
    t60 = (t56 & t58);
    t61 = (~(t59));
    t62 = (~(t60));
    t63 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t63 & t61);
    t64 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t64 & t62);
    t65 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t65 & t61);
    t66 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t66 & t62);
    goto LAB23;

LAB26:    t90 = (t75 + 4);
    *((unsigned int *)t75) = 1;
    *((unsigned int *)t90) = 1;
    goto LAB27;

LAB28:    *((unsigned int *)t72) = 1;
    goto LAB31;

LAB30:    t97 = (t72 + 4);
    *((unsigned int *)t72) = 1;
    *((unsigned int *)t97) = 1;
    goto LAB31;

LAB32:    t102 = (t0 + 1048U);
    t103 = *((char **)t102);
    t102 = (t0 + 1208U);
    t104 = *((char **)t102);
    t106 = *((unsigned int *)t103);
    t107 = *((unsigned int *)t104);
    t108 = (t106 | t107);
    *((unsigned int *)t105) = t108;
    t102 = (t103 + 4);
    t109 = (t104 + 4);
    t110 = (t105 + 4);
    t111 = *((unsigned int *)t102);
    t112 = *((unsigned int *)t109);
    t113 = (t111 | t112);
    *((unsigned int *)t110) = t113;
    t114 = *((unsigned int *)t110);
    t115 = (t114 != 0);
    if (t115 == 1)
        goto LAB41;

LAB42:
LAB43:    goto LAB33;

LAB34:    t138 = (t0 + 1368U);
    t139 = *((char **)t138);
    t138 = ((char*)((ng3)));
    memset(t140, 0, 8);
    t141 = (t139 + 4);
    t142 = (t138 + 4);
    t143 = *((unsigned int *)t139);
    t144 = *((unsigned int *)t138);
    t145 = (t143 ^ t144);
    t146 = *((unsigned int *)t141);
    t147 = *((unsigned int *)t142);
    t148 = (t146 ^ t147);
    t149 = (t145 | t148);
    t150 = *((unsigned int *)t141);
    t151 = *((unsigned int *)t142);
    t152 = (t150 | t151);
    t153 = (~(t152));
    t154 = (t149 & t153);
    if (t154 != 0)
        goto LAB47;

LAB44:    if (t152 != 0)
        goto LAB46;

LAB45:    *((unsigned int *)t140) = 1;

LAB47:    memset(t137, 0, 8);
    t156 = (t140 + 4);
    t157 = *((unsigned int *)t156);
    t158 = (~(t157));
    t159 = *((unsigned int *)t140);
    t160 = (t159 & t158);
    t161 = (t160 & 1U);
    if (t161 != 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t156) != 0)
        goto LAB50;

LAB51:    t163 = (t137 + 4);
    t164 = *((unsigned int *)t137);
    t165 = *((unsigned int *)t163);
    t166 = (t164 || t165);
    if (t166 > 0)
        goto LAB52;

LAB53:    t183 = *((unsigned int *)t137);
    t184 = (~(t183));
    t185 = *((unsigned int *)t163);
    t186 = (t184 || t185);
    if (t186 > 0)
        goto LAB54;

LAB55:    if (*((unsigned int *)t163) > 0)
        goto LAB56;

LAB57:    if (*((unsigned int *)t137) > 0)
        goto LAB58;

LAB59:    memcpy(t136, t187, 8);

LAB60:    goto LAB35;

LAB36:    xsi_vlog_unsigned_bit_combine(t71, 4, t105, 4, t136, 4);
    goto LAB40;

LAB38:    memcpy(t71, t105, 8);
    goto LAB40;

LAB41:    t116 = *((unsigned int *)t105);
    t117 = *((unsigned int *)t110);
    *((unsigned int *)t105) = (t116 | t117);
    t118 = (t103 + 4);
    t119 = (t104 + 4);
    t120 = *((unsigned int *)t118);
    t121 = (~(t120));
    t122 = *((unsigned int *)t103);
    t123 = (t122 & t121);
    t124 = *((unsigned int *)t119);
    t125 = (~(t124));
    t126 = *((unsigned int *)t104);
    t127 = (t126 & t125);
    t128 = (~(t123));
    t129 = (~(t127));
    t130 = *((unsigned int *)t110);
    *((unsigned int *)t110) = (t130 & t128);
    t131 = *((unsigned int *)t110);
    *((unsigned int *)t110) = (t131 & t129);
    goto LAB43;

LAB46:    t155 = (t140 + 4);
    *((unsigned int *)t140) = 1;
    *((unsigned int *)t155) = 1;
    goto LAB47;

LAB48:    *((unsigned int *)t137) = 1;
    goto LAB51;

LAB50:    t162 = (t137 + 4);
    *((unsigned int *)t137) = 1;
    *((unsigned int *)t162) = 1;
    goto LAB51;

LAB52:    t167 = (t0 + 1048U);
    t168 = *((char **)t167);
    t167 = (t0 + 1208U);
    t169 = *((char **)t167);
    t171 = *((unsigned int *)t168);
    t172 = *((unsigned int *)t169);
    t173 = (t171 ^ t172);
    *((unsigned int *)t170) = t173;
    t167 = (t168 + 4);
    t174 = (t169 + 4);
    t175 = (t170 + 4);
    t176 = *((unsigned int *)t167);
    t177 = *((unsigned int *)t174);
    t178 = (t176 | t177);
    *((unsigned int *)t175) = t178;
    t179 = *((unsigned int *)t175);
    t180 = (t179 != 0);
    if (t180 == 1)
        goto LAB61;

LAB62:
LAB63:    goto LAB53;

LAB54:    t189 = (t0 + 1368U);
    t190 = *((char **)t189);
    t189 = ((char*)((ng4)));
    memset(t191, 0, 8);
    t192 = (t190 + 4);
    t193 = (t189 + 4);
    t194 = *((unsigned int *)t190);
    t195 = *((unsigned int *)t189);
    t196 = (t194 ^ t195);
    t197 = *((unsigned int *)t192);
    t198 = *((unsigned int *)t193);
    t199 = (t197 ^ t198);
    t200 = (t196 | t199);
    t201 = *((unsigned int *)t192);
    t202 = *((unsigned int *)t193);
    t203 = (t201 | t202);
    t204 = (~(t203));
    t205 = (t200 & t204);
    if (t205 != 0)
        goto LAB67;

LAB64:    if (t203 != 0)
        goto LAB66;

LAB65:    *((unsigned int *)t191) = 1;

LAB67:    memset(t188, 0, 8);
    t207 = (t191 + 4);
    t208 = *((unsigned int *)t207);
    t209 = (~(t208));
    t210 = *((unsigned int *)t191);
    t211 = (t210 & t209);
    t212 = (t211 & 1U);
    if (t212 != 0)
        goto LAB68;

LAB69:    if (*((unsigned int *)t207) != 0)
        goto LAB70;

LAB71:    t214 = (t188 + 4);
    t215 = *((unsigned int *)t188);
    t216 = *((unsigned int *)t214);
    t217 = (t215 || t216);
    if (t217 > 0)
        goto LAB72;

LAB73:    t222 = *((unsigned int *)t188);
    t223 = (~(t222));
    t224 = *((unsigned int *)t214);
    t225 = (t223 || t224);
    if (t225 > 0)
        goto LAB74;

LAB75:    if (*((unsigned int *)t214) > 0)
        goto LAB76;

LAB77:    if (*((unsigned int *)t188) > 0)
        goto LAB78;

LAB79:    memcpy(t187, t218, 8);

LAB80:    goto LAB55;

LAB56:    xsi_vlog_unsigned_bit_combine(t136, 4, t170, 4, t187, 4);
    goto LAB60;

LAB58:    memcpy(t136, t170, 8);
    goto LAB60;

LAB61:    t181 = *((unsigned int *)t170);
    t182 = *((unsigned int *)t175);
    *((unsigned int *)t170) = (t181 | t182);
    goto LAB63;

LAB66:    t206 = (t191 + 4);
    *((unsigned int *)t191) = 1;
    *((unsigned int *)t206) = 1;
    goto LAB67;

LAB68:    *((unsigned int *)t188) = 1;
    goto LAB71;

LAB70:    t213 = (t188 + 4);
    *((unsigned int *)t188) = 1;
    *((unsigned int *)t213) = 1;
    goto LAB71;

LAB72:    t218 = (t0 + 1048U);
    t219 = *((char **)t218);
    t218 = (t0 + 1208U);
    t220 = *((char **)t218);
    memset(t221, 0, 8);
    xsi_vlog_unsigned_add(t221, 4, t219, 4, t220, 4);
    goto LAB73;

LAB74:    t218 = ((char*)((ng1)));
    goto LAB75;

LAB76:    xsi_vlog_unsigned_bit_combine(t187, 4, t221, 4, t218, 4);
    goto LAB80;

LAB78:    memcpy(t187, t221, 8);
    goto LAB80;

}


extern void work_m_00000000002995135202_2725559894_init()
{
	static char *pe[] = {(void *)Cont_27_0};
	xsi_register_didat("work_m_00000000002995135202_2725559894", "isim/alu1_test_isim_beh.exe.sim/work/m_00000000002995135202_2725559894.didat");
	xsi_register_executes(pe);
}
