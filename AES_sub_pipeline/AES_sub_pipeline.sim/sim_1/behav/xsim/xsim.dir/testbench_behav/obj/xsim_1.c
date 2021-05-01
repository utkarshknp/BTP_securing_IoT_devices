/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_3082(char*, char *);
extern void execute_3083(char*, char *);
extern void execute_21340(char*, char *);
extern void execute_21341(char*, char *);
extern void execute_21342(char*, char *);
extern void execute_3081(char*, char *);
extern void execute_21310(char*, char *);
extern void execute_21311(char*, char *);
extern void execute_21312(char*, char *);
extern void execute_21313(char*, char *);
extern void execute_21314(char*, char *);
extern void execute_21315(char*, char *);
extern void execute_21316(char*, char *);
extern void execute_21317(char*, char *);
extern void execute_21318(char*, char *);
extern void execute_21319(char*, char *);
extern void execute_21320(char*, char *);
extern void execute_21321(char*, char *);
extern void execute_21322(char*, char *);
extern void execute_21323(char*, char *);
extern void execute_21324(char*, char *);
extern void execute_21325(char*, char *);
extern void execute_21326(char*, char *);
extern void execute_21327(char*, char *);
extern void execute_21328(char*, char *);
extern void execute_21329(char*, char *);
extern void execute_21330(char*, char *);
extern void execute_21331(char*, char *);
extern void execute_21332(char*, char *);
extern void execute_21333(char*, char *);
extern void execute_21334(char*, char *);
extern void execute_21335(char*, char *);
extern void execute_21336(char*, char *);
extern void execute_21337(char*, char *);
extern void execute_21338(char*, char *);
extern void execute_21339(char*, char *);
extern void execute_310(char*, char *);
extern void execute_4908(char*, char *);
extern void vlog_simple_process_execute_1_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_4910(char*, char *);
extern void execute_4911(char*, char *);
extern void execute_3088(char*, char *);
extern void execute_3089(char*, char *);
extern void execute_3090(char*, char *);
extern void execute_3091(char*, char *);
extern void execute_3092(char*, char *);
extern void execute_3093(char*, char *);
extern void execute_3094(char*, char *);
extern void execute_3095(char*, char *);
extern void execute_3096(char*, char *);
extern void execute_3097(char*, char *);
extern void execute_3098(char*, char *);
extern void execute_3099(char*, char *);
extern void execute_3100(char*, char *);
extern void execute_3101(char*, char *);
extern void execute_3102(char*, char *);
extern void execute_3103(char*, char *);
extern void execute_3104(char*, char *);
extern void execute_3105(char*, char *);
extern void execute_3106(char*, char *);
extern void execute_3168(char*, char *);
extern void execute_3169(char*, char *);
extern void execute_3170(char*, char *);
extern void execute_3171(char*, char *);
extern void execute_3172(char*, char *);
extern void execute_3173(char*, char *);
extern void execute_3174(char*, char *);
extern void execute_3175(char*, char *);
extern void execute_3176(char*, char *);
extern void execute_3177(char*, char *);
extern void execute_3178(char*, char *);
extern void execute_3179(char*, char *);
extern void execute_3180(char*, char *);
extern void execute_3181(char*, char *);
extern void execute_3182(char*, char *);
extern void execute_3183(char*, char *);
extern void execute_3184(char*, char *);
extern void execute_3107(char*, char *);
extern void execute_3108(char*, char *);
extern void execute_3109(char*, char *);
extern void execute_3110(char*, char *);
extern void execute_3111(char*, char *);
extern void execute_3112(char*, char *);
extern void execute_3113(char*, char *);
extern void execute_3114(char*, char *);
extern void execute_3115(char*, char *);
extern void execute_3116(char*, char *);
extern void execute_3117(char*, char *);
extern void execute_3118(char*, char *);
extern void execute_3119(char*, char *);
extern void execute_3120(char*, char *);
extern void execute_3137(char*, char *);
extern void execute_3138(char*, char *);
extern void execute_3139(char*, char *);
extern void execute_3140(char*, char *);
extern void execute_3167(char*, char *);
extern void execute_3121(char*, char *);
extern void execute_3122(char*, char *);
extern void execute_3123(char*, char *);
extern void execute_3124(char*, char *);
extern void execute_3125(char*, char *);
extern void execute_3127(char*, char *);
extern void execute_3136(char*, char *);
extern void execute_3126(char*, char *);
extern void execute_3128(char*, char *);
extern void execute_3129(char*, char *);
extern void execute_3130(char*, char *);
extern void execute_3131(char*, char *);
extern void execute_3153(char*, char *);
extern void execute_3149(char*, char *);
extern void execute_3150(char*, char *);
extern void execute_3151(char*, char *);
extern void execute_3152(char*, char *);
extern void execute_4876(char*, char *);
extern void execute_4877(char*, char *);
extern void execute_4878(char*, char *);
extern void execute_4879(char*, char *);
extern void execute_4880(char*, char *);
extern void execute_4881(char*, char *);
extern void execute_4882(char*, char *);
extern void execute_4883(char*, char *);
extern void execute_4884(char*, char *);
extern void execute_4885(char*, char *);
extern void execute_4886(char*, char *);
extern void execute_4887(char*, char *);
extern void execute_4888(char*, char *);
extern void execute_4889(char*, char *);
extern void execute_4890(char*, char *);
extern void execute_4891(char*, char *);
extern void execute_4892(char*, char *);
extern void execute_4893(char*, char *);
extern void execute_4894(char*, char *);
extern void execute_4895(char*, char *);
extern void execute_4896(char*, char *);
extern void execute_4897(char*, char *);
extern void execute_4898(char*, char *);
extern void execute_4899(char*, char *);
extern void execute_4900(char*, char *);
extern void execute_4901(char*, char *);
extern void execute_4902(char*, char *);
extern void execute_4903(char*, char *);
extern void execute_4904(char*, char *);
extern void execute_4905(char*, char *);
extern void execute_4906(char*, char *);
extern void execute_4907(char*, char *);
extern void execute_3080(char*, char *);
extern void execute_21308(char*, char *);
extern void execute_21309(char*, char *);
extern void execute_3085(char*, char *);
extern void execute_3086(char*, char *);
extern void execute_3087(char*, char *);
extern void execute_21343(char*, char *);
extern void execute_21344(char*, char *);
extern void execute_21345(char*, char *);
extern void execute_21346(char*, char *);
extern void execute_21347(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[157] = {(funcp)execute_3082, (funcp)execute_3083, (funcp)execute_21340, (funcp)execute_21341, (funcp)execute_21342, (funcp)execute_3081, (funcp)execute_21310, (funcp)execute_21311, (funcp)execute_21312, (funcp)execute_21313, (funcp)execute_21314, (funcp)execute_21315, (funcp)execute_21316, (funcp)execute_21317, (funcp)execute_21318, (funcp)execute_21319, (funcp)execute_21320, (funcp)execute_21321, (funcp)execute_21322, (funcp)execute_21323, (funcp)execute_21324, (funcp)execute_21325, (funcp)execute_21326, (funcp)execute_21327, (funcp)execute_21328, (funcp)execute_21329, (funcp)execute_21330, (funcp)execute_21331, (funcp)execute_21332, (funcp)execute_21333, (funcp)execute_21334, (funcp)execute_21335, (funcp)execute_21336, (funcp)execute_21337, (funcp)execute_21338, (funcp)execute_21339, (funcp)execute_310, (funcp)execute_4908, (funcp)vlog_simple_process_execute_1_fast_no_reg_no_agg, (funcp)execute_4910, (funcp)execute_4911, (funcp)execute_3088, (funcp)execute_3089, (funcp)execute_3090, (funcp)execute_3091, (funcp)execute_3092, (funcp)execute_3093, (funcp)execute_3094, (funcp)execute_3095, (funcp)execute_3096, (funcp)execute_3097, (funcp)execute_3098, (funcp)execute_3099, (funcp)execute_3100, (funcp)execute_3101, (funcp)execute_3102, (funcp)execute_3103, (funcp)execute_3104, (funcp)execute_3105, (funcp)execute_3106, (funcp)execute_3168, (funcp)execute_3169, (funcp)execute_3170, (funcp)execute_3171, (funcp)execute_3172, (funcp)execute_3173, (funcp)execute_3174, (funcp)execute_3175, (funcp)execute_3176, (funcp)execute_3177, (funcp)execute_3178, (funcp)execute_3179, (funcp)execute_3180, (funcp)execute_3181, (funcp)execute_3182, (funcp)execute_3183, (funcp)execute_3184, (funcp)execute_3107, (funcp)execute_3108, (funcp)execute_3109, (funcp)execute_3110, (funcp)execute_3111, (funcp)execute_3112, (funcp)execute_3113, (funcp)execute_3114, (funcp)execute_3115, (funcp)execute_3116, (funcp)execute_3117, (funcp)execute_3118, (funcp)execute_3119, (funcp)execute_3120, (funcp)execute_3137, (funcp)execute_3138, (funcp)execute_3139, (funcp)execute_3140, (funcp)execute_3167, (funcp)execute_3121, (funcp)execute_3122, (funcp)execute_3123, (funcp)execute_3124, (funcp)execute_3125, (funcp)execute_3127, (funcp)execute_3136, (funcp)execute_3126, (funcp)execute_3128, (funcp)execute_3129, (funcp)execute_3130, (funcp)execute_3131, (funcp)execute_3153, (funcp)execute_3149, (funcp)execute_3150, (funcp)execute_3151, (funcp)execute_3152, (funcp)execute_4876, (funcp)execute_4877, (funcp)execute_4878, (funcp)execute_4879, (funcp)execute_4880, (funcp)execute_4881, (funcp)execute_4882, (funcp)execute_4883, (funcp)execute_4884, (funcp)execute_4885, (funcp)execute_4886, (funcp)execute_4887, (funcp)execute_4888, (funcp)execute_4889, (funcp)execute_4890, (funcp)execute_4891, (funcp)execute_4892, (funcp)execute_4893, (funcp)execute_4894, (funcp)execute_4895, (funcp)execute_4896, (funcp)execute_4897, (funcp)execute_4898, (funcp)execute_4899, (funcp)execute_4900, (funcp)execute_4901, (funcp)execute_4902, (funcp)execute_4903, (funcp)execute_4904, (funcp)execute_4905, (funcp)execute_4906, (funcp)execute_4907, (funcp)execute_3080, (funcp)execute_21308, (funcp)execute_21309, (funcp)execute_3085, (funcp)execute_3086, (funcp)execute_3087, (funcp)execute_21343, (funcp)execute_21344, (funcp)execute_21345, (funcp)execute_21346, (funcp)execute_21347, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 157;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/testbench_behav/xsim.reloc",  (void **)funcTab, 157);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/testbench_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/testbench_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/testbench_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/testbench_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/testbench_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
