

/*
 *  Global Switches
 */

#define SAC_DO_CHECK           0
#define SAC_DO_CHECK_TYPE      0
#define SAC_DO_CHECK_GPU       0
#define SAC_DO_CHECK_BOUNDARY   0
#define SAC_DO_CHECK_MALLOC     0
#define SAC_DO_CHECK_ERRNO      0
#define SAC_DO_CHECK_HEAP       0
#define SAC_DO_CHECK_DISTMEM    0
#define SAC_DO_CHECK_DISTMEMPHM 0

#define SAC_DO_PHM             0
#define SAC_DO_APS             0
#define SAC_DO_DAO             0
#define SAC_DO_MSCA            0

#define SAC_DO_PROFILE         0
#define SAC_DO_PROFILE_WITH    0
#define SAC_DO_PROFILE_FUN     0
#define SAC_DO_PROFILE_INL     0
#define SAC_DO_PROFILE_LIB     0
#define SAC_DO_PROFILE_DISTMEM 0

#define SAC_DO_TRACE           0
#define SAC_DO_TRACE_REF       0
#define SAC_DO_TRACE_MEM       0
#define SAC_DO_TRACE_PRF       0
#define SAC_DO_TRACE_FUN       0
#define SAC_DO_TRACE_WL        0
#define SAC_DO_TRACE_AA        0
#define SAC_DO_TRACE_MT        0
#define SAC_DO_TRACE_RTSPEC    0
#define SAC_DO_TRACE_DISTMEM   0
#define SAC_DO_CACHESIM        0
#define SAC_DO_CACHESIM_ADV    0
#define SAC_DO_CACHESIM_GLOBAL 1
#define SAC_DO_CACHESIM_FILE   0
#define SAC_DO_CACHESIM_PIPE   0
#define SAC_DO_CACHESIM_IMDT   1

#define SAC_DO_MULTITHREAD     0
#define SAC_DO_MT_PTHREAD      0
#define SAC_DO_MT_LPEL         0
#define SAC_DO_MT_OMP          0
#define SAC_DO_DISTMEM         0
#define SAC_DO_DISTMEM_GASNET  0
#define SAC_DO_DISTMEM_GPI     0
#define SAC_DO_DISTMEM_MPI     0
#define SAC_DO_DISTMEM_ARMCI   0
#define SAC_DO_DISTMEM_ALLOC_CACHE_OUTSIDE_DSM 0
#define SAC_DO_DISTMEM_PTR_DESC 0
#define SAC_DO_DISTMEM_PTR_CACHE 0
#define SAC_DO_THREADS_STATIC  1
#define SAC_DO_FP              0
#define SAC_DO_MT_CREATE_JOIN  0
#define SAC_DEBUG_RC           0


/*
 *  Global Settings
 */

#define SAC_FORCE_DESC_SIZE -1


/*
 *  MUTC Backend Specific Switches
 */

#define SAC_MUTC_FUNAP_AS_CREATE  0
#define SAC_MUTC_THREAD_MALLOC 0
#define SAC_MUTC_DISABLE_THREAD_MEM 0
#define SAC_MUTC_BENCH 0
#define SAC_MUTC_MACROS  0
#define SAC_MUTC_RC_PLACES  1
#define SAC_MUTC_RC_INDIRECT  0
#define SAC_MUTC_SEQ_DATA_PARALLEL  0
#define SAC_MUTC_FORCE_SPAWN_FLAGS

#define SAC_CUDA_MACROS  1
#define SAC_OMP_MACROS  0

#define SAC_DO_COMPILE_MODULE  0
#define SAC_C_EXTERN           extern "C"



/*
 *  Global Settings
 */

#ifndef NULL
#  ifdef __cplusplus
#    define NULL         0
#  else
#    define NULL         (void*) 0
#  endif
#endif

#define SAC_SET_TMPDIR              "/tmp"
#define SAC_SET_INITIAL_MASTER_HEAPSIZE      1048576
#define SAC_SET_INITIAL_WORKER_HEAPSIZE      65536
#define SAC_SET_INITIAL_UNIFIED_HEAPSIZE     0

#ifndef SAC_SET_RTSPEC_THREADS
#define SAC_SET_RTSPEC_THREADS              1
#endif

#ifndef SAC_SET_MTMODE
#define SAC_SET_MTMODE               0
#endif

#define SAC_SET_CPU_BIND_STRATEGY 0
#define SAC_SET_BARRIER_TYPE               0
#define SAC_SET_SMART_DECISIONS            0
#define SAC_SET_SMART_FILENAME           "default"
#define SAC_SET_SMART_ARCH               "(null)"
#define SAC_SET_SMART_PERIOD               500
#ifndef SAC_SET_THREADS_MAX
#define SAC_SET_THREADS_MAX          128
#endif

#ifndef SAC_SET_THREADS
#define SAC_SET_THREADS              1
#endif

#ifndef SAC_OMP_ACTIVE_LEVEL
#define SAC_OMP_ACTIVE_LEVEL          1
#endif

#ifndef SAC_SET_MASTERCLASS
#define SAC_SET_MASTERCLASS          0
#endif

#define SAC_SET_NUM_SCHEDULERS       0

#define SAC_SET_CACHE_1_SIZE         -1
#define SAC_SET_CACHE_1_LINE         4
#define SAC_SET_CACHE_1_ASSOC        1
#define SAC_SET_CACHE_1_WRITEPOL     SAC_CS_default
#define SAC_SET_CACHE_1_MSCA_FACTOR  0.00

#define SAC_SET_CACHE_2_SIZE         -1
#define SAC_SET_CACHE_2_LINE         4
#define SAC_SET_CACHE_2_ASSOC        1
#define SAC_SET_CACHE_2_WRITEPOL     SAC_CS_default
#define SAC_SET_CACHE_2_MSCA_FACTOR  0.00

#define SAC_SET_CACHE_3_SIZE         -1
#define SAC_SET_CACHE_3_LINE         4
#define SAC_SET_CACHE_3_ASSOC        1
#define SAC_SET_CACHE_3_WRITEPOL     SAC_CS_default
#define SAC_SET_CACHE_3_MSCA_FACTOR  0.00

#define SAC_SET_CACHESIM_HOST        ""
#define SAC_SET_CACHESIM_FILE        "tmm2.cs"
#define SAC_SET_CACHESIM_DIR         "/tmp"
#define SAC_SET_MAXFUN               0
#define SAC_SET_MAXFUNAP             1
#define SBLOCKSZ               16
#define LBLOCKSZ               256



/*
 *  Includes
 */


#include "sac.h"


#if SAC_OMP_MACROS

#include "omp.h"

#endif

#if SAC_CUDA_MACROS

#include <stdio.h>


#include <cuda.h>


#include <cuda_runtime.h>

#endif

/*
 *  SAC-Program tmm2.sac :
 */


/* Additional headers for external function declarations */
#include <stdlib.h>


/*
 *  type definitions
 */

SAC_ND_TYPEDEF((SACt_sacprelude_p__SACarg, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SAC_hidden)
SAC_ND_TYPEDEF((SACt_Random__Random, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SAC_hidden)
SAC_ND_TYPEDEF((SACt_ComplexBasics__complex, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (DOU, )))))))))), double)
SAC_ND_TYPEDEF((SACt_Complex__complex, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (DOU, )))))))))), double)
SAC_ND_TYPEDEF((SACt_World__World, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SAC_hidden)
SAC_ND_TYPEDEF((SACt_C99Benchmarking__C99Benchmarking, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SAC_hidden)
SAC_ND_TYPEDEF((SACt_String__string, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SAC_hidden)
SAC_ND_TYPEDEF((SACt_Interval__Interval, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SAC_hidden)
SAC_ND_TYPEDEF((SACt_C99Benchmarking__Interval, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SACt_Interval__Interval)
SAC_ND_TYPEDEF((SACt_MTClock__MTClock, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SAC_hidden)
SAC_ND_TYPEDEF((SACt_Terminal__Terminal, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SAC_hidden)
SAC_ND_TYPEDEF((SACt_TermFile__TermFile, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SAC_hidden)


/*
 *  Global Definitions
 */

SAC_MT_DEFINE()
SAC_PF_DEFINE()
SAC_HM_DEFINE()


/*
 *  prototypes for externals (FUNDECS)
 */

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACrandom, (int, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2, in_nodesc, int, (SACl_MIN, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in_nodesc, int, (SACl_MAX, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACrandom, SAC_ND_TYPE_NT( (int, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))),  SAC_ND_PARAM_in_nodesc( (SACl_MIN, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in_nodesc( (SACl_MAX, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( to_string, , 3, out, SACt_String__string, (SAC_arg_1, (SCL, (HID, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), in, unsigned char, (SACl_A, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), in_nodesc, int, (SACl_LENGTH, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( to_string, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (HID, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), SACt_String__string), SAC_ND_PARAM_in( (SACl_A, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char), SAC_ND_PARAM_in_nodesc( (SACl_LENGTH, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));



/*
 *  prototypes for locals (FUNDEFS)
 */

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__partitionSlicer__i_S__i_S__i_S__i_S__i_S, , 9, out, int, (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), out, int, (SAC_arg_2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), out, int, (SAC_arg_3, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), out, int, (SAC_arg_4, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_min, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_max, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_axis, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_lb, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_ub, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__partitionSlicer__i_S__i_S__i_S__i_S__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_out( (SAC_arg_2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_out( (SAC_arg_3, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_out( (SAC_arg_4, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_min, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_max, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_axis, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_lb, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_ub, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__partitionIntersectMax__i_S__i_S, , 3, out, int, (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_PWLbound1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_ivmin, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__partitionIntersectMax__i_S__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_PWLbound1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_ivmin, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__isPartitionIntersectNull__i_S__i_S__i_S__i_S, , 5, out, bool, (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, int, (SACl_idxmin, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_idxmax, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_bound1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_bound2, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__isPartitionIntersectNull__i_S__i_S__i_S__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_idxmin, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_idxmax, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_bound1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_bound2, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selSxADistmemLocal__i_S__i_S, , 3, out, int, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selSxADistmemLocal__i_S__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selSxADistmemLocal__i_S__f_S, , 3, out, float, (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, float, (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selSxADistmemLocal__i_S__f_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selSxADistmemLocal__i_S__d_S, , 3, out, double, (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, double, (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selSxADistmemLocal__i_S__d_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selSxADistmemLocal__i_S__bl_S, , 3, out, bool, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, bool, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selSxADistmemLocal__i_S__bl_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selSxADistmemLocal__i_S__c_S, , 3, out, unsigned char, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, unsigned char, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selSxADistmemLocal__i_S__c_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selSxADistmemLocal__i_S__b_S, , 3, out, byte, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, byte, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selSxADistmemLocal__i_S__b_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selSxADistmemLocal__i_S__s_S, , 3, out, short, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, short, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selSxADistmemLocal__i_S__s_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selSxADistmemLocal__i_S__l_S, , 3, out, long, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, long, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selSxADistmemLocal__i_S__l_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selSxADistmemLocal__i_S__ll_S, , 3, out, longlong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, longlong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selSxADistmemLocal__i_S__ll_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selSxADistmemLocal__i_S__ub_S, , 3, out, ubyte, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ubyte, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selSxADistmemLocal__i_S__ub_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selSxADistmemLocal__i_S__us_S, , 3, out, ushort, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ushort, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selSxADistmemLocal__i_S__us_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selSxADistmemLocal__i_S__ui_S, , 3, out, uint, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, uint, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selSxADistmemLocal__i_S__ui_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selSxADistmemLocal__i_S__ul_S, , 3, out, ulong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ulong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selSxADistmemLocal__i_S__ul_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selSxADistmemLocal__i_S__ull_S, , 3, out, ulonglong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ulonglong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selSxADistmemLocal__i_S__ull_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__partitionIntersectMin__i_S__i_S, , 3, out, int, (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_PWLbound2, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_ivmax, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__partitionIntersectMin__i_S__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_PWLbound2, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_ivmax, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__adjustLacFunParams__bl_S__i_S__i_S, , 4, out, int, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, bool, (SACl_p, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, int, (SACl_i, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_iv, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__adjustLacFunParams__bl_S__i_S__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_p, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_i, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_iv, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf__MAIN__main, , 1, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf__MAIN__main, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__prod__i_S, , 2, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_v, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__prod__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_v, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__adjustLacFunParamsReshape__bl_S__i_S__i_S__i_S, , 5, out, int, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, bool, (SACl_p, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, int, (SACl_i, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_iv, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_shp, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__adjustLacFunParamsReshape__bl_S__i_S__i_S__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_p, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_i, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_iv, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_shp, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__eq__i_S__i_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, int, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__eq__i_S__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__eq__f_S__f_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, float, (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, float, (SACl_B, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__eq__f_S__f_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__eq__d_S__d_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, double, (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), in, double, (SACl_B, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__eq__d_S__d_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__eq__bl_S__bl_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, bool, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, bool, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__eq__bl_S__bl_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__eq__c_S__c_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, unsigned char, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), in, unsigned char, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__eq__c_S__c_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__eq__b_S__b_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, byte, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), in, byte, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__eq__b_S__b_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__eq__s_S__s_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, short, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), in, short, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__eq__s_S__s_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__eq__l_S__l_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, long, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), in, long, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__eq__l_S__l_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__eq__ll_S__ll_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, longlong, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), in, longlong, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__eq__ll_S__ll_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__eq__ub_S__ub_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, ubyte, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), in, ubyte, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__eq__ub_S__ub_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__eq__us_S__us_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, ushort, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), in, ushort, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__eq__us_S__us_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__eq__ui_S__ui_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, uint, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), in, uint, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__eq__ui_S__ui_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__eq__ul_S__ul_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, ulong, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), in, ulong, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__eq__ul_S__ul_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__eq__ull_S__ull_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, ulonglong, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), in, ulonglong, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__eq__ull_S__ull_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__gridFiller__i_S__i_S__i_S__i_S__i_S, , 8, out, int, (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), out, int, (SAC_arg_2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), out, int, (SAC_arg_3, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_lb, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_ub, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_wdth, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_dim, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_maxwidth, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__gridFiller__i_S__i_S__i_S__i_S__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_out( (SAC_arg_2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_out( (SAC_arg_3, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_lb, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_ub, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_wdth, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_dim, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_maxwidth, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__isPartitionIntersect1Part__i_S__i_S__i_S__i_S, , 5, out, bool, (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, int, (SACl_idxmin, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_idxmax, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_bound1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_bound2, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__isPartitionIntersect1Part__i_S__i_S__i_S__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_idxmin, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_idxmax, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_bound1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_bound2, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf__MAIN_CLsacprelude_p__zero__i_S, , 2, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf__MAIN_CLsacprelude_p__zero__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf__MAIN_CLsacprelude_p__zero__d_S, , 2, out, double, (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), in, double, (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf__MAIN_CLsacprelude_p__zero__d_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf__MAIN_CLsacprelude_p__zero__f_S, , 2, out, float, (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, float, (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf__MAIN_CLsacprelude_p__zero__f_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf__MAIN_CLsacprelude_p__zero__c_S, , 2, out, unsigned char, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), in, unsigned char, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf__MAIN_CLsacprelude_p__zero__c_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf__MAIN_CLsacprelude_p__zero__bl_S, , 2, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, bool, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf__MAIN_CLsacprelude_p__zero__bl_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf__MAIN_CLsacprelude_p__zero__b_S, , 2, out, byte, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), in, byte, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf__MAIN_CLsacprelude_p__zero__b_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf__MAIN_CLsacprelude_p__zero__s_S, , 2, out, short, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), in, short, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf__MAIN_CLsacprelude_p__zero__s_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf__MAIN_CLsacprelude_p__zero__l_S, , 2, out, long, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), in, long, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf__MAIN_CLsacprelude_p__zero__l_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf__MAIN_CLsacprelude_p__zero__ll_S, , 2, out, longlong, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), in, longlong, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf__MAIN_CLsacprelude_p__zero__ll_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf__MAIN_CLsacprelude_p__zero__ub_S, , 2, out, ubyte, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), in, ubyte, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf__MAIN_CLsacprelude_p__zero__ub_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf__MAIN_CLsacprelude_p__zero__us_S, , 2, out, ushort, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), in, ushort, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf__MAIN_CLsacprelude_p__zero__us_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf__MAIN_CLsacprelude_p__zero__ui_S, , 2, out, uint, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), in, uint, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf__MAIN_CLsacprelude_p__zero__ui_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf__MAIN_CLsacprelude_p__zero__ul_S, , 2, out, ulong, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), in, ulong, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf__MAIN_CLsacprelude_p__zero__ul_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf__MAIN_CLsacprelude_p__zero__ull_S, , 2, out, ulonglong, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), in, ulonglong, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf__MAIN_CLsacprelude_p__zero__ull_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__partitionMax__i_S__i_S, , 3, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_x, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_y, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__partitionMax__i_S__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_x, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_y, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__partitionMin__i_S__i_S, , 3, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_x, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_y, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__partitionMin__i_S__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_x, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_y, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___PL_PL__i_S, , 2, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_a, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___PL_PL__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_a, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__sel__i_S__i_S, , 3, out, int, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__sel__i_S__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__sel__i_S__f_S, , 3, out, float, (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, float, (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__sel__i_S__f_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__sel__i_S__d_S, , 3, out, double, (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, double, (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__sel__i_S__d_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__sel__i_S__bl_S, , 3, out, bool, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, bool, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__sel__i_S__bl_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__sel__i_S__c_S, , 3, out, unsigned char, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, unsigned char, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__sel__i_S__c_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__sel__i_S__b_S, , 3, out, byte, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, byte, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__sel__i_S__b_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__sel__i_S__s_S, , 3, out, short, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, short, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__sel__i_S__s_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__sel__i_S__l_S, , 3, out, long, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, long, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__sel__i_S__l_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__sel__i_S__ll_S, , 3, out, longlong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, longlong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__sel__i_S__ll_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__sel__i_S__ub_S, , 3, out, ubyte, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ubyte, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__sel__i_S__ub_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__sel__i_S__us_S, , 3, out, ushort, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ushort, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__sel__i_S__us_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__sel__i_S__ui_S, , 3, out, uint, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, uint, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__sel__i_S__ui_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__sel__i_S__ul_S, , 3, out, ulong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ulong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__sel__i_S__ul_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p__sel__i_S__ull_S, , 3, out, ulonglong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ulonglong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p__sel__i_S__ull_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selVxADistmemLocal__i_S__i_S, , 3, out, int, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selVxADistmemLocal__i_S__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selVxADistmemLocal__i_S__f_S, , 3, out, float, (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, float, (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selVxADistmemLocal__i_S__f_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selVxADistmemLocal__i_S__d_S, , 3, out, double, (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, double, (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selVxADistmemLocal__i_S__d_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selVxADistmemLocal__i_S__bl_S, , 3, out, bool, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, bool, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selVxADistmemLocal__i_S__bl_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selVxADistmemLocal__i_S__c_S, , 3, out, unsigned char, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, unsigned char, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selVxADistmemLocal__i_S__c_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selVxADistmemLocal__i_S__b_S, , 3, out, byte, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, byte, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selVxADistmemLocal__i_S__b_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selVxADistmemLocal__i_S__s_S, , 3, out, short, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, short, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selVxADistmemLocal__i_S__s_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selVxADistmemLocal__i_S__l_S, , 3, out, long, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, long, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selVxADistmemLocal__i_S__l_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selVxADistmemLocal__i_S__ll_S, , 3, out, longlong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, longlong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selVxADistmemLocal__i_S__ll_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selVxADistmemLocal__i_S__ub_S, , 3, out, ubyte, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ubyte, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selVxADistmemLocal__i_S__ub_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selVxADistmemLocal__i_S__us_S, , 3, out, ushort, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ushort, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selVxADistmemLocal__i_S__us_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selVxADistmemLocal__i_S__ui_S, , 3, out, uint, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, uint, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selVxADistmemLocal__i_S__ui_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selVxADistmemLocal__i_S__ul_S, , 3, out, ulong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ulong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selVxADistmemLocal__i_S__ul_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf_sacprelude_p___selVxADistmemLocal__i_S__ull_S, , 3, out, ulonglong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), in, int, (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ulonglong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf_sacprelude_p___selVxADistmemLocal__i_S__ull_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong), SAC_ND_PARAM_in( (SACl_idx, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf__MAIN__tmm__f_X_X__f_X_X, , 3, out, float, (SAC_arg_1, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, float, (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, float, (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf__MAIN__tmm__f_X_X__f_X_X, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf__MAIN__main, , 1, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf__MAIN__main, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf__MAIN_CL_INIT__init, , 0)
 */
SAC_ND_DECL_FUN2( SACf__MAIN_CL_INIT__init, void, void);

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__zero__ull_S, , 2, out, ulonglong, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), in, ulonglong, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__zero__ull_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__zero__ul_S, , 2, out, ulong, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), in, ulong, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__zero__ul_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__zero__ui_S, , 2, out, uint, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), in, uint, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__zero__ui_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__zero__us_S, , 2, out, ushort, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), in, ushort, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__zero__us_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__zero__ub_S, , 2, out, ubyte, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), in, ubyte, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__zero__ub_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__zero__ll_S, , 2, out, longlong, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), in, longlong, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__zero__ll_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__zero__l_S, , 2, out, long, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), in, long, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__zero__l_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__zero__s_S, , 2, out, short, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), in, short, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__zero__s_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__zero__b_S, , 2, out, byte, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), in, byte, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__zero__b_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__zero__bl_S, , 2, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, bool, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__zero__bl_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__zero__c_S, , 2, out, unsigned char, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), in, unsigned char, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__zero__c_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__zero__f_S, , 2, out, float, (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, float, (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__zero__f_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__zero__d_S, , 2, out, double, (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), in, double, (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__zero__d_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__zero__i_S, , 2, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__zero__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_World_CL_INIT__init_TheWorld__SACt_World__World, , 1, inout, SACt_World__World, (SACp_OI_object, (SCL, (HID, (NUQ, (INT, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_World_CL_INIT__init_TheWorld__SACt_World__World, void,  SAC_ND_PARAM_inout( (SACp_OI_object, (SCL, (HID, (NUQ, (INT, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), SACt_World__World));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_C99Benchmarking_CL_INIT__init_TheBenchmarkObject__SACt_C99Benchmarking__C99Benchmarking, , 1, inout, SACt_C99Benchmarking__C99Benchmarking, (SACp_OI_object, (SCL, (HID, (NUQ, (INT, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_C99Benchmarking_CL_INIT__init_TheBenchmarkObject__SACt_C99Benchmarking__C99Benchmarking, void,  SAC_ND_PARAM_inout( (SACp_OI_object, (SCL, (HID, (NUQ, (INT, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), SACt_C99Benchmarking__C99Benchmarking));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_C99Benchmarking__getInterval__SACt_String__string__i__i, , 4, out, SACt_Interval__Interval, (SAC_arg_1, (SCL, (HID, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), in, SACt_String__string, (SACl_interval_name, (SCL, (HID, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), in, int, (SACl_interval_number, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_unit_time, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_C99Benchmarking__getInterval__SACt_String__string__i__i, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (HID, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), SACt_Interval__Interval), SAC_ND_PARAM_in( (SACl_interval_name, (SCL, (HID, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), SACt_String__string), SAC_ND_PARAM_in( (SACl_interval_number, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_unit_time, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_MTClock_CL_INIT__init_TheMTClock__SACt_MTClock__MTClock, , 1, inout, SACt_MTClock__MTClock, (SACp_OI_object, (SCL, (HID, (NUQ, (INT, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_MTClock_CL_INIT__init_TheMTClock__SACt_MTClock__MTClock, void,  SAC_ND_PARAM_inout( (SACp_OI_object, (SCL, (HID, (NUQ, (INT, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), SACt_MTClock__MTClock));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_C99Benchmarking__start__SACt_C99Benchmarking__Interval, , 1, inout, SACt_Interval__Interval, (SACl_interval, (SCL, (HID, (NUQ, (INT, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_C99Benchmarking__start__SACt_C99Benchmarking__Interval, void,  SAC_ND_PARAM_inout( (SACl_interval, (SCL, (HID, (NUQ, (INT, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), SACt_Interval__Interval));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_C99Benchmarking__end__SACt_C99Benchmarking__Interval, , 1, inout, SACt_Interval__Interval, (SACl_interval, (SCL, (HID, (NUQ, (INT, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_C99Benchmarking__end__SACt_C99Benchmarking__Interval, void,  SAC_ND_PARAM_inout( (SACl_interval, (SCL, (HID, (NUQ, (INT, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), SACt_Interval__Interval));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_Terminal_CL_INIT__init_TheTerminal__SACt_Terminal__Terminal, , 1, inout, SACt_Terminal__Terminal, (SACp_OI_object, (SCL, (HID, (NUQ, (INT, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_Terminal_CL_INIT__init_TheTerminal__SACt_Terminal__Terminal, void,  SAC_ND_PARAM_inout( (SACp_OI_object, (SCL, (HID, (NUQ, (INT, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), SACt_Terminal__Terminal));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_TermFile_CL_INIT__init_stdout__SACt_TermFile__TermFile, , 1, inout, SACt_TermFile__TermFile, (SACp_OI_object, (SCL, (HID, (NUQ, (INT, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_TermFile_CL_INIT__init_stdout__SACt_TermFile__TermFile, void,  SAC_ND_PARAM_inout( (SACp_OI_object, (SCL, (HID, (NUQ, (INT, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), SACt_TermFile__TermFile));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_C99Benchmarking__printResult__SACt_C99Benchmarking__Interval, , 1, inout, SACt_Interval__Interval, (SACl_int1, (SCL, (HID, (NUQ, (INT, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_C99Benchmarking__printResult__SACt_C99Benchmarking__Interval, void,  SAC_ND_PARAM_inout( (SACl_int1, (SCL, (HID, (NUQ, (INT, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), SACt_Interval__Interval));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__sel__i_X__ull_S, , 3, out, ulonglong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ulonglong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__sel__i_X__ull_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__sel__i_X__ul_S, , 3, out, ulong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ulong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__sel__i_X__ul_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__sel__i_X__ui_S, , 3, out, uint, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, uint, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__sel__i_X__ui_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__sel__i_X__us_S, , 3, out, ushort, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ushort, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__sel__i_X__us_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__sel__i_X__ub_S, , 3, out, ubyte, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ubyte, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__sel__i_X__ub_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__sel__i_X__ll_S, , 3, out, longlong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, longlong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__sel__i_X__ll_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__sel__i_X__l_S, , 3, out, long, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, long, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__sel__i_X__l_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__sel__i_X__s_S, , 3, out, short, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, short, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__sel__i_X__s_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__sel__i_X__b_S, , 3, out, byte, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, byte, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__sel__i_X__b_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__sel__i_X__c_S, , 3, out, unsigned char, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, unsigned char, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__sel__i_X__c_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__sel__i_X__bl_S, , 3, out, bool, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, bool, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__sel__i_X__bl_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__sel__i_X__d_S, , 3, out, double, (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, double, (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__sel__i_X__d_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__sel__i_X__f_S, , 3, out, float, (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, float, (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__sel__i_X__f_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__sel__i_X__i_S, , 3, out, int, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__sel__i_X__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_1__ull_S, , 3, out, ulonglong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), in, int, (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ulonglong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_1__ull_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong), SAC_ND_PARAM_in( (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_X__ull_S, , 3, out, ulonglong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ulonglong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_X__ull_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_1__ul_S, , 3, out, ulong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), in, int, (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ulong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_1__ul_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong), SAC_ND_PARAM_in( (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_X__ul_S, , 3, out, ulong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ulong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_X__ul_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_1__ui_S, , 3, out, uint, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), in, int, (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, uint, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_1__ui_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint), SAC_ND_PARAM_in( (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_X__ui_S, , 3, out, uint, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, uint, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_X__ui_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_1__us_S, , 3, out, ushort, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), in, int, (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ushort, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_1__us_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort), SAC_ND_PARAM_in( (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_X__us_S, , 3, out, ushort, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ushort, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_X__us_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_1__ub_S, , 3, out, ubyte, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), in, int, (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ubyte, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_1__ub_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte), SAC_ND_PARAM_in( (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_X__ub_S, , 3, out, ubyte, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ubyte, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_X__ub_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_1__ll_S, , 3, out, longlong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), in, int, (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, longlong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_1__ll_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong), SAC_ND_PARAM_in( (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_X__ll_S, , 3, out, longlong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, longlong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_X__ll_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_1__l_S, , 3, out, long, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), in, int, (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, long, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_1__l_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long), SAC_ND_PARAM_in( (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_X__l_S, , 3, out, long, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, long, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_X__l_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_1__s_S, , 3, out, short, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), in, int, (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, short, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_1__s_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short), SAC_ND_PARAM_in( (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_X__s_S, , 3, out, short, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, short, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_X__s_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_1__b_S, , 3, out, byte, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), in, int, (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, byte, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_1__b_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte), SAC_ND_PARAM_in( (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_X__b_S, , 3, out, byte, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, byte, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_X__b_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_1__c_S, , 3, out, unsigned char, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), in, int, (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, unsigned char, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_1__c_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char), SAC_ND_PARAM_in( (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_X__c_S, , 3, out, unsigned char, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, unsigned char, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_X__c_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_1__bl_S, , 3, out, bool, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, int, (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, bool, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_1__bl_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_X__bl_S, , 3, out, bool, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, bool, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_X__bl_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_1__d_S, , 3, out, double, (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), in, int, (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, double, (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_1__d_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double), SAC_ND_PARAM_in( (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_X__d_S, , 3, out, double, (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, double, (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_X__d_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_1__f_S, , 3, out, float, (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, int, (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, float, (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_1__f_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_X__f_S, , 3, out, float, (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, float, (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_X__f_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_1__i_S, , 3, out, int, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_1__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_idx, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selVxADistmemLocal__i_X__i_S, , 3, out, int, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selVxADistmemLocal__i_X__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_idx, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selSxADistmemLocal__i__ull_S, , 3, out, ulonglong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), in, int, (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ulonglong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selSxADistmemLocal__i__ull_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong), SAC_ND_PARAM_in( (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selSxADistmemLocal__i__ul_S, , 3, out, ulong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), in, int, (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ulong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selSxADistmemLocal__i__ul_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong), SAC_ND_PARAM_in( (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selSxADistmemLocal__i__ui_S, , 3, out, uint, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), in, int, (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, uint, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selSxADistmemLocal__i__ui_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint), SAC_ND_PARAM_in( (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selSxADistmemLocal__i__us_S, , 3, out, ushort, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), in, int, (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ushort, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selSxADistmemLocal__i__us_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort), SAC_ND_PARAM_in( (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selSxADistmemLocal__i__ub_S, , 3, out, ubyte, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), in, int, (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, ubyte, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selSxADistmemLocal__i__ub_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte), SAC_ND_PARAM_in( (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selSxADistmemLocal__i__ll_S, , 3, out, longlong, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), in, int, (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, longlong, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selSxADistmemLocal__i__ll_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong), SAC_ND_PARAM_in( (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selSxADistmemLocal__i__l_S, , 3, out, long, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), in, int, (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, long, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selSxADistmemLocal__i__l_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long), SAC_ND_PARAM_in( (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selSxADistmemLocal__i__s_S, , 3, out, short, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), in, int, (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, short, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selSxADistmemLocal__i__s_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short), SAC_ND_PARAM_in( (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selSxADistmemLocal__i__b_S, , 3, out, byte, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), in, int, (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, byte, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selSxADistmemLocal__i__b_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte), SAC_ND_PARAM_in( (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selSxADistmemLocal__i__c_S, , 3, out, unsigned char, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), in, int, (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, unsigned char, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selSxADistmemLocal__i__c_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char), SAC_ND_PARAM_in( (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selSxADistmemLocal__i__bl_S, , 3, out, bool, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, int, (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, bool, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selSxADistmemLocal__i__bl_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selSxADistmemLocal__i__d_S, , 3, out, double, (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), in, int, (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, double, (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selSxADistmemLocal__i__d_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double), SAC_ND_PARAM_in( (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selSxADistmemLocal__i__f_S, , 3, out, float, (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, int, (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, float, (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selSxADistmemLocal__i__f_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___selSxADistmemLocal__i__i_S, , 3, out, int, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___selSxADistmemLocal__i__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_idx, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_array, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__eq__ull_S__ull_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, ulonglong, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), in, ulonglong, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__eq__ull_S__ull_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__eq__ul_S__ul_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, ulong, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), in, ulong, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__eq__ul_S__ul_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__eq__ui_S__ui_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, uint, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), in, uint, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__eq__ui_S__ui_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__eq__us_S__us_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, ushort, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), in, ushort, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__eq__us_S__us_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__eq__ub_S__ub_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, ubyte, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), in, ubyte, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__eq__ub_S__ub_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__eq__ll_S__ll_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, longlong, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), in, longlong, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__eq__ll_S__ll_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__eq__l_S__l_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, long, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), in, long, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__eq__l_S__l_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__eq__s_S__s_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, short, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), in, short, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__eq__s_S__s_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__eq__b_S__b_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, byte, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), in, byte, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__eq__b_S__b_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__eq__c_S__c_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, unsigned char, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), in, unsigned char, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__eq__c_S__c_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__eq__bl_S__bl_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, bool, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, bool, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__eq__bl_S__bl_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__eq__d_S__d_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, double, (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), in, double, (SACl_B, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__eq__d_S__d_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__eq__f_S__f_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, float, (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, float, (SACl_B, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__eq__f_S__f_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__eq__i_S__i_S, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, int, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__eq__i_S__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_B, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__adjustLacFunParams__bl_S__i_S__i_X, , 4, out, int, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, bool, (SACl_p, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, int, (SACl_i, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_iv, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__adjustLacFunParams__bl_S__i_S__i_X, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_p, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_i, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_iv, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__adjustLacFunParamsReshape__bl_S__i_S__i_X__i_X, , 5, out, int, (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, bool, (SACl_p, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, int, (SACl_i, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_iv, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_shp, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__adjustLacFunParamsReshape__bl_S__i_S__i_X__i_X, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_p, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_i, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_iv, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_shp, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__isPartitionIntersectNull__i_X__i_X__i_X__i_X, , 5, out, bool, (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, int, (SACl_idxmin, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_idxmax, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_bound1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_bound2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__isPartitionIntersectNull__i_X__i_X__i_X__i_X, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_idxmin, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_idxmax, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_bound1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_bound2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__isPartitionIntersectNull__i__i__i_X__i_X, , 5, out, bool, (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, int, (SACl_idxmin, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_idxmax, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_bound1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_bound2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__isPartitionIntersectNull__i__i__i_X__i_X, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_idxmin, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_idxmax, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_bound1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_bound2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__partitionMin__i__i, , 3, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_x, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_y, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__partitionMin__i__i, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_x, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_y, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__partitionMax__i__i, , 3, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_x, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_y, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__partitionMax__i__i, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_x, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_y, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__isPartitionIntersect1Part__i_X__i_X__i_X__i_X, , 5, out, bool, (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, int, (SACl_idxmin, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_idxmax, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_bound1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_bound2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__isPartitionIntersect1Part__i_X__i_X__i_X__i_X, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_idxmin, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_idxmax, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_bound1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_bound2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__isPartitionIntersect1Part__i__i__i_X__i_X, , 5, out, bool, (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, int, (SACl_idxmin, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_idxmax, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_bound1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_bound2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__isPartitionIntersect1Part__i__i__i_X__i_X, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_idxmin, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_idxmax, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_bound1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_bound2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__partitionIntersectMax__i_X__i_X, , 3, out, int, (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_PWLbound1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_ivmin, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__partitionIntersectMax__i_X__i_X, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_PWLbound1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_ivmin, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__partitionIntersectMax__i_X__i, , 3, out, int, (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_PWLbound1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_ivmin, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__partitionIntersectMax__i_X__i, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_PWLbound1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_ivmin, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__partitionIntersectMin__i_X__i_X, , 3, out, int, (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_PWLbound2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_ivmax, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__partitionIntersectMin__i_X__i_X, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_PWLbound2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_ivmax, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__partitionIntersectMin__i_X__i, , 3, out, int, (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_PWLbound2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_ivmax, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__partitionIntersectMin__i_X__i, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_PWLbound2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_ivmax, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__prod__i_X, , 2, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_v, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__prod__i_X, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_v, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__partitionSlicer__i_X__i_X__i__i_X__i_X, , 9, out, int, (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), out, int, (SAC_arg_2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), out, int, (SAC_arg_3, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), out, int, (SAC_arg_4, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_min, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_max, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_axis, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_lb, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_ub, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__partitionSlicer__i_X__i_X__i__i_X__i_X, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_out( (SAC_arg_2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_out( (SAC_arg_3, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_out( (SAC_arg_4, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_min, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_max, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_axis, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_lb, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_ub, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__gridFiller__i_X__i_X__i_X__i__i_X, , 8, out, int, (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), out, int, (SAC_arg_2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), out, int, (SAC_arg_3, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_lb, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_ub, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_wdth, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_dim, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_maxwidth, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__gridFiller__i_X__i_X__i_X__i__i_X, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_out( (SAC_arg_2, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_out( (SAC_arg_3, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_lb, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_ub, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_wdth, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_dim, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_maxwidth, (AKD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___PL_PL__i, , 2, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_a, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___PL_PL__i, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_a, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf__MAIN_CLsacprelude_p__zero__f_X_X, , 2, out, float, (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, float, (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf__MAIN_CLsacprelude_p__zero__f_X_X, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_ScalarArith___PL__f__f, , 3, out, float, (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, float, (SACl_A, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, float, (SACl_B, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_ScalarArith___PL__f__f, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_A, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_B, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p___ST__i__i, , 3, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_a, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_b, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p___ST__i__i, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_a, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_b, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf_sacprelude_p__and__bl__bl, , 3, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, bool, (SACl_a, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, bool, (SACl_b, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf_sacprelude_p__and__bl__bl, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_a, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_b, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool));

SAC_C_EXTERN 
/*
 * CUDA_GLOBALFUN_DECL( SACf__MAIN___cuknl_6818_CUDA__i__i__i__i__fd_1024_1024__f, 6, in, float, (SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 0, inout, float, (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), 2, in, int, (SACp_ub_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0, in, int, (SACp_ub_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0, in, int, (SACp_lb_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0, in, int, (SACp_lb_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0)
 */
__global__ void SACf__MAIN___cuknl_6818_CUDA__i__i__i__i__fd_1024_1024__f(SAC_CUDA_PARAM_in( (SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_CUDA_PARAM_inout( (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), float), int SAC_ND_A_MIRROR_SHAPE((SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), 0), int SAC_ND_A_MIRROR_SHAPE((SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), 1), int SAC_ND_A_MIRROR_SIZE((SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, ))))))))))), int SAC_ND_A_MIRROR_DIM((SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, ))))))))))), SAC_CUDA_PARAM_in( (SACp_ub_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_CUDA_PARAM_in( (SACp_ub_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_CUDA_PARAM_in( (SACp_lb_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_CUDA_PARAM_in( (SACp_lb_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));
;

SAC_C_EXTERN 
/*
 * CUDA_GLOBALFUN_DECL( SACf__MAIN___cuknl_6817_CUDA__i__i__i__i__fd_128_1024__f, 6, in, float, (SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 0, inout, float, (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), 2, in, int, (SACp_ub_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0, in, int, (SACp_ub_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0, in, int, (SACp_lb_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0, in, int, (SACp_lb_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0)
 */
__global__ void SACf__MAIN___cuknl_6817_CUDA__i__i__i__i__fd_128_1024__f(SAC_CUDA_PARAM_in( (SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_CUDA_PARAM_inout( (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), float), int SAC_ND_A_MIRROR_SHAPE((SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), 0), int SAC_ND_A_MIRROR_SHAPE((SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), 1), int SAC_ND_A_MIRROR_SIZE((SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, ))))))))))), int SAC_ND_A_MIRROR_DIM((SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, ))))))))))), SAC_CUDA_PARAM_in( (SACp_ub_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_CUDA_PARAM_in( (SACp_ub_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_CUDA_PARAM_in( (SACp_lb_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_CUDA_PARAM_in( (SACp_lb_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));
;



/*
 *  global objects
 */

/*
 * ND_OBJDEF_EXTERN( (RandomGen, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SACt_Random__Random, 0)
 */
SAC_ND_DECL__DATA( (RandomGen, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SACt_Random__Random, extern)
SAC_ND_DECL__DESC( (RandomGen, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), extern)
SAC_NOTHING()

/*
 * ND_OBJDEF_EXTERN( (SACo_World__TheWorld, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SACt_World__World, 0)
 */
SAC_ND_DECL__DATA( (SACo_World__TheWorld, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SACt_World__World, extern)
SAC_ND_DECL__DESC( (SACo_World__TheWorld, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), extern)
SAC_NOTHING()

/*
 * ND_OBJDEF_EXTERN( (SACo_C99Benchmarking__TheBenchmarkObject, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SACt_C99Benchmarking__C99Benchmarking, 0)
 */
SAC_ND_DECL__DATA( (SACo_C99Benchmarking__TheBenchmarkObject, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SACt_C99Benchmarking__C99Benchmarking, extern)
SAC_ND_DECL__DESC( (SACo_C99Benchmarking__TheBenchmarkObject, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), extern)
SAC_NOTHING()

/*
 * ND_OBJDEF_EXTERN( (SACo_MTClock__TheMTClock, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SACt_MTClock__MTClock, 0)
 */
SAC_ND_DECL__DATA( (SACo_MTClock__TheMTClock, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SACt_MTClock__MTClock, extern)
SAC_ND_DECL__DESC( (SACo_MTClock__TheMTClock, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), extern)
SAC_NOTHING()

/*
 * ND_OBJDEF_EXTERN( (SACo_Terminal__TheTerminal, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SACt_Terminal__Terminal, 0)
 */
SAC_ND_DECL__DATA( (SACo_Terminal__TheTerminal, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SACt_Terminal__Terminal, extern)
SAC_ND_DECL__DESC( (SACo_Terminal__TheTerminal, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), extern)
SAC_NOTHING()

/*
 * ND_OBJDEF_EXTERN( (SACo_TermFile__stdout, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SACt_TermFile__TermFile, 0)
 */
SAC_ND_DECL__DATA( (SACo_TermFile__stdout, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SACt_TermFile__TermFile, extern)
SAC_ND_DECL__DESC( (SACo_TermFile__stdout, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), extern)
SAC_NOTHING()



/*
 *  function definitions (FUNDEFS)
 */



/****************************************************************************
 * Wrapper function:
 * WITH-loop Count: 0
 * _MAIN::SACwf__MAIN__main(...) [ wrapper ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACwf__MAIN__main, , 1, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACwf__MAIN__main, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    /*
     * ND_DECL( (SACp_cwc_246, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_cwc_246, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_cwc_246, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()


    SAC_INIT_LOCAL_MEM()
    /*
     * ND_FUN_AP( SACf__MAIN__main, , 1, out, int, SAC_SET_NT_USG( FAG, (SACp_cwc_246, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf__MAIN__main,  SAC_ND_ARG_out( SAC_SET_NT_USG( FAG, (SACp_cwc_246, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int))

    /*
     * ND_REFRESH__MIRROR( (SACp_cwc_246, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
     */
    SAC_NOOP()

    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), (SACp_cwc_246, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), (SACp_cwc_246, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACwf__MAIN__main, , 1, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * Wrapper function:
 * WITH-loop Count: 0
 * _MAIN:sacprelude_p::SACwf__MAIN_CLsacprelude_p__zero__i_S(...) [ wrapper ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACwf__MAIN_CLsacprelude_p__zero__i_S, , 2, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACwf__MAIN_CLsacprelude_p__zero__i_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    /*
     * ND_DECL( (SACp_cwc_325, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_cwc_325, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_cwc_325, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()


    /*
     * ND_DECL__MIRROR_PARAM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), -2)
     */
    int SAC_ND_A_MIRROR_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, ))))))))))) = SAC_ND_A_DESC_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))));
    int SAC_ND_A_MIRROR_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, ))))))))))) = SAC_ND_A_DESC_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))));

    SAC_INIT_LOCAL_MEM()
    /*
     * ND_FUN_AP( SACf_sacprelude_p__zero__i_S, , 2, out, int, SAC_SET_NT_USG( FAG, (SACp_cwc_325, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), in, int, SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf_sacprelude_p__zero__i_S,  SAC_ND_ARG_out( SAC_SET_NT_USG( FAG, (SACp_cwc_325, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int), SAC_ND_ARG_in( SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, ))))))))))), int))

    /*
     * ND_REFRESH__MIRROR( (SACp_cwc_325, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
     */
    SAC_NOOP()

    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), (SACp_cwc_325, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), (SACp_cwc_325, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACwf__MAIN_CLsacprelude_p__zero__i_S, , 2, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), in, int, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * Wrapper function:
 * WITH-loop Count: 0
 * _MAIN:sacprelude_p::SACwf__MAIN_CLsacprelude_p__zero__d_S(...) [ wrapper ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACwf__MAIN_CLsacprelude_p__zero__d_S, , 2, out, double, (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), in, double, (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACwf__MAIN_CLsacprelude_p__zero__d_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), double))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    /*
     * ND_DECL( (SACp_cwc_327, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (DOU, )))))))))), double, 0)
     */
    SAC_ND_DECL__DATA( (SACp_cwc_327, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (DOU, )))))))))), double, )
    SAC_ND_DECL__DESC( (SACp_cwc_327, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (DOU, )))))))))), )
    SAC_NOTHING()


    /*
     * ND_DECL__MIRROR_PARAM( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), -2)
     */
    int SAC_ND_A_MIRROR_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, ))))))))))) = SAC_ND_A_DESC_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))));
    int SAC_ND_A_MIRROR_DIM( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, ))))))))))) = SAC_ND_A_DESC_DIM( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))));

    SAC_INIT_LOCAL_MEM()
    /*
     * ND_FUN_AP( SACf_sacprelude_p__zero__d_S, , 2, out, double, SAC_SET_NT_USG( FAG, (SACp_cwc_327, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (DOU, ))))))))))), in, double, SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf_sacprelude_p__zero__d_S,  SAC_ND_ARG_out( SAC_SET_NT_USG( FAG, (SACp_cwc_327, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (DOU, ))))))))))), double), SAC_ND_ARG_in( SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, ))))))))))), double))

    /*
     * ND_REFRESH__MIRROR( (SACp_cwc_327, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (DOU, )))))))))), 0)
     */
    SAC_NOOP()

    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), (SACp_cwc_327, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (DOU, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), (SACp_cwc_327, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (DOU, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACwf__MAIN_CLsacprelude_p__zero__d_S, , 2, out, double, (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))), in, double, (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (DOU, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * Wrapper function:
 * WITH-loop Count: 0
 * _MAIN:sacprelude_p::SACwf__MAIN_CLsacprelude_p__zero__f_S(...) [ wrapper ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACwf__MAIN_CLsacprelude_p__zero__f_S, , 2, out, float, (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, float, (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACwf__MAIN_CLsacprelude_p__zero__f_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    SAC_ND_DECL_CONST__DATA((SACp_pinl_6808__emal_5832__cwc_329, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, 0.0f)
    SAC_ND_DECL_CONST__DATA((SACp_pinl_6807__emal_5831__cwc_331, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, 0.0f)
    /*
     * ND_DECL( (SACp_emal_5830__cwc_330, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5830__cwc_330, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_emal_5830__cwc_330, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_emal_5829__cwc_333, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BOO, )))))))))), bool, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5829__cwc_333, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BOO, )))))))))), bool, )
    SAC_ND_DECL__DESC( (SACp_emal_5829__cwc_333, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BOO, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_cwc_328, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, 0)
     */
    SAC_ND_DECL__DATA( (SACp_cwc_328, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACp_cwc_328, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    SAC_NOTHING()


    /*
     * ND_DECL__MIRROR_PARAM( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), -2)
     */
    int SAC_ND_A_MIRROR_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, ))))))))))) = SAC_ND_A_DESC_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))));
    int SAC_ND_A_MIRROR_DIM( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, ))))))))))) = SAC_ND_A_DESC_DIM( (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))));

    SAC_INIT_LOCAL_MEM()
    SAC_ND_PRF_DIM_A__DATA((SACp_emal_5830__cwc_330, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), -2)
    SAC_ND_DEC_RC_FREE((SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 1, )
    SAC_ND_PRF_SxS__DATA((SACp_emal_5829__cwc_333, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BOO, )))))))))), SAC_ND_PRF_EQ, SAC_ND_READ((SACp_emal_5830__cwc_330, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), 2)
    SAC_ND_FREE((SACp_emal_5830__cwc_330, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    if (SAC_ND_GETVAR((SACp_emal_5829__cwc_333, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BOO, )))))))))), SACp_emal_5829__cwc_333)) 
    { 
      SAC_ND_FREE((SACp_emal_5829__cwc_333, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BOO, )))))))))), )
      /*
       * ND_ASSIGN( (SACp_cwc_328, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_pinl_6807__emal_5831__cwc_331, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, )
       */
      SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_cwc_328, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == 0), 106, "Assignment with incompatible types found!");
      SAC_NOOP()
      SAC_NOOP()
      SAC_NOOP()
      SAC_ND_ASSIGN__DATA( (SACp_cwc_328, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), (SACp_pinl_6807__emal_5831__cwc_331, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )

    }
    else
    { 
      SAC_ND_FREE((SACp_emal_5829__cwc_333, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BOO, )))))))))), )
      /*
       * ND_ASSIGN( (SACp_cwc_328, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_pinl_6808__emal_5832__cwc_329, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, )
       */
      SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_cwc_328, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == 0), 106, "Assignment with incompatible types found!");
      SAC_NOOP()
      SAC_NOOP()
      SAC_NOOP()
      SAC_ND_ASSIGN__DATA( (SACp_cwc_328, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), (SACp_pinl_6808__emal_5832__cwc_329, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )

    }
    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), (SACp_cwc_328, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), (SACp_cwc_328, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACwf__MAIN_CLsacprelude_p__zero__f_S, , 2, out, float, (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, float, (SACl_A, (AUD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * Wrapper function:
 * WITH-loop Count: 0
 * _MAIN:sacprelude_p::SACwf__MAIN_CLsacprelude_p__zero__c_S(...) [ wrapper ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACwf__MAIN_CLsacprelude_p__zero__c_S, , 2, out, unsigned char, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), in, unsigned char, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACwf__MAIN_CLsacprelude_p__zero__c_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), unsigned char))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    /*
     * ND_DECL( (SACp_cwc_335, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), unsigned char, 0)
     */
    SAC_ND_DECL__DATA( (SACp_cwc_335, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), unsigned char, )
    SAC_ND_DECL__DESC( (SACp_cwc_335, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), )
    SAC_NOTHING()


    /*
     * ND_DECL__MIRROR_PARAM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), -2)
     */
    int SAC_ND_A_MIRROR_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, ))))))))))) = SAC_ND_A_DESC_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))));
    int SAC_ND_A_MIRROR_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, ))))))))))) = SAC_ND_A_DESC_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))));

    SAC_INIT_LOCAL_MEM()
    /*
     * ND_FUN_AP( SACf_sacprelude_p__zero__c_S, , 2, out, unsigned char, SAC_SET_NT_USG( FAG, (SACp_cwc_335, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, ))))))))))), in, unsigned char, SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf_sacprelude_p__zero__c_S,  SAC_ND_ARG_out( SAC_SET_NT_USG( FAG, (SACp_cwc_335, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, ))))))))))), unsigned char), SAC_ND_ARG_in( SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, ))))))))))), unsigned char))

    /*
     * ND_REFRESH__MIRROR( (SACp_cwc_335, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), 0)
     */
    SAC_NOOP()

    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), (SACp_cwc_335, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), (SACp_cwc_335, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACwf__MAIN_CLsacprelude_p__zero__c_S, , 2, out, unsigned char, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))), in, unsigned char, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UCH, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * Wrapper function:
 * WITH-loop Count: 0
 * _MAIN:sacprelude_p::SACwf__MAIN_CLsacprelude_p__zero__bl_S(...) [ wrapper ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACwf__MAIN_CLsacprelude_p__zero__bl_S, , 2, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, bool, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACwf__MAIN_CLsacprelude_p__zero__bl_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), bool))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    /*
     * ND_DECL( (SACp_cwc_337, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BOO, )))))))))), bool, 0)
     */
    SAC_ND_DECL__DATA( (SACp_cwc_337, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BOO, )))))))))), bool, )
    SAC_ND_DECL__DESC( (SACp_cwc_337, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BOO, )))))))))), )
    SAC_NOTHING()


    /*
     * ND_DECL__MIRROR_PARAM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), -2)
     */
    int SAC_ND_A_MIRROR_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, ))))))))))) = SAC_ND_A_DESC_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))));
    int SAC_ND_A_MIRROR_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, ))))))))))) = SAC_ND_A_DESC_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))));

    SAC_INIT_LOCAL_MEM()
    /*
     * ND_FUN_AP( SACf_sacprelude_p__zero__bl_S, , 2, out, bool, SAC_SET_NT_USG( FAG, (SACp_cwc_337, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BOO, ))))))))))), in, bool, SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf_sacprelude_p__zero__bl_S,  SAC_ND_ARG_out( SAC_SET_NT_USG( FAG, (SACp_cwc_337, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BOO, ))))))))))), bool), SAC_ND_ARG_in( SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, ))))))))))), bool))

    /*
     * ND_REFRESH__MIRROR( (SACp_cwc_337, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BOO, )))))))))), 0)
     */
    SAC_NOOP()

    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), (SACp_cwc_337, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BOO, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), (SACp_cwc_337, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BOO, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACwf__MAIN_CLsacprelude_p__zero__bl_S, , 2, out, bool, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))), in, bool, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BOO, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * Wrapper function:
 * WITH-loop Count: 0
 * _MAIN:sacprelude_p::SACwf__MAIN_CLsacprelude_p__zero__b_S(...) [ wrapper ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACwf__MAIN_CLsacprelude_p__zero__b_S, , 2, out, byte, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), in, byte, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACwf__MAIN_CLsacprelude_p__zero__b_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), byte))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    /*
     * ND_DECL( (SACp_cwc_339, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BYT, )))))))))), byte, 0)
     */
    SAC_ND_DECL__DATA( (SACp_cwc_339, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BYT, )))))))))), byte, )
    SAC_ND_DECL__DESC( (SACp_cwc_339, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BYT, )))))))))), )
    SAC_NOTHING()


    /*
     * ND_DECL__MIRROR_PARAM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), -2)
     */
    int SAC_ND_A_MIRROR_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, ))))))))))) = SAC_ND_A_DESC_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))));
    int SAC_ND_A_MIRROR_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, ))))))))))) = SAC_ND_A_DESC_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))));

    SAC_INIT_LOCAL_MEM()
    /*
     * ND_FUN_AP( SACf_sacprelude_p__zero__b_S, , 2, out, byte, SAC_SET_NT_USG( FAG, (SACp_cwc_339, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BYT, ))))))))))), in, byte, SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf_sacprelude_p__zero__b_S,  SAC_ND_ARG_out( SAC_SET_NT_USG( FAG, (SACp_cwc_339, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BYT, ))))))))))), byte), SAC_ND_ARG_in( SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, ))))))))))), byte))

    /*
     * ND_REFRESH__MIRROR( (SACp_cwc_339, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BYT, )))))))))), 0)
     */
    SAC_NOOP()

    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), (SACp_cwc_339, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BYT, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), (SACp_cwc_339, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (BYT, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACwf__MAIN_CLsacprelude_p__zero__b_S, , 2, out, byte, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))), in, byte, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (BYT, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * Wrapper function:
 * WITH-loop Count: 0
 * _MAIN:sacprelude_p::SACwf__MAIN_CLsacprelude_p__zero__s_S(...) [ wrapper ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACwf__MAIN_CLsacprelude_p__zero__s_S, , 2, out, short, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), in, short, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACwf__MAIN_CLsacprelude_p__zero__s_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), short))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    /*
     * ND_DECL( (SACp_cwc_341, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (SHO, )))))))))), short, 0)
     */
    SAC_ND_DECL__DATA( (SACp_cwc_341, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (SHO, )))))))))), short, )
    SAC_ND_DECL__DESC( (SACp_cwc_341, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (SHO, )))))))))), )
    SAC_NOTHING()


    /*
     * ND_DECL__MIRROR_PARAM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), -2)
     */
    int SAC_ND_A_MIRROR_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, ))))))))))) = SAC_ND_A_DESC_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))));
    int SAC_ND_A_MIRROR_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, ))))))))))) = SAC_ND_A_DESC_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))));

    SAC_INIT_LOCAL_MEM()
    /*
     * ND_FUN_AP( SACf_sacprelude_p__zero__s_S, , 2, out, short, SAC_SET_NT_USG( FAG, (SACp_cwc_341, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (SHO, ))))))))))), in, short, SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf_sacprelude_p__zero__s_S,  SAC_ND_ARG_out( SAC_SET_NT_USG( FAG, (SACp_cwc_341, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (SHO, ))))))))))), short), SAC_ND_ARG_in( SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, ))))))))))), short))

    /*
     * ND_REFRESH__MIRROR( (SACp_cwc_341, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (SHO, )))))))))), 0)
     */
    SAC_NOOP()

    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), (SACp_cwc_341, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (SHO, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), (SACp_cwc_341, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (SHO, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACwf__MAIN_CLsacprelude_p__zero__s_S, , 2, out, short, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))), in, short, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (SHO, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * Wrapper function:
 * WITH-loop Count: 0
 * _MAIN:sacprelude_p::SACwf__MAIN_CLsacprelude_p__zero__l_S(...) [ wrapper ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACwf__MAIN_CLsacprelude_p__zero__l_S, , 2, out, long, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), in, long, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACwf__MAIN_CLsacprelude_p__zero__l_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), long))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    /*
     * ND_DECL( (SACp_cwc_343, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (LON, )))))))))), long, 0)
     */
    SAC_ND_DECL__DATA( (SACp_cwc_343, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (LON, )))))))))), long, )
    SAC_ND_DECL__DESC( (SACp_cwc_343, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (LON, )))))))))), )
    SAC_NOTHING()


    /*
     * ND_DECL__MIRROR_PARAM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), -2)
     */
    int SAC_ND_A_MIRROR_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, ))))))))))) = SAC_ND_A_DESC_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))));
    int SAC_ND_A_MIRROR_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, ))))))))))) = SAC_ND_A_DESC_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))));

    SAC_INIT_LOCAL_MEM()
    /*
     * ND_FUN_AP( SACf_sacprelude_p__zero__l_S, , 2, out, long, SAC_SET_NT_USG( FAG, (SACp_cwc_343, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (LON, ))))))))))), in, long, SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf_sacprelude_p__zero__l_S,  SAC_ND_ARG_out( SAC_SET_NT_USG( FAG, (SACp_cwc_343, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (LON, ))))))))))), long), SAC_ND_ARG_in( SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, ))))))))))), long))

    /*
     * ND_REFRESH__MIRROR( (SACp_cwc_343, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (LON, )))))))))), 0)
     */
    SAC_NOOP()

    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), (SACp_cwc_343, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (LON, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), (SACp_cwc_343, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (LON, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACwf__MAIN_CLsacprelude_p__zero__l_S, , 2, out, long, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))), in, long, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LON, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * Wrapper function:
 * WITH-loop Count: 0
 * _MAIN:sacprelude_p::SACwf__MAIN_CLsacprelude_p__zero__ll_S(...) [ wrapper ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACwf__MAIN_CLsacprelude_p__zero__ll_S, , 2, out, longlong, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), in, longlong, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACwf__MAIN_CLsacprelude_p__zero__ll_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), longlong))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    /*
     * ND_DECL( (SACp_cwc_345, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (LLO, )))))))))), longlong, 0)
     */
    SAC_ND_DECL__DATA( (SACp_cwc_345, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (LLO, )))))))))), longlong, )
    SAC_ND_DECL__DESC( (SACp_cwc_345, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (LLO, )))))))))), )
    SAC_NOTHING()


    /*
     * ND_DECL__MIRROR_PARAM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), -2)
     */
    int SAC_ND_A_MIRROR_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, ))))))))))) = SAC_ND_A_DESC_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))));
    int SAC_ND_A_MIRROR_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, ))))))))))) = SAC_ND_A_DESC_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))));

    SAC_INIT_LOCAL_MEM()
    /*
     * ND_FUN_AP( SACf_sacprelude_p__zero__ll_S, , 2, out, longlong, SAC_SET_NT_USG( FAG, (SACp_cwc_345, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (LLO, ))))))))))), in, longlong, SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf_sacprelude_p__zero__ll_S,  SAC_ND_ARG_out( SAC_SET_NT_USG( FAG, (SACp_cwc_345, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (LLO, ))))))))))), longlong), SAC_ND_ARG_in( SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, ))))))))))), longlong))

    /*
     * ND_REFRESH__MIRROR( (SACp_cwc_345, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (LLO, )))))))))), 0)
     */
    SAC_NOOP()

    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), (SACp_cwc_345, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (LLO, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), (SACp_cwc_345, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (LLO, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACwf__MAIN_CLsacprelude_p__zero__ll_S, , 2, out, longlong, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))), in, longlong, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (LLO, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * Wrapper function:
 * WITH-loop Count: 0
 * _MAIN:sacprelude_p::SACwf__MAIN_CLsacprelude_p__zero__ub_S(...) [ wrapper ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACwf__MAIN_CLsacprelude_p__zero__ub_S, , 2, out, ubyte, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), in, ubyte, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACwf__MAIN_CLsacprelude_p__zero__ub_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), ubyte))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    /*
     * ND_DECL( (SACp_cwc_347, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UBY, )))))))))), ubyte, 0)
     */
    SAC_ND_DECL__DATA( (SACp_cwc_347, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UBY, )))))))))), ubyte, )
    SAC_ND_DECL__DESC( (SACp_cwc_347, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UBY, )))))))))), )
    SAC_NOTHING()


    /*
     * ND_DECL__MIRROR_PARAM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), -2)
     */
    int SAC_ND_A_MIRROR_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, ))))))))))) = SAC_ND_A_DESC_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))));
    int SAC_ND_A_MIRROR_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, ))))))))))) = SAC_ND_A_DESC_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))));

    SAC_INIT_LOCAL_MEM()
    /*
     * ND_FUN_AP( SACf_sacprelude_p__zero__ub_S, , 2, out, ubyte, SAC_SET_NT_USG( FAG, (SACp_cwc_347, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UBY, ))))))))))), in, ubyte, SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf_sacprelude_p__zero__ub_S,  SAC_ND_ARG_out( SAC_SET_NT_USG( FAG, (SACp_cwc_347, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UBY, ))))))))))), ubyte), SAC_ND_ARG_in( SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, ))))))))))), ubyte))

    /*
     * ND_REFRESH__MIRROR( (SACp_cwc_347, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UBY, )))))))))), 0)
     */
    SAC_NOOP()

    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), (SACp_cwc_347, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UBY, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), (SACp_cwc_347, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UBY, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACwf__MAIN_CLsacprelude_p__zero__ub_S, , 2, out, ubyte, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))), in, ubyte, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UBY, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * Wrapper function:
 * WITH-loop Count: 0
 * _MAIN:sacprelude_p::SACwf__MAIN_CLsacprelude_p__zero__us_S(...) [ wrapper ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACwf__MAIN_CLsacprelude_p__zero__us_S, , 2, out, ushort, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), in, ushort, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACwf__MAIN_CLsacprelude_p__zero__us_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), ushort))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    /*
     * ND_DECL( (SACp_cwc_349, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (USH, )))))))))), ushort, 0)
     */
    SAC_ND_DECL__DATA( (SACp_cwc_349, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (USH, )))))))))), ushort, )
    SAC_ND_DECL__DESC( (SACp_cwc_349, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (USH, )))))))))), )
    SAC_NOTHING()


    /*
     * ND_DECL__MIRROR_PARAM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), -2)
     */
    int SAC_ND_A_MIRROR_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, ))))))))))) = SAC_ND_A_DESC_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))));
    int SAC_ND_A_MIRROR_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, ))))))))))) = SAC_ND_A_DESC_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))));

    SAC_INIT_LOCAL_MEM()
    /*
     * ND_FUN_AP( SACf_sacprelude_p__zero__us_S, , 2, out, ushort, SAC_SET_NT_USG( FAG, (SACp_cwc_349, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (USH, ))))))))))), in, ushort, SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf_sacprelude_p__zero__us_S,  SAC_ND_ARG_out( SAC_SET_NT_USG( FAG, (SACp_cwc_349, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (USH, ))))))))))), ushort), SAC_ND_ARG_in( SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, ))))))))))), ushort))

    /*
     * ND_REFRESH__MIRROR( (SACp_cwc_349, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (USH, )))))))))), 0)
     */
    SAC_NOOP()

    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), (SACp_cwc_349, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (USH, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), (SACp_cwc_349, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (USH, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACwf__MAIN_CLsacprelude_p__zero__us_S, , 2, out, ushort, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))), in, ushort, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (USH, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * Wrapper function:
 * WITH-loop Count: 0
 * _MAIN:sacprelude_p::SACwf__MAIN_CLsacprelude_p__zero__ui_S(...) [ wrapper ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACwf__MAIN_CLsacprelude_p__zero__ui_S, , 2, out, uint, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), in, uint, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACwf__MAIN_CLsacprelude_p__zero__ui_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), uint))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    /*
     * ND_DECL( (SACp_cwc_351, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UIN, )))))))))), uint, 0)
     */
    SAC_ND_DECL__DATA( (SACp_cwc_351, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UIN, )))))))))), uint, )
    SAC_ND_DECL__DESC( (SACp_cwc_351, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UIN, )))))))))), )
    SAC_NOTHING()


    /*
     * ND_DECL__MIRROR_PARAM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), -2)
     */
    int SAC_ND_A_MIRROR_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, ))))))))))) = SAC_ND_A_DESC_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))));
    int SAC_ND_A_MIRROR_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, ))))))))))) = SAC_ND_A_DESC_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))));

    SAC_INIT_LOCAL_MEM()
    /*
     * ND_FUN_AP( SACf_sacprelude_p__zero__ui_S, , 2, out, uint, SAC_SET_NT_USG( FAG, (SACp_cwc_351, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UIN, ))))))))))), in, uint, SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf_sacprelude_p__zero__ui_S,  SAC_ND_ARG_out( SAC_SET_NT_USG( FAG, (SACp_cwc_351, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UIN, ))))))))))), uint), SAC_ND_ARG_in( SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, ))))))))))), uint))

    /*
     * ND_REFRESH__MIRROR( (SACp_cwc_351, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UIN, )))))))))), 0)
     */
    SAC_NOOP()

    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), (SACp_cwc_351, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UIN, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), (SACp_cwc_351, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UIN, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACwf__MAIN_CLsacprelude_p__zero__ui_S, , 2, out, uint, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))), in, uint, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (UIN, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * Wrapper function:
 * WITH-loop Count: 0
 * _MAIN:sacprelude_p::SACwf__MAIN_CLsacprelude_p__zero__ul_S(...) [ wrapper ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACwf__MAIN_CLsacprelude_p__zero__ul_S, , 2, out, ulong, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), in, ulong, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACwf__MAIN_CLsacprelude_p__zero__ul_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), ulong))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    /*
     * ND_DECL( (SACp_cwc_353, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (ULO, )))))))))), ulong, 0)
     */
    SAC_ND_DECL__DATA( (SACp_cwc_353, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (ULO, )))))))))), ulong, )
    SAC_ND_DECL__DESC( (SACp_cwc_353, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (ULO, )))))))))), )
    SAC_NOTHING()


    /*
     * ND_DECL__MIRROR_PARAM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), -2)
     */
    int SAC_ND_A_MIRROR_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, ))))))))))) = SAC_ND_A_DESC_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))));
    int SAC_ND_A_MIRROR_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, ))))))))))) = SAC_ND_A_DESC_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))));

    SAC_INIT_LOCAL_MEM()
    /*
     * ND_FUN_AP( SACf_sacprelude_p__zero__ul_S, , 2, out, ulong, SAC_SET_NT_USG( FAG, (SACp_cwc_353, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (ULO, ))))))))))), in, ulong, SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf_sacprelude_p__zero__ul_S,  SAC_ND_ARG_out( SAC_SET_NT_USG( FAG, (SACp_cwc_353, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (ULO, ))))))))))), ulong), SAC_ND_ARG_in( SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, ))))))))))), ulong))

    /*
     * ND_REFRESH__MIRROR( (SACp_cwc_353, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (ULO, )))))))))), 0)
     */
    SAC_NOOP()

    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), (SACp_cwc_353, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (ULO, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), (SACp_cwc_353, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (ULO, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACwf__MAIN_CLsacprelude_p__zero__ul_S, , 2, out, ulong, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))), in, ulong, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULO, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * Wrapper function:
 * WITH-loop Count: 0
 * _MAIN:sacprelude_p::SACwf__MAIN_CLsacprelude_p__zero__ull_S(...) [ wrapper ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACwf__MAIN_CLsacprelude_p__zero__ull_S, , 2, out, ulonglong, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), in, ulonglong, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACwf__MAIN_CLsacprelude_p__zero__ull_S, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong), SAC_ND_PARAM_in( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), ulonglong))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    /*
     * ND_DECL( (SACp_cwc_355, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (ULL, )))))))))), ulonglong, 0)
     */
    SAC_ND_DECL__DATA( (SACp_cwc_355, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (ULL, )))))))))), ulonglong, )
    SAC_ND_DECL__DESC( (SACp_cwc_355, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (ULL, )))))))))), )
    SAC_NOTHING()


    /*
     * ND_DECL__MIRROR_PARAM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), -2)
     */
    int SAC_ND_A_MIRROR_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, ))))))))))) = SAC_ND_A_DESC_SIZE( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))));
    int SAC_ND_A_MIRROR_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, ))))))))))) = SAC_ND_A_DESC_DIM( (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))));

    SAC_INIT_LOCAL_MEM()
    /*
     * ND_FUN_AP( SACf_sacprelude_p__zero__ull_S, , 2, out, ulonglong, SAC_SET_NT_USG( FAG, (SACp_cwc_355, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (ULL, ))))))))))), in, ulonglong, SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf_sacprelude_p__zero__ull_S,  SAC_ND_ARG_out( SAC_SET_NT_USG( FAG, (SACp_cwc_355, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (ULL, ))))))))))), ulonglong), SAC_ND_ARG_in( SAC_SET_NT_USG( FPA, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, ))))))))))), ulonglong))

    /*
     * ND_REFRESH__MIRROR( (SACp_cwc_355, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (ULL, )))))))))), 0)
     */
    SAC_NOOP()

    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), (SACp_cwc_355, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (ULL, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), (SACp_cwc_355, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (ULL, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACwf__MAIN_CLsacprelude_p__zero__ull_S, , 2, out, ulonglong, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))), in, ulonglong, (SACl_A, (AUD, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (ULL, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * WITH-loop Count: 0
 * _MAIN::SACf__MAIN__tmm__f_X_X__f_X_X(...) [ body ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACf__MAIN__tmm__f_X_X__f_X_X, , 3, out, float, (SAC_arg_1, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, float, (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, float, (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACf__MAIN__tmm__f_X_X__f_X_X, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    /*
     * ND_DECL( (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 1, 2)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = 2;
    const int SAC_ND_A_MIRROR_SIZE( (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 2;
    const int SAC_ND_A_MIRROR_DIM( (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 1;

    /*
     * ND_DECL( (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 1, 2)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = 2;
    const int SAC_ND_A_MIRROR_SIZE( (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 2;
    const int SAC_ND_A_MIRROR_DIM( (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 1;

    SAC_ND_DECL_CONST__DATA((SACp_emal_5863__flat_101, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
    /*
     * ND_DECL( (SACp_emal_5862__flat_99, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5862__flat_99, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_emal_5862__flat_99, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_emal_5861__flat_95, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5861__flat_95, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_emal_5861__flat_95, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    SAC_ND_DECL_CONST__DATA((SACp_emal_5860__flat_77, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 1)
    /*
     * ND_DECL( (SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    SAC_ND_DECL_CONST__DATA((SACp_emal_5858__flat_61, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, 0.0f)
    /*
     * ND_DECL( (SACp_emal_5857__flat_43, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5857__flat_43, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_emal_5857__flat_43, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    SAC_ND_DECL_CONST__DATA((SACp_emal_5856__pinl_520__flat_1458, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, 1.0f)
    /*
     * ND_DECL( (SACp_emal_5854__ivesli_5612, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5854__ivesli_5612, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_emal_5854__ivesli_5612, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_emal_5852__ivesli_5614, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5852__ivesli_5614, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_emal_5852__ivesli_5614, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_emal_5850__pinl_560__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5850__pinl_560__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACp_emal_5850__pinl_560__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, -3)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    int SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0);
    int SAC_ND_A_MIRROR_SIZE( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))));
    const int SAC_ND_A_MIRROR_DIM( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = 1;

    /*
     * ND_DECL( (SACp_emal_5848__ivesli_5607, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5848__ivesli_5607, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_emal_5848__ivesli_5607, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_emal_5846__ivesli_5609, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5846__ivesli_5609, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_emal_5846__ivesli_5609, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_emal_5844__pinl_573__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5844__pinl_573__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACp_emal_5844__pinl_573__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, -3)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    int SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0);
    int SAC_ND_A_MIRROR_SIZE( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))));
    const int SAC_ND_A_MIRROR_DIM( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = 1;

    /*
     * ND_DECL( (SACp_emal_5841__ivesli_5605, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5841__ivesli_5605, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_emal_5841__ivesli_5605, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_emal_5840__pinl_583__flat_1463, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5840__pinl_583__flat_1463, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACp_emal_5840__pinl_583__flat_1463, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_emal_5839__pinl_584__flat_1462, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5839__pinl_584__flat_1462, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACp_emal_5839__pinl_584__flat_1462, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_emal_5836__ivesli_5603, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5836__ivesli_5603, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_emal_5836__ivesli_5603, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_emal_5835__pinl_599__flat_3951, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5835__pinl_599__flat_3951, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACp_emal_5835__pinl_599__flat_3951, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, -4)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    int SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0);
    int SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1);
    int SAC_ND_A_MIRROR_SIZE( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))));
    const int SAC_ND_A_MIRROR_DIM( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = 2;

    /*
     * ND_DECL( (SACp_wlidx_5544__pinl_586_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_wlidx_5544__pinl_586_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_wlidx_5544__pinl_586_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_wlidx_5543__flat_106, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_wlidx_5543__flat_106, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_wlidx_5543__flat_106, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_wlidx_5542__flat_142, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_wlidx_5542__flat_142, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_wlidx_5542__flat_142, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_wlidx_5541_C, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_wlidx_5541_C, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_wlidx_5541_C, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_pinl_587__eat_238, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_pinl_587__eat_238, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_pinl_587__eat_238, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_pinl_582_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 1, 1)
     */
    SAC_ND_DECL__DATA( (SACp_pinl_582_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_pinl_582_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_pinl_582_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = 1;
    const int SAC_ND_A_MIRROR_SIZE( (SACp_pinl_582_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 1;
    const int SAC_ND_A_MIRROR_DIM( (SACp_pinl_582_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 1;

    /*
     * ND_DECL( (SACp_pinl_601__eat_237, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_pinl_601__eat_237, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_pinl_601__eat_237, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_pinl_600_res, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, 0)
     */
    SAC_ND_DECL__DATA( (SACp_pinl_600_res, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACp_pinl_600_res, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_pinl_598_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 1, 1)
     */
    SAC_ND_DECL__DATA( (SACp_pinl_598_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_pinl_598_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_pinl_598_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = 1;
    const int SAC_ND_A_MIRROR_SIZE( (SACp_pinl_598_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 1;
    const int SAC_ND_A_MIRROR_DIM( (SACp_pinl_598_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 1;

    /*
     * ND_DECL( (SACp_eat_234, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_eat_234, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_eat_234, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_eat_233, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_eat_233, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_eat_233, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_hd_2_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 1, 1)
     */
    SAC_ND_DECL__DATA( (SACp_hd_2_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_hd_2_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_hd_2_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = 1;
    const int SAC_ND_A_MIRROR_SIZE( (SACp_hd_2_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 1;
    const int SAC_ND_A_MIRROR_DIM( (SACp_hd_2_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 1;

    /*
     * ND_DECL( (SACp_hd_5_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 1, 1)
     */
    SAC_ND_DECL__DATA( (SACp_hd_5_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_hd_5_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_hd_5_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = 1;
    const int SAC_ND_A_MIRROR_SIZE( (SACp_hd_5_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 1;
    const int SAC_ND_A_MIRROR_DIM( (SACp_hd_5_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 1;

    /*
     * ND_DECL( (SACl_n, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACl_n, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACl_n, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACl_m, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACl_m, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACl_m, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 1, 2)
     */
    SAC_ND_DECL__DATA( (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = 2;
    const int SAC_ND_A_MIRROR_SIZE( (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 2;
    const int SAC_ND_A_MIRROR_DIM( (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 1;


    /*
     * ND_DECL__MIRROR_PARAM( (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), -4)
     */
    int SAC_ND_A_MIRROR_SHAPE( (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 0) = SAC_ND_A_DESC_SHAPE( (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 0);
    int SAC_ND_A_MIRROR_SHAPE( (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 1) = SAC_ND_A_DESC_SHAPE( (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 1);
    int SAC_ND_A_MIRROR_SIZE( (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, ))))))))))) = SAC_ND_A_DESC_SIZE( (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))));
    const int SAC_ND_A_MIRROR_DIM( (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, ))))))))))) = 2;

    /*
     * ND_DECL__MIRROR_PARAM( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), -4)
     */
    int SAC_ND_A_MIRROR_SHAPE( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 0) = SAC_ND_A_DESC_SHAPE( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 0);
    int SAC_ND_A_MIRROR_SHAPE( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 1) = SAC_ND_A_DESC_SHAPE( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 1);
    int SAC_ND_A_MIRROR_SIZE( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, ))))))))))) = SAC_ND_A_DESC_SIZE( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))));
    const int SAC_ND_A_MIRROR_DIM( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, ))))))))))) = 2;

    SAC_INIT_LOCAL_MEM()
    SAC_ND_ALLOC_BEGIN((SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 1, int)
    /*
     * ND_SET__SHAPE_arr( (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 2)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 1), 19, "Assignment with incompatible types found!");
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SHAPE( (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) == 2), 19, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 1, int)
    /*
     * ND_PRF_SHAPE_A__DATA( (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), -4)
     */
    SAC_TR_PRF_PRINT( ("ND_PRF_SHAPE_A__DATA( (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), -4)"))
    SAC_ND_WRITE_COPY( (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, SAC_ND_A_SHAPE( (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 0), );
    SAC_ND_WRITE_COPY( (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, SAC_ND_A_SHAPE( (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 1), );

    SAC_ND_ALLOC_BEGIN((SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 1, int)
    /*
     * ND_SET__SHAPE_arr( (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 2)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 1), 19, "Assignment with incompatible types found!");
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SHAPE( (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) == 2), 19, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 1, int)
    /*
     * ND_PRF_SHAPE_A__DATA( (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), -4)
     */
    SAC_TR_PRF_PRINT( ("ND_PRF_SHAPE_A__DATA( (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), -4)"))
    SAC_ND_WRITE_COPY( (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, SAC_ND_A_SHAPE( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 0), );
    SAC_ND_WRITE_COPY( (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, SAC_ND_A_SHAPE( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 1), );

    /*
     * ND_PRF_IDX_SEL__DATA( (SACp_emal_5862__flat_99, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACp_emal_5863__flat_101, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
     */
    SAC_TR_PRF_PRINT( ("ND_PRF_IDX_SEL__DATA( (SACp_emal_5862__flat_99, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACp_emal_5863__flat_101, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))"))
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5863__flat_101, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 22, "1st argument of _idx_sel_ is not a scalar!");
    SAC_ND_WRITE_READ_COPY( (SACp_emal_5862__flat_99, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), SAC_ND_READ( (SACp_emal_5863__flat_101, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), )

    /*
     * ND_PRF_IDX_SEL__DATA( (SACp_emal_5861__flat_95, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACp_emal_5863__flat_101, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
     */
    SAC_TR_PRF_PRINT( ("ND_PRF_IDX_SEL__DATA( (SACp_emal_5861__flat_95, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACp_emal_5863__flat_101, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))"))
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5863__flat_101, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 22, "1st argument of _idx_sel_ is not a scalar!");
    SAC_ND_WRITE_READ_COPY( (SACp_emal_5861__flat_95, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), SAC_ND_READ( (SACp_emal_5863__flat_101, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), )

    /*
     * ND_PRF_IDX_SEL__DATA( (SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACp_emal_5860__flat_77, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
     */
    SAC_TR_PRF_PRINT( ("ND_PRF_IDX_SEL__DATA( (SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACp_emal_5860__flat_77, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))"))
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5860__flat_77, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 22, "1st argument of _idx_sel_ is not a scalar!");
    SAC_ND_WRITE_READ_COPY( (SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), SAC_ND_READ( (SACp_emal_5860__flat_77, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), )

    /*
     * ND_PRF_IDX_SEL__DATA( (SACp_emal_5857__flat_43, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACp_emal_5860__flat_77, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
     */
    SAC_TR_PRF_PRINT( ("ND_PRF_IDX_SEL__DATA( (SACp_emal_5857__flat_43, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACp_emal_5860__flat_77, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))"))
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5860__flat_77, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 22, "1st argument of _idx_sel_ is not a scalar!");
    SAC_ND_WRITE_READ_COPY( (SACp_emal_5857__flat_43, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), SAC_ND_READ( (SACp_emal_5860__flat_77, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), )

    SAC_ND_FREE((SACp_emal_5860__flat_77, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_ALLOC_BEGIN((SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 2, float)
    /*
     * ND_SET__SHAPE_arr( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 2, SAC_ND_READ( (SACp_emal_5861__flat_95, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), SAC_ND_READ( (SACp_emal_5862__flat_99, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == 2), 22, "Assignment with incompatible types found!");
    {

      int SAC_size = 1;
      SAC_size *= 
      SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0) = 
      SAC_ND_A_DESC_SHAPE( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0) = SAC_ND_READ( (SACp_emal_5861__flat_95, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0);
      SAC_size *= 
      SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1) = 
      SAC_ND_A_DESC_SHAPE( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1) = SAC_ND_READ( (SACp_emal_5862__flat_99, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0);
      SAC_ND_A_DESC_SIZE( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = SAC_ND_A_MIRROR_SIZE( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = SAC_size;
      SAC_ASSURE_TYPE_LINE ((SAC_ND_A_MIRROR_SIZE( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) >= 0), 22, "Array with size <0 found!");
    }

    SAC_ND_ALLOC_END((SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 2, float)
    SAC_ND_ALLOC_BEGIN((SACl_m, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    /*
     * ND_SET__SHAPE_arr( (SACl_m, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACl_m, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 22, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACl_m, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    SAC_ND_ALLOC_BEGIN((SACl_n, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    /*
     * ND_SET__SHAPE_arr( (SACl_n, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACl_n, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 22, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACl_n, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    SAC_ND_ALLOC_BEGIN((SACp_wlidx_5541_C, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    /*
     * ND_SET__SHAPE_arr( (SACp_wlidx_5541_C, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_wlidx_5541_C, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 22, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_wlidx_5541_C, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    SAC_PF_BEGIN_WITH(genarray)
    /*
     * WL_SCHEDULE__BEGIN( 2)
     */
    {
      int SAC_WL_MT_SCHEDULE_START( 0);
      int SAC_WL_MT_SCHEDULE_STOP( 0);
      int SAC_WL_MT_SCHEDULE_START( 1);
      int SAC_WL_MT_SCHEDULE_STOP( 1);

      /*
       * WL_DECLARE_SHAPE_FACTOR( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -4, (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2)
       */
      int SAC_WL_SHAPE_FACTOR( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0);
      int SAC_WL_SHAPE_FACTOR( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1);

      /*
       * WL_DEFINE_SHAPE_FACTOR( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -4, (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2)
       */
      {
        int SAC_i;
        SAC_WL_SHAPE_FACTOR( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0) = 1 * SAC_ND_A_SHAPE( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1);
        SAC_WL_SHAPE_FACTOR( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1) = 1;
      }

      /*
       * MT_SCHEDULER_BEGIN( 0, 2, 0, 0, SAC_ND_READ( (SACp_emal_5861__flat_95, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), SAC_ND_READ( (SACp_emal_5862__flat_99, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))
       */
      SAC_WL_MT_SCHEDULE_START( 0) = 0;
      SAC_WL_MT_SCHEDULE_STOP( 0) = SAC_ND_READ( (SACp_emal_5861__flat_95, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0);
      SAC_WL_MT_SCHEDULE_START( 1) = 0;
      SAC_WL_MT_SCHEDULE_STOP( 1) = SAC_ND_READ( (SACp_emal_5862__flat_99, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0);

      /*
       * WL_INIT_OFFSET( (SACp_wlidx_5541_C, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -4, (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2)
       */
      SAC_ND_WRITE( (SACp_wlidx_5541_C, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
        = SAC_WL_MT_SCHEDULE_START( 0) * SAC_WL_SHAPE_FACTOR( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0)
        + SAC_WL_MT_SCHEDULE_START( 1) * SAC_WL_SHAPE_FACTOR( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1);

      SAC_WL_STRIDE_LOOP0_BEGIN(0, (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACl_m, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, SAC_ND_READ((SACp_emal_5861__flat_95, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), 1)
      SAC_WL_GRID_UNROLL_BEGIN(0, (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACl_m, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, 1)
      /*
       * WL_SET_OFFSET( (SACp_wlidx_5541_C, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, 2, (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -4, (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2, (SACl_m, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACl_n, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
       */
      SAC_ND_WRITE( (SACp_wlidx_5541_C, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) 
        = ( SAC_ND_A_SHAPE( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1) * SAC_ND_READ( (SACl_m, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
         + SAC_WL_MT_SCHEDULE_START( 1) ) * SAC_WL_SHAPE_FACTOR( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1);

      SAC_WL_STRIDE_LOOP0_BEGIN(1, (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACl_n, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, SAC_ND_READ((SACp_emal_5862__flat_99, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), 1)
      SAC_WL_GRID_UNROLL_BEGIN(1, (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACl_n, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, 1)
      SAC_ND_INC_RC((SACp_emal_5858__flat_61, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1)
      SAC_ND_ALLOC_BEGIN((SACp_emal_5854__ivesli_5612, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
      /*
       * ND_SET__SHAPE_arr( (SACp_emal_5854__ivesli_5612, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
       */
      SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5854__ivesli_5612, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 152, "Assignment with incompatible types found!");
      SAC_NOOP()

      SAC_ND_ALLOC_END((SACp_emal_5854__ivesli_5612, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
      /*
       * ND_IDXS2OFFSET_id( (SACp_emal_5854__ivesli_5612, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2, (SACl_n, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_emal_5863__flat_101, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2, (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
       */
      SAC_ND_WRITE( (SACp_emal_5854__ivesli_5612, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = ( SAC_ND_READ( (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1) * SAC_ND_READ( (SACl_n, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) + SAC_ND_READ( (SACp_emal_5863__flat_101, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) );

      SAC_ND_ALLOC_BEGIN((SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 1, float)
      /*
       * ND_SET__SHAPE_arr( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, SAC_ND_READ( (SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))
       */
      SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == 1), 22, "Assignment with incompatible types found!");
      {

        int SAC_size = 1;
        SAC_size *= 
        SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0) = 
        SAC_ND_A_DESC_SHAPE( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0) = SAC_ND_READ( (SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0);
        SAC_ND_A_DESC_SIZE( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = SAC_ND_A_MIRROR_SIZE( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = SAC_size;
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_MIRROR_SIZE( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) >= 0), 22, "Array with size <0 found!");
      }

      SAC_ND_ALLOC_END((SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 1, float)
      SAC_ND_ALLOC_BEGIN((SACp_eat_233, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
      /*
       * ND_SET__SHAPE_arr( (SACp_eat_233, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
       */
      SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_eat_233, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 22, "Assignment with incompatible types found!");
      SAC_NOOP()

      SAC_ND_ALLOC_END((SACp_eat_233, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
      SAC_ND_ALLOC_BEGIN((SACp_wlidx_5542__flat_142, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
      /*
       * ND_SET__SHAPE_arr( (SACp_wlidx_5542__flat_142, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
       */
      SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_wlidx_5542__flat_142, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 22, "Assignment with incompatible types found!");
      SAC_NOOP()

      SAC_ND_ALLOC_END((SACp_wlidx_5542__flat_142, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
      SAC_PF_BEGIN_WITH(genarray)
      /*
       * WL_SCHEDULE__BEGIN( 1)
       */
      {
        int SAC_WL_MT_SCHEDULE_START( 0);
        int SAC_WL_MT_SCHEDULE_STOP( 0);

        /*
         * WL_DECLARE_SHAPE_FACTOR( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -3, (SACp_hd_5_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1)
         */
        int SAC_WL_SHAPE_FACTOR( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0);

        /*
         * WL_DEFINE_SHAPE_FACTOR( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -3, (SACp_hd_5_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1)
         */
        {
          int SAC_i;
          SAC_WL_SHAPE_FACTOR( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0) = 1;
        }

        /*
         * MT_SCHEDULER_BEGIN( 0, 1, 0, SAC_ND_READ( (SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))
         */
        SAC_WL_MT_SCHEDULE_START( 0) = 0;
        SAC_WL_MT_SCHEDULE_STOP( 0) = SAC_ND_READ( (SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0);

        /*
         * WL_INIT_OFFSET( (SACp_wlidx_5542__flat_142, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -3, (SACp_hd_5_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1)
         */
        SAC_ND_WRITE( (SACp_wlidx_5542__flat_142, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
          = SAC_WL_MT_SCHEDULE_START( 0) * SAC_WL_SHAPE_FACTOR( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0);

        SAC_WL_STRIDE_LOOP0_BEGIN(0, (SACp_hd_5_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_eat_233, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, SAC_ND_READ((SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), 1)
        SAC_WL_GRID_UNROLL_BEGIN(0, (SACp_hd_5_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_eat_233, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, 1)
        SAC_ND_ALLOC_BEGIN((SACp_emal_5852__ivesli_5614, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
        /*
         * ND_SET__SHAPE_arr( (SACp_emal_5852__ivesli_5614, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
         */
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5852__ivesli_5614, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 152, "Assignment with incompatible types found!");
        SAC_NOOP()

        SAC_ND_ALLOC_END((SACp_emal_5852__ivesli_5614, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
        /*
         * ND_IDXS2OFFSET_id( (SACp_emal_5852__ivesli_5614, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2, (SACp_emal_5863__flat_101, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_eat_233, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2, (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
         */
        SAC_ND_WRITE( (SACp_emal_5852__ivesli_5614, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = ( SAC_ND_READ( (SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1) * SAC_ND_READ( (SACp_emal_5863__flat_101, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) + SAC_ND_READ( (SACp_eat_233, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) );

        SAC_ND_PRF_SxS__DATA((SACp_emal_5852__ivesli_5614, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), SAC_ND_PRF_ADD, SAC_ND_READ((SACp_emal_5854__ivesli_5612, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), SAC_ND_READ((SACp_emal_5852__ivesli_5614, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))
        SAC_ND_ALLOC_BEGIN((SACp_emal_5850__pinl_560__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 0, float)
        /*
         * ND_SET__SHAPE_arr( (SACp_emal_5850__pinl_560__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0)
         */
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5850__pinl_560__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == 0), 152, "Assignment with incompatible types found!");
        SAC_NOOP()

        SAC_ND_ALLOC_END((SACp_emal_5850__pinl_560__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 0, float)
        /*
         * ND_PRF_IDX_SEL__DATA( (SACp_emal_5850__pinl_560__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), -4, (SACp_emal_5852__ivesli_5614, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
         */
        SAC_TR_PRF_PRINT( ("ND_PRF_IDX_SEL__DATA( (SACp_emal_5850__pinl_560__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), -4, (SACp_emal_5852__ivesli_5614, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))"))
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5852__ivesli_5614, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 152, "1st argument of _idx_sel_ is not a scalar!");
        SAC_ND_WRITE_READ_COPY( (SACp_emal_5850__pinl_560__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), SAC_ND_READ( (SACp_emal_5852__ivesli_5614, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), )

        SAC_ND_FREE((SACp_emal_5852__ivesli_5614, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
        /*
         * WL_ASSIGN( (SACp_emal_5850__pinl_560__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -3, (SACp_hd_5_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACp_wlidx_5542__flat_142, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
         */
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5850__pinl_560__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == (SAC_ND_A_DIM( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) - SAC_ND_A_SIZE( (SACp_hd_5_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))))), 22, "WL expression with illegal dimension found!");
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SIZE( (SACp_emal_5850__pinl_560__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == SAC_WL_SHAPE_FACTOR( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0)), 22, "WL expression with illegal size found!");
        SAC_ND_WRITE_READ_COPY( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), SAC_ND_READ( (SACp_wlidx_5542__flat_142, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), (SACp_emal_5850__pinl_560__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, );

        SAC_ND_FREE((SACp_emal_5850__pinl_560__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
        SAC_WL_INC_OFFSET((SACp_wlidx_5542__flat_142, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_emal_5850__pinl_560__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))))
        SAC_WL_GRID_UNROLL_END(0, (SACp_hd_5_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_eat_233, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, 1)
        SAC_WL_STRIDE_LOOP_END(0, (SACp_hd_5_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_eat_233, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, SAC_ND_READ((SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), 1)
        /*
         * MT_SCHEDULER_END( 0, 1, 0, SAC_ND_READ( (SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))
         */


        /*
         * WL_SCHEDULE__END( 1)
         */
      }

      SAC_PF_END_WITH(genarray)
      SAC_ND_LABEL(_comp_6822_SAC_label)
      SAC_ND_FREE((SACp_eat_233, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
      SAC_ND_FREE((SACp_wlidx_5542__flat_142, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
      SAC_ND_FREE((SACp_emal_5854__ivesli_5612, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
      SAC_ND_ALLOC_BEGIN((SACp_emal_5848__ivesli_5607, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
      /*
       * ND_SET__SHAPE_arr( (SACp_emal_5848__ivesli_5607, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
       */
      SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5848__ivesli_5607, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 152, "Assignment with incompatible types found!");
      SAC_NOOP()

      SAC_ND_ALLOC_END((SACp_emal_5848__ivesli_5607, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
      /*
       * ND_IDXS2OFFSET_id( (SACp_emal_5848__ivesli_5607, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2, (SACl_m, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_emal_5863__flat_101, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2, (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
       */
      SAC_ND_WRITE( (SACp_emal_5848__ivesli_5607, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = ( SAC_ND_READ( (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1) * SAC_ND_READ( (SACl_m, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) + SAC_ND_READ( (SACp_emal_5863__flat_101, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) );

      SAC_ND_ALLOC_BEGIN((SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 1, float)
      /*
       * ND_SET__SHAPE_arr( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, SAC_ND_READ( (SACp_emal_5857__flat_43, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))
       */
      SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == 1), 22, "Assignment with incompatible types found!");
      {

        int SAC_size = 1;
        SAC_size *= 
        SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0) = 
        SAC_ND_A_DESC_SHAPE( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0) = SAC_ND_READ( (SACp_emal_5857__flat_43, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0);
        SAC_ND_A_DESC_SIZE( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = SAC_ND_A_MIRROR_SIZE( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = SAC_size;
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_MIRROR_SIZE( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) >= 0), 22, "Array with size <0 found!");
      }

      SAC_ND_ALLOC_END((SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 1, float)
      SAC_ND_ALLOC_BEGIN((SACp_eat_234, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
      /*
       * ND_SET__SHAPE_arr( (SACp_eat_234, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
       */
      SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_eat_234, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 22, "Assignment with incompatible types found!");
      SAC_NOOP()

      SAC_ND_ALLOC_END((SACp_eat_234, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
      SAC_ND_ALLOC_BEGIN((SACp_wlidx_5543__flat_106, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
      /*
       * ND_SET__SHAPE_arr( (SACp_wlidx_5543__flat_106, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
       */
      SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_wlidx_5543__flat_106, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 22, "Assignment with incompatible types found!");
      SAC_NOOP()

      SAC_ND_ALLOC_END((SACp_wlidx_5543__flat_106, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
      SAC_PF_BEGIN_WITH(genarray)
      /*
       * WL_SCHEDULE__BEGIN( 1)
       */
      {
        int SAC_WL_MT_SCHEDULE_START( 0);
        int SAC_WL_MT_SCHEDULE_STOP( 0);

        /*
         * WL_DECLARE_SHAPE_FACTOR( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -3, (SACp_hd_2_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1)
         */
        int SAC_WL_SHAPE_FACTOR( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0);

        /*
         * WL_DEFINE_SHAPE_FACTOR( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -3, (SACp_hd_2_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1)
         */
        {
          int SAC_i;
          SAC_WL_SHAPE_FACTOR( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0) = 1;
        }

        /*
         * MT_SCHEDULER_BEGIN( 0, 1, 0, SAC_ND_READ( (SACp_emal_5857__flat_43, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))
         */
        SAC_WL_MT_SCHEDULE_START( 0) = 0;
        SAC_WL_MT_SCHEDULE_STOP( 0) = SAC_ND_READ( (SACp_emal_5857__flat_43, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0);

        /*
         * WL_INIT_OFFSET( (SACp_wlidx_5543__flat_106, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -3, (SACp_hd_2_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1)
         */
        SAC_ND_WRITE( (SACp_wlidx_5543__flat_106, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
          = SAC_WL_MT_SCHEDULE_START( 0) * SAC_WL_SHAPE_FACTOR( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0);

        SAC_WL_STRIDE_LOOP0_BEGIN(0, (SACp_hd_2_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_eat_234, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, SAC_ND_READ((SACp_emal_5857__flat_43, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), 1)
        SAC_WL_GRID_UNROLL_BEGIN(0, (SACp_hd_2_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_eat_234, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, 1)
        SAC_ND_ALLOC_BEGIN((SACp_emal_5846__ivesli_5609, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
        /*
         * ND_SET__SHAPE_arr( (SACp_emal_5846__ivesli_5609, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
         */
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5846__ivesli_5609, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 152, "Assignment with incompatible types found!");
        SAC_NOOP()

        SAC_ND_ALLOC_END((SACp_emal_5846__ivesli_5609, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
        /*
         * ND_IDXS2OFFSET_id( (SACp_emal_5846__ivesli_5609, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2, (SACp_emal_5863__flat_101, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_eat_234, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2, (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
         */
        SAC_ND_WRITE( (SACp_emal_5846__ivesli_5609, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = ( SAC_ND_READ( (SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1) * SAC_ND_READ( (SACp_emal_5863__flat_101, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) + SAC_ND_READ( (SACp_eat_234, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) );

        SAC_ND_PRF_SxS__DATA((SACp_emal_5846__ivesli_5609, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), SAC_ND_PRF_ADD, SAC_ND_READ((SACp_emal_5848__ivesli_5607, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), SAC_ND_READ((SACp_emal_5846__ivesli_5609, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))
        SAC_ND_ALLOC_BEGIN((SACp_emal_5844__pinl_573__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 0, float)
        /*
         * ND_SET__SHAPE_arr( (SACp_emal_5844__pinl_573__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0)
         */
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5844__pinl_573__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == 0), 152, "Assignment with incompatible types found!");
        SAC_NOOP()

        SAC_ND_ALLOC_END((SACp_emal_5844__pinl_573__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 0, float)
        /*
         * ND_PRF_IDX_SEL__DATA( (SACp_emal_5844__pinl_573__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), -4, (SACp_emal_5846__ivesli_5609, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
         */
        SAC_TR_PRF_PRINT( ("ND_PRF_IDX_SEL__DATA( (SACp_emal_5844__pinl_573__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), -4, (SACp_emal_5846__ivesli_5609, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))"))
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5846__ivesli_5609, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 152, "1st argument of _idx_sel_ is not a scalar!");
        SAC_ND_WRITE_READ_COPY( (SACp_emal_5844__pinl_573__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), SAC_ND_READ( (SACp_emal_5846__ivesli_5609, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), )

        SAC_ND_FREE((SACp_emal_5846__ivesli_5609, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
        /*
         * WL_ASSIGN( (SACp_emal_5844__pinl_573__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -3, (SACp_hd_2_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACp_wlidx_5543__flat_106, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
         */
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5844__pinl_573__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == (SAC_ND_A_DIM( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) - SAC_ND_A_SIZE( (SACp_hd_2_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))))), 22, "WL expression with illegal dimension found!");
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SIZE( (SACp_emal_5844__pinl_573__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == SAC_WL_SHAPE_FACTOR( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0)), 22, "WL expression with illegal size found!");
        SAC_ND_WRITE_READ_COPY( (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), SAC_ND_READ( (SACp_wlidx_5543__flat_106, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), (SACp_emal_5844__pinl_573__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, );

        SAC_ND_FREE((SACp_emal_5844__pinl_573__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
        SAC_WL_INC_OFFSET((SACp_wlidx_5543__flat_106, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_emal_5844__pinl_573__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))))
        SAC_WL_GRID_UNROLL_END(0, (SACp_hd_2_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_eat_234, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, 1)
        SAC_WL_STRIDE_LOOP_END(0, (SACp_hd_2_index, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_eat_234, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, SAC_ND_READ((SACp_emal_5857__flat_43, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), 1)
        /*
         * MT_SCHEDULER_END( 0, 1, 0, SAC_ND_READ( (SACp_emal_5857__flat_43, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))
         */


        /*
         * WL_SCHEDULE__END( 1)
         */
      }

      SAC_PF_END_WITH(genarray)
      SAC_ND_LABEL(_comp_6823_SAC_label)
      SAC_ND_FREE((SACp_eat_234, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
      SAC_ND_FREE((SACp_wlidx_5543__flat_106, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
      SAC_ND_FREE((SACp_emal_5848__ivesli_5607, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
      SAC_ND_ALLOC_BEGIN((SACp_pinl_587__eat_238, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
      /*
       * ND_SET__SHAPE_arr( (SACp_pinl_587__eat_238, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
       */
      SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_pinl_587__eat_238, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 149, "Assignment with incompatible types found!");
      SAC_NOOP()

      SAC_ND_ALLOC_END((SACp_pinl_587__eat_238, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
      SAC_ND_ALLOC_BEGIN((SACp_wlidx_5544__pinl_586_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
      /*
       * ND_SET__SHAPE_arr( (SACp_wlidx_5544__pinl_586_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
       */
      SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_wlidx_5544__pinl_586_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 149, "Assignment with incompatible types found!");
      SAC_NOOP()

      SAC_ND_ALLOC_END((SACp_wlidx_5544__pinl_586_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
      SAC_PF_BEGIN_WITH(genarray)
      /*
       * WL_SCHEDULE__BEGIN( 1)
       */
      {
        int SAC_WL_MT_SCHEDULE_START( 0);
        int SAC_WL_MT_SCHEDULE_STOP( 0);

        /*
         * WL_DECLARE_SHAPE_FACTOR( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -3, (SACp_pinl_582_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1)
         */
        int SAC_WL_SHAPE_FACTOR( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0);

        /*
         * WL_DEFINE_SHAPE_FACTOR( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -3, (SACp_pinl_582_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1)
         */
        {
          int SAC_i;
          SAC_WL_SHAPE_FACTOR( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0) = 1;
        }

        /*
         * MT_SCHEDULER_BEGIN( 0, 1, 0, SAC_ND_READ( (SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))
         */
        SAC_WL_MT_SCHEDULE_START( 0) = 0;
        SAC_WL_MT_SCHEDULE_STOP( 0) = SAC_ND_READ( (SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0);

        /*
         * WL_INIT_OFFSET( (SACp_wlidx_5544__pinl_586_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -3, (SACp_pinl_582_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1)
         */
        SAC_ND_WRITE( (SACp_wlidx_5544__pinl_586_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
          = SAC_WL_MT_SCHEDULE_START( 0) * SAC_WL_SHAPE_FACTOR( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0);

        SAC_WL_STRIDE_LOOP0_BEGIN(0, (SACp_pinl_582_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_pinl_587__eat_238, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, SAC_ND_READ((SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), 1)
        SAC_WL_GRID_UNROLL_BEGIN(0, (SACp_pinl_582_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_pinl_587__eat_238, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, 1)
        SAC_ND_ALLOC_BEGIN((SACp_emal_5841__ivesli_5605, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
        /*
         * ND_SET__SHAPE_arr( (SACp_emal_5841__ivesli_5605, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
         */
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5841__ivesli_5605, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 149, "Assignment with incompatible types found!");
        SAC_NOOP()

        SAC_ND_ALLOC_END((SACp_emal_5841__ivesli_5605, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
        /*
         * ND_IDXS2OFFSET_arr( (SACp_emal_5841__ivesli_5605, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACp_pinl_587__eat_238, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, SAC_ND_READ( (SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))
         */
        SAC_ND_WRITE( (SACp_emal_5841__ivesli_5605, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = SAC_ND_READ( (SACp_pinl_587__eat_238, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0);

        SAC_ND_ALLOC_BEGIN((SACp_emal_5840__pinl_583__flat_1463, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 0, float)
        /*
         * ND_SET__SHAPE_arr( (SACp_emal_5840__pinl_583__flat_1463, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0)
         */
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5840__pinl_583__flat_1463, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == 0), 149, "Assignment with incompatible types found!");
        SAC_NOOP()

        SAC_ND_ALLOC_END((SACp_emal_5840__pinl_583__flat_1463, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 0, float)
        /*
         * ND_PRF_IDX_SEL__DATA( (SACp_emal_5840__pinl_583__flat_1463, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -3, (SACp_emal_5841__ivesli_5605, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
         */
        SAC_TR_PRF_PRINT( ("ND_PRF_IDX_SEL__DATA( (SACp_emal_5840__pinl_583__flat_1463, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -3, (SACp_emal_5841__ivesli_5605, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))"))
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5841__ivesli_5605, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 149, "1st argument of _idx_sel_ is not a scalar!");
        SAC_ND_WRITE_READ_COPY( (SACp_emal_5840__pinl_583__flat_1463, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), SAC_ND_READ( (SACp_emal_5841__ivesli_5605, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), )

        SAC_ND_ALLOC_BEGIN((SACp_emal_5839__pinl_584__flat_1462, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 0, float)
        /*
         * ND_SET__SHAPE_arr( (SACp_emal_5839__pinl_584__flat_1462, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0)
         */
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5839__pinl_584__flat_1462, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == 0), 149, "Assignment with incompatible types found!");
        SAC_NOOP()

        SAC_ND_ALLOC_END((SACp_emal_5839__pinl_584__flat_1462, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 0, float)
        /*
         * ND_PRF_IDX_SEL__DATA( (SACp_emal_5839__pinl_584__flat_1462, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -3, (SACp_emal_5841__ivesli_5605, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
         */
        SAC_TR_PRF_PRINT( ("ND_PRF_IDX_SEL__DATA( (SACp_emal_5839__pinl_584__flat_1462, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -3, (SACp_emal_5841__ivesli_5605, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))"))
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5841__ivesli_5605, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 149, "1st argument of _idx_sel_ is not a scalar!");
        SAC_ND_WRITE_READ_COPY( (SACp_emal_5839__pinl_584__flat_1462, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), SAC_ND_READ( (SACp_emal_5841__ivesli_5605, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), )

        SAC_ND_FREE((SACp_emal_5841__ivesli_5605, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
        SAC_ND_PRF_SxS__DATA((SACp_emal_5840__pinl_583__flat_1463, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), SAC_ND_PRF_MUL, SAC_ND_READ((SACp_emal_5840__pinl_583__flat_1463, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0), SAC_ND_READ((SACp_emal_5839__pinl_584__flat_1462, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0))
        SAC_ND_FREE((SACp_emal_5839__pinl_584__flat_1462, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
        /*
         * WL_ASSIGN( (SACp_emal_5840__pinl_583__flat_1463, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -3, (SACp_pinl_582_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACp_wlidx_5544__pinl_586_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
         */
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5840__pinl_583__flat_1463, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == (SAC_ND_A_DIM( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) - SAC_ND_A_SIZE( (SACp_pinl_582_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))))), 1, "WL expression with illegal dimension found!");
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SIZE( (SACp_emal_5840__pinl_583__flat_1463, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == SAC_WL_SHAPE_FACTOR( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0)), 1, "WL expression with illegal size found!");
        SAC_ND_WRITE_READ_COPY( (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), SAC_ND_READ( (SACp_wlidx_5544__pinl_586_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), (SACp_emal_5840__pinl_583__flat_1463, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, );

        SAC_ND_FREE((SACp_emal_5840__pinl_583__flat_1463, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
        SAC_WL_INC_OFFSET((SACp_wlidx_5544__pinl_586_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_emal_5840__pinl_583__flat_1463, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))))
        SAC_WL_GRID_UNROLL_END(0, (SACp_pinl_582_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_pinl_587__eat_238, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, 1)
        SAC_WL_STRIDE_LOOP_END(0, (SACp_pinl_582_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_pinl_587__eat_238, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, SAC_ND_READ((SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), 1)
        /*
         * MT_SCHEDULER_END( 0, 1, 0, SAC_ND_READ( (SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))
         */


        /*
         * WL_SCHEDULE__END( 1)
         */
      }

      SAC_PF_END_WITH(genarray)
      SAC_ND_LABEL(_comp_6824_SAC_label)
      SAC_ND_FREE((SACp_emal_5843__flat_106, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
      SAC_ND_FREE((SACp_pinl_587__eat_238, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
      SAC_ND_FREE((SACp_wlidx_5544__pinl_586_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
      SAC_ND_ALLOC_BEGIN((SACp_pinl_601__eat_237, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
      /*
       * ND_SET__SHAPE_arr( (SACp_pinl_601__eat_237, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
       */
      SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_pinl_601__eat_237, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 629, "Assignment with incompatible types found!");
      SAC_NOOP()

      SAC_ND_ALLOC_END((SACp_pinl_601__eat_237, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
      /*
       * ND_ASSIGN( (SACp_pinl_600_res, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_emal_5858__flat_61, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, )
       */
      SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_pinl_600_res, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == 0), 629, "Assignment with incompatible types found!");
      SAC_NOOP()
      SAC_NOOP()
      SAC_NOOP()
      SAC_ND_ASSIGN__DATA( (SACp_pinl_600_res, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), (SACp_emal_5858__flat_61, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )

      SAC_PF_BEGIN_WITH(fold)
      /*
       * WL_SCHEDULE__BEGIN( 1)
       */
      {
        int SAC_WL_MT_SCHEDULE_START( 0);
        int SAC_WL_MT_SCHEDULE_STOP( 0);

        /*
         * MT_SCHEDULER_BEGIN( 0, 1, 0, SAC_ND_READ( (SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))
         */
        SAC_WL_MT_SCHEDULE_START( 0) = 0;
        SAC_WL_MT_SCHEDULE_STOP( 0) = SAC_ND_READ( (SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0);

        SAC_WL_STRIDE_LOOP0_BEGIN(0, (SACp_pinl_598_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_pinl_601__eat_237, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, SAC_ND_READ((SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), 1)
        SAC_WL_GRID_UNROLL_BEGIN(0, (SACp_pinl_598_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_pinl_601__eat_237, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, 1)
        SAC_NOOP()
        SAC_ND_ALLOC_BEGIN((SACp_emal_5836__ivesli_5603, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
        /*
         * ND_SET__SHAPE_arr( (SACp_emal_5836__ivesli_5603, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
         */
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5836__ivesli_5603, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 629, "Assignment with incompatible types found!");
        SAC_NOOP()

        SAC_ND_ALLOC_END((SACp_emal_5836__ivesli_5603, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
        /*
         * ND_IDXS2OFFSET_arr( (SACp_emal_5836__ivesli_5603, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACp_pinl_601__eat_237, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, SAC_ND_READ( (SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))
         */
        SAC_ND_WRITE( (SACp_emal_5836__ivesli_5603, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = SAC_ND_READ( (SACp_pinl_601__eat_237, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0);

        SAC_ND_ALLOC_BEGIN((SACp_emal_5835__pinl_599__flat_3951, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 0, float)
        /*
         * ND_SET__SHAPE_arr( (SACp_emal_5835__pinl_599__flat_3951, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0)
         */
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5835__pinl_599__flat_3951, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == 0), 629, "Assignment with incompatible types found!");
        SAC_NOOP()

        SAC_ND_ALLOC_END((SACp_emal_5835__pinl_599__flat_3951, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 0, float)
        /*
         * ND_PRF_IDX_SEL__DATA( (SACp_emal_5835__pinl_599__flat_3951, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -3, (SACp_emal_5836__ivesli_5603, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
         */
        SAC_TR_PRF_PRINT( ("ND_PRF_IDX_SEL__DATA( (SACp_emal_5835__pinl_599__flat_3951, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -3, (SACp_emal_5836__ivesli_5603, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))"))
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5836__ivesli_5603, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 629, "1st argument of _idx_sel_ is not a scalar!");
        SAC_ND_WRITE_READ_COPY( (SACp_emal_5835__pinl_599__flat_3951, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), SAC_ND_READ( (SACp_emal_5836__ivesli_5603, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), )

        SAC_ND_FREE((SACp_emal_5836__ivesli_5603, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
        SAC_ND_PRF_SxS__DATA((SACp_emal_5835__pinl_599__flat_3951, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), SAC_ND_PRF_ADD, SAC_ND_READ((SACp_emal_5835__pinl_599__flat_3951, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0), SAC_ND_READ((SACp_pinl_600_res, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0))
        SAC_ND_DEC_RC_FREE((SACp_pinl_600_res, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, )
        /*
         * ND_ASSIGN( (SACp_pinl_600_res, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_emal_5835__pinl_599__flat_3951, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, )
         */
        SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_pinl_600_res, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == 0), 117, "Assignment with incompatible types found!");
        SAC_NOOP()
        SAC_NOOP()
        SAC_NOOP()
        SAC_ND_ASSIGN__DATA( (SACp_pinl_600_res, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), (SACp_emal_5835__pinl_599__flat_3951, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )

        /*
         * WL_FOLD( (SACp_pinl_600_res, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_pinl_598_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACp_pinl_601__eat_237, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
         */
        SAC_TR_WL_PRINT( ("index vector [%d] -- fold", SAC_ND_READ( (SACp_pinl_601__eat_237, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)));
        /* fold operation */

        SAC_WL_GRID_UNROLL_END(0, (SACp_pinl_598_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_pinl_601__eat_237, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, 1)
        SAC_WL_STRIDE_LOOP_END(0, (SACp_pinl_598_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_pinl_601__eat_237, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, SAC_ND_READ((SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), 1)
        /*
         * MT_SCHEDULER_END( 0, 1, 0, SAC_ND_READ( (SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))
         */


        /*
         * WL_SCHEDULE__END( 1)
         */
      }

      SAC_PF_END_WITH(fold)
      SAC_ND_LABEL(_comp_6825_SAC_label)
      SAC_ND_FREE((SACp_pinl_601__eat_237, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
      SAC_ND_FREE((SACp_emal_5849__flat_142, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
      /*
       * WL_ASSIGN( (SACp_pinl_600_res, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -4, (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2, (SACp_wlidx_5541_C, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
       */
      SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_pinl_600_res, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == (SAC_ND_A_DIM( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) - SAC_ND_A_SIZE( (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))))), 22, "WL expression with illegal dimension found!");
      SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SIZE( (SACp_pinl_600_res, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == SAC_WL_SHAPE_FACTOR( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1)), 22, "WL expression with illegal size found!");
      SAC_ND_WRITE_READ_COPY( (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), SAC_ND_READ( (SACp_wlidx_5541_C, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), (SACp_pinl_600_res, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, );

      SAC_ND_DEC_RC_FREE((SACp_pinl_600_res, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, )
      SAC_WL_INC_OFFSET((SACp_wlidx_5541_C, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_pinl_600_res, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))))
      SAC_WL_GRID_UNROLL_END(1, (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACl_n, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, 1)
      SAC_WL_STRIDE_LOOP_END(1, (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACl_n, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, SAC_ND_READ((SACp_emal_5862__flat_99, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), 1)
      SAC_WL_GRID_UNROLL_END(0, (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACl_m, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, 1)
      SAC_WL_STRIDE_LOOP_END(0, (SACp_flat_103, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACl_m, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, SAC_ND_READ((SACp_emal_5861__flat_95, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), 1)
      /*
       * MT_SCHEDULER_END( 0, 2, 0, 0, SAC_ND_READ( (SACp_emal_5861__flat_95, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), SAC_ND_READ( (SACp_emal_5862__flat_99, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))
       */


      /*
       * WL_SCHEDULE__END( 2)
       */
    }

    SAC_PF_END_WITH(genarray)
    SAC_ND_LABEL(_comp_6826_SAC_label)
    SAC_ND_FREE((SACp_emal_5862__flat_99, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_emal_5861__flat_95, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_emal_5863__flat_101, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_emal_5859__flat_75, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_emal_5858__flat_61, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    SAC_ND_FREE((SACp_emal_5857__flat_43, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACl_m, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACl_n, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_emal_5856__pinl_520__flat_1458, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    SAC_ND_FREE((SACp_emal_5865__isaa_1013_B, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_emal_5864__isaa_1016_A, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_wlidx_5541_C, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_DEC_RC_FREE((SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 1, )
    SAC_ND_DEC_RC_FREE((SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 1, )
    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), (SACp_emal_5833_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACf__MAIN__tmm__f_X_X__f_X_X, , 3, out, float, (SAC_arg_1, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, float, (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, float, (SACl_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * WITH-loop Count: 0
 * _MAIN::SACf__MAIN__main(...) [ body ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACf__MAIN__main, , 1, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACf__MAIN__main, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    /*
     * ND_DECL( (SACp_tcp_6821__emal_5870__flat_199, (AKD, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), unsigned char, -3)
     */
    SAC_ND_DECL__DATA( (SACp_tcp_6821__emal_5870__flat_199, (AKD, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), unsigned char, )
    SAC_ND_DECL__DESC( (SACp_tcp_6821__emal_5870__flat_199, (AKD, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), )
    int SAC_ND_A_MIRROR_SHAPE( (SACp_tcp_6821__emal_5870__flat_199, (AKD, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), 0);
    int SAC_ND_A_MIRROR_SIZE( (SACp_tcp_6821__emal_5870__flat_199, (AKD, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))));
    const int SAC_ND_A_MIRROR_DIM( (SACp_tcp_6821__emal_5870__flat_199, (AKD, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, ))))))))))) = 1;

    /*
     * ND_DECL( (SACp_tcp_6820__emal_5873_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, -4)
     */
    SAC_ND_DECL__DATA( (SACp_tcp_6820__emal_5873_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACp_tcp_6820__emal_5873_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    int SAC_ND_A_MIRROR_SHAPE( (SACp_tcp_6820__emal_5873_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0);
    int SAC_ND_A_MIRROR_SHAPE( (SACp_tcp_6820__emal_5873_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1);
    int SAC_ND_A_MIRROR_SIZE( (SACp_tcp_6820__emal_5873_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))));
    const int SAC_ND_A_MIRROR_DIM( (SACp_tcp_6820__emal_5873_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = 2;

    /*
     * ND_DECL( (SACp_tcp_6819__emal_5882_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, -4)
     */
    SAC_ND_DECL__DATA( (SACp_tcp_6819__emal_5882_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACp_tcp_6819__emal_5882_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    int SAC_ND_A_MIRROR_SHAPE( (SACp_tcp_6819__emal_5882_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0);
    int SAC_ND_A_MIRROR_SHAPE( (SACp_tcp_6819__emal_5882_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1);
    int SAC_ND_A_MIRROR_SIZE( (SACp_tcp_6819__emal_5882_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))));
    const int SAC_ND_A_MIRROR_DIM( (SACp_tcp_6819__emal_5882_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = 2;

    SAC_ND_DECL_CONST__DATA((SACp_emal_5892__isaa_1080__rso_219_TheWorld, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
    SAC_ND_DECL_CONST__DATA((SACp_emal_5891__flat_187, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 2147483647)
    /*
     * ND_DECL( (SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    SAC_NOTHING()

    SAC_ND_DECL_CONST__DATA((SACp_emal_5888__cnstass_5821_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
    SAC_ND_DECL_CONST__DATA((SACp_emal_5887__cnstass_5820_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
    SAC_ND_DECL_CONST__DATA((SACp_emal_5886__cnstass_5819_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 1024)
    SAC_ND_DECL_CONST__DATA((SACp_emal_5885__cnstass_5818_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 128)
    /*
     * ND_DECL( (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), float, 2, 128, 1024)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), )
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 0) = 128;
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 1) = 1024;
    const int SAC_ND_A_MIRROR_SIZE( (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))) = 131072;
    const int SAC_ND_A_MIRROR_DIM( (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))) = 2;

    /*
     * ND_DECL( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, 2, 128, 1024)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0) = 128;
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1) = 1024;
    const int SAC_ND_A_MIRROR_SIZE( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = 131072;
    const int SAC_ND_A_MIRROR_DIM( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = 2;

    /*
     * ND_DECL( (SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    SAC_NOTHING()

    SAC_ND_DECL_CONST__DATA((SACp_emal_5879__cnstass_5817_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
    SAC_ND_DECL_CONST__DATA((SACp_emal_5878__cnstass_5816_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
    SAC_ND_DECL_CONST__DATA((SACp_emal_5877__cnstass_5815_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 1024)
    SAC_ND_DECL_CONST__DATA((SACp_emal_5876__cnstass_5814_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 1024)
    /*
     * ND_DECL( (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), float, 2, 1024, 1024)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), )
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 0) = 1024;
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 1) = 1024;
    const int SAC_ND_A_MIRROR_SIZE( (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))) = 1048576;
    const int SAC_ND_A_MIRROR_DIM( (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))) = 2;

    /*
     * ND_DECL( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, 2, 1024, 1024)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0) = 1024;
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1) = 1024;
    const int SAC_ND_A_MIRROR_SIZE( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = 1048576;
    const int SAC_ND_A_MIRROR_DIM( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = 2;

    SAC_ND_DECL_CONST__DATA((SACp_emal_5872__flat_207, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 2)
    SAC_ND_DECL_CONST__DATA((SACp_emal_5871__flat_205, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 4)
    /*
     * ND_DECL( (SACp_emal_5870__flat_199, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), unsigned char, 1, 5)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5870__flat_199, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), unsigned char, )
    SAC_ND_DECL__DESC( (SACp_emal_5870__flat_199, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), )
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5870__flat_199, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), 0) = 5;
    const int SAC_ND_A_MIRROR_SIZE( (SACp_emal_5870__flat_199, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, ))))))))))) = 5;
    const int SAC_ND_A_MIRROR_DIM( (SACp_emal_5870__flat_199, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, ))))))))))) = 1;

    /*
     * ND_DECL( (SACp_emal_5869__isaa_1147_C, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 1, 2)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5869__isaa_1147_C, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_emal_5869__isaa_1147_C, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_emal_5869__isaa_1147_C, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = 2;
    const int SAC_ND_A_MIRROR_SIZE( (SACp_emal_5869__isaa_1147_C, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 2;
    const int SAC_ND_A_MIRROR_DIM( (SACp_emal_5869__isaa_1147_C, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 1;

    /*
     * ND_DECL( (SACp_emal_5868__ivesli_5617, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5868__ivesli_5617, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_emal_5868__ivesli_5617, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_emal_5867__pinl_653__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5867__pinl_653__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACp_emal_5867__pinl_653__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_emal_5866__pinl_656__flat_252, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_5866__pinl_656__flat_252, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_emal_5866__pinl_656__flat_252, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_wlidx_5546_B, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_wlidx_5546_B, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_wlidx_5546_B, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_wlidx_5545_A, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_wlidx_5545_A, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_wlidx_5545_A, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_pinl_615__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_pinl_615__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_pinl_615__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_pinl_614__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_pinl_614__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_pinl_614__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 1, 2)
     */
    SAC_ND_DECL__DATA( (SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = 2;
    const int SAC_ND_A_MIRROR_SIZE( (SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 2;
    const int SAC_ND_A_MIRROR_DIM( (SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 1;

    /*
     * ND_DECL( (SACp_pinl_632__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_pinl_632__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_pinl_632__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_pinl_631__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_pinl_631__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_pinl_631__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 1, 2)
     */
    SAC_ND_DECL__DATA( (SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = 2;
    const int SAC_ND_A_MIRROR_SIZE( (SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 2;
    const int SAC_ND_A_MIRROR_DIM( (SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 1;

    /*
     * ND_DECL( (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, -4)
     */
    SAC_ND_DECL__DATA( (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, )
    SAC_ND_DECL__DESC( (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    int SAC_ND_A_MIRROR_SHAPE( (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0);
    int SAC_ND_A_MIRROR_SHAPE( (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1);
    int SAC_ND_A_MIRROR_SIZE( (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))));
    const int SAC_ND_A_MIRROR_DIM( (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = 2;

    /*
     * ND_DECL( (SACl_interval, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SACt_Interval__Interval, 0)
     */
    SAC_ND_DECL__DATA( (SACl_interval, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SACt_Interval__Interval, )
    SAC_ND_DECL__DESC( (SACl_interval, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_flat_198, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SACt_String__string, 0)
     */
    SAC_ND_DECL__DATA( (SACp_flat_198, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SACt_String__string, )
    SAC_ND_DECL__DESC( (SACp_flat_198, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_flat_193, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_flat_193, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_flat_193, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_flat_183, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_flat_183, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_flat_183, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()


    SAC_INIT_LOCAL_MEM()
    /*
     * ND_FUN_AP( SACf__MAIN_CL_INIT__init, , 0)
     */
    SAC_ND_FUNAP2( SACf__MAIN_CL_INIT__init, )

    /*
     * ND_FUN_AP( SACrandom, SACp_flat_183, 2, in_nodesc, int, SAC_SET_NT_USG( FAG, (SACp_emal_5892__isaa_1080__rso_219_TheWorld, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), in_nodesc, int, SAC_SET_NT_USG( FAG, (SACp_emal_5891__flat_187, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))))
     */
    SACp_flat_183 = SACrandom( SAC_ND_ARG_in_nodesc( SAC_SET_NT_USG( FAG, (SACp_emal_5892__isaa_1080__rso_219_TheWorld, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int), SAC_ND_ARG_in_nodesc( SAC_SET_NT_USG( FAG, (SACp_emal_5891__flat_187, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int));

    SAC_ND_ALLOC__DESC((SACp_flat_183, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
    /*
     * ND_REFRESH__MIRROR( (SACp_flat_183, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
     */
    SAC_NOOP()

    SAC_ND_SET__RC((SACp_flat_183, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1)
    SAC_ND_ALLOC_BEGIN((SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 0, float)
    /*
     * ND_SET__SHAPE_arr( (SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == 0), 306, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 0, float)
    SAC_ND_PRF_S__DATA((SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), SAC_ND_PRF_TOF, SAC_ND_READ((SACp_flat_183, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))
    SAC_ND_DEC_RC_FREE((SACp_flat_183, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, )
    SAC_ND_PRF_SxS__DATA((SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), SAC_ND_PRF_DIV, SAC_ND_READ((SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0), 2147483648.0f)
    SAC_CUDA_ALLOC_BEGIN((SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 1, 2, float)
    /*
     * ND_SET__SHAPE_arr( (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 2, 128, 1024)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))) == 2), 222, "Assignment with incompatible types found!");
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SHAPE( (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 0) == 128), 222, "Assignment with incompatible types found!");
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SHAPE( (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 1) == 1024), 222, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_CUDA_ALLOC_END((SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 1, 2, float)
    SAC_ND_ALLOC_BEGIN((SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 1, int)
    /*
     * ND_SET__SHAPE_arr( (SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 2)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 1), 222, "Assignment with incompatible types found!");
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SHAPE( (SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) == 2), 222, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 1, int)
    SAC_ND_ALLOC_BEGIN((SACp_pinl_615__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    /*
     * ND_SET__SHAPE_arr( (SACp_pinl_615__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_pinl_615__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 222, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_pinl_615__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    SAC_ND_ALLOC_BEGIN((SACp_pinl_614__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    /*
     * ND_SET__SHAPE_arr( (SACp_pinl_614__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_pinl_614__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 222, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_pinl_614__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    SAC_ND_ALLOC_BEGIN((SACp_wlidx_5545_A, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    /*
     * ND_SET__SHAPE_arr( (SACp_wlidx_5545_A, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_wlidx_5545_A, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 222, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_wlidx_5545_A, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    /*
     * CUDA_GRID_BLOCK( 6, SAC_ND_READ( (SACp_emal_5886__cnstass_5819_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), SAC_ND_READ( (SACp_emal_5885__cnstass_5818_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), SAC_ND_READ( (SACp_emal_5888__cnstass_5821_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), SAC_ND_READ( (SACp_emal_5887__cnstass_5820_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), 16, 16)
     */
    {
        dim3 grid((SAC_ND_READ( (SACp_emal_5886__cnstass_5819_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)-SAC_ND_READ( (SACp_emal_5888__cnstass_5821_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))/16+1, (SAC_ND_READ( (SACp_emal_5885__cnstass_5818_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)-SAC_ND_READ( (SACp_emal_5887__cnstass_5820_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))/16+1);
        if (grid.x > 2147483647 || grid.y > 65535 || grid.z > 65535) {
            SAC_RuntimeError("CUDA XYZ grid dimension exceeds compute compatibilities max value: 2147483647 x 65535 x 65535");
        }
        dim3 block(16, 16);        if (block.x > 2147483647 || block.y > 65535 || block.z > 65535) {
            SAC_RuntimeError("CUDA XYZ block dimension exceeds compute compatibilities max value: 2147483647 x 65535 x 65535");
        }
        
    /*
     * CUDA_GLOBALFUN_AP( SACf__MAIN___cuknl_6817_CUDA__i__i__i__i__fd_128_1024__f, 6, in, float, 0, SAC_SET_NT_USG( FAG, (SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))), inout, float, 2, SAC_SET_NT_USG( FAG, (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))), in, int, 0, SAC_SET_NT_USG( FAG, (SACp_emal_5886__cnstass_5819_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), in, int, 0, SAC_SET_NT_USG( FAG, (SACp_emal_5885__cnstass_5818_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), in, int, 0, SAC_SET_NT_USG( FAG, (SACp_emal_5888__cnstass_5821_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), in, int, 0, SAC_SET_NT_USG( FAG, (SACp_emal_5887__cnstass_5820_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))))
     */
        SACf__MAIN___cuknl_6817_CUDA__i__i__i__i__fd_128_1024__f<<<grid, block>>>(    SAC_CUDA_ARG_in( SAC_SET_NT_USG( FAG, (SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))), float),     SAC_CUDA_ARG_inout( SAC_SET_NT_USG( FAG, (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))), float), SAC_ND_A_MIRROR_SHAPE(SAC_SET_NT_USG( FAG, (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))), 0), SAC_ND_A_MIRROR_SHAPE(SAC_SET_NT_USG( FAG, (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))), 1), SAC_ND_A_MIRROR_SIZE(SAC_SET_NT_USG( FAG, (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))))), SAC_ND_A_MIRROR_DIM(SAC_SET_NT_USG( FAG, (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))))),     SAC_CUDA_ARG_in( SAC_SET_NT_USG( FAG, (SACp_emal_5886__cnstass_5819_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int),     SAC_CUDA_ARG_in( SAC_SET_NT_USG( FAG, (SACp_emal_5885__cnstass_5818_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int),     SAC_CUDA_ARG_in( SAC_SET_NT_USG( FAG, (SACp_emal_5888__cnstass_5821_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int),     SAC_CUDA_ARG_in( SAC_SET_NT_USG( FAG, (SACp_emal_5887__cnstass_5820_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int));
SAC_CUDA_GET_LAST_KERNEL_ERROR();
    }

    /*
     * ND_REFRESH__MIRROR( (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 2)
     */
    SAC_NOOP()

    SAC_ND_FREE((SACp_emal_5886__cnstass_5819_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_emal_5885__cnstass_5818_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_emal_5888__cnstass_5821_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_emal_5887__cnstass_5820_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_pinl_614__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_pinl_615__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    SAC_ND_FREE((SACp_wlidx_5545_A, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_ALLOC_BEGIN((SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 2, float)
    /*
     * ND_SET__SHAPE_arr( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 2, 128, 1024)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == 2), 222, "Assignment with incompatible types found!");
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SHAPE( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0) == 128), 222, "Assignment with incompatible types found!");
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SHAPE( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1) == 1024), 222, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 2, float)
    /*
     * CUDA_MEM_TRANSFER( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), float, cudaMemcpyDeviceToHost)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SIZE( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == SAC_ND_A_SIZE( (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))))), 222, "cudaMemcpy: Destionation and source arrays should have equal sizes!");
    SAC_CUDA_MEM_TRANSFER((SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), float, cudaMemcpyDeviceToHost)
    SAC_CUDA_FREE((SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), )
    /*
     * ND_FUN_AP( SACrandom, SACp_flat_193, 2, in_nodesc, int, SAC_SET_NT_USG( FAG, (SACp_emal_5892__isaa_1080__rso_219_TheWorld, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), in_nodesc, int, SAC_SET_NT_USG( FAG, (SACp_emal_5891__flat_187, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))))
     */
    SACp_flat_193 = SACrandom( SAC_ND_ARG_in_nodesc( SAC_SET_NT_USG( FAG, (SACp_emal_5892__isaa_1080__rso_219_TheWorld, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int), SAC_ND_ARG_in_nodesc( SAC_SET_NT_USG( FAG, (SACp_emal_5891__flat_187, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int));

    SAC_ND_ALLOC__DESC((SACp_flat_193, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
    /*
     * ND_REFRESH__MIRROR( (SACp_flat_193, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
     */
    SAC_NOOP()

    SAC_ND_SET__RC((SACp_flat_193, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1)
    SAC_ND_DEC_RC_FREE((SACp_emal_5891__flat_187, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, )
    SAC_ND_ALLOC_BEGIN((SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 0, float)
    /*
     * ND_SET__SHAPE_arr( (SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == 0), 306, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 0, float)
    SAC_ND_PRF_S__DATA((SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), SAC_ND_PRF_TOF, SAC_ND_READ((SACp_flat_193, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))
    SAC_ND_DEC_RC_FREE((SACp_flat_193, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, )
    SAC_ND_PRF_SxS__DATA((SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), SAC_ND_PRF_DIV, SAC_ND_READ((SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0), 2147483648.0f)
    SAC_CUDA_ALLOC_BEGIN((SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 1, 2, float)
    /*
     * ND_SET__SHAPE_arr( (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 2, 1024, 1024)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))) == 2), 222, "Assignment with incompatible types found!");
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SHAPE( (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 0) == 1024), 222, "Assignment with incompatible types found!");
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SHAPE( (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 1) == 1024), 222, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_CUDA_ALLOC_END((SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 1, 2, float)
    SAC_ND_ALLOC_BEGIN((SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 1, int)
    /*
     * ND_SET__SHAPE_arr( (SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 2)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 1), 222, "Assignment with incompatible types found!");
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SHAPE( (SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) == 2), 222, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 1, int)
    SAC_ND_ALLOC_BEGIN((SACp_pinl_632__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    /*
     * ND_SET__SHAPE_arr( (SACp_pinl_632__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_pinl_632__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 222, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_pinl_632__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    SAC_ND_ALLOC_BEGIN((SACp_pinl_631__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    /*
     * ND_SET__SHAPE_arr( (SACp_pinl_631__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_pinl_631__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 222, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_pinl_631__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    SAC_ND_ALLOC_BEGIN((SACp_wlidx_5546_B, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    /*
     * ND_SET__SHAPE_arr( (SACp_wlidx_5546_B, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_wlidx_5546_B, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 222, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_wlidx_5546_B, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    /*
     * CUDA_GRID_BLOCK( 6, SAC_ND_READ( (SACp_emal_5877__cnstass_5815_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), SAC_ND_READ( (SACp_emal_5876__cnstass_5814_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), SAC_ND_READ( (SACp_emal_5879__cnstass_5817_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), SAC_ND_READ( (SACp_emal_5878__cnstass_5816_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), 16, 16)
     */
    {
        dim3 grid((SAC_ND_READ( (SACp_emal_5877__cnstass_5815_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)-SAC_ND_READ( (SACp_emal_5879__cnstass_5817_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))/16+1, (SAC_ND_READ( (SACp_emal_5876__cnstass_5814_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)-SAC_ND_READ( (SACp_emal_5878__cnstass_5816_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))/16+1);
        if (grid.x > 2147483647 || grid.y > 65535 || grid.z > 65535) {
            SAC_RuntimeError("CUDA XYZ grid dimension exceeds compute compatibilities max value: 2147483647 x 65535 x 65535");
        }
        dim3 block(16, 16);        if (block.x > 2147483647 || block.y > 65535 || block.z > 65535) {
            SAC_RuntimeError("CUDA XYZ block dimension exceeds compute compatibilities max value: 2147483647 x 65535 x 65535");
        }
        
    /*
     * CUDA_GLOBALFUN_AP( SACf__MAIN___cuknl_6818_CUDA__i__i__i__i__fd_1024_1024__f, 6, in, float, 0, SAC_SET_NT_USG( FAG, (SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))), inout, float, 2, SAC_SET_NT_USG( FAG, (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))), in, int, 0, SAC_SET_NT_USG( FAG, (SACp_emal_5877__cnstass_5815_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), in, int, 0, SAC_SET_NT_USG( FAG, (SACp_emal_5876__cnstass_5814_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), in, int, 0, SAC_SET_NT_USG( FAG, (SACp_emal_5879__cnstass_5817_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), in, int, 0, SAC_SET_NT_USG( FAG, (SACp_emal_5878__cnstass_5816_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))))
     */
        SACf__MAIN___cuknl_6818_CUDA__i__i__i__i__fd_1024_1024__f<<<grid, block>>>(    SAC_CUDA_ARG_in( SAC_SET_NT_USG( FAG, (SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))), float),     SAC_CUDA_ARG_inout( SAC_SET_NT_USG( FAG, (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))), float), SAC_ND_A_MIRROR_SHAPE(SAC_SET_NT_USG( FAG, (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))), 0), SAC_ND_A_MIRROR_SHAPE(SAC_SET_NT_USG( FAG, (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))), 1), SAC_ND_A_MIRROR_SIZE(SAC_SET_NT_USG( FAG, (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))))), SAC_ND_A_MIRROR_DIM(SAC_SET_NT_USG( FAG, (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))))),     SAC_CUDA_ARG_in( SAC_SET_NT_USG( FAG, (SACp_emal_5877__cnstass_5815_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int),     SAC_CUDA_ARG_in( SAC_SET_NT_USG( FAG, (SACp_emal_5876__cnstass_5814_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int),     SAC_CUDA_ARG_in( SAC_SET_NT_USG( FAG, (SACp_emal_5879__cnstass_5817_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int),     SAC_CUDA_ARG_in( SAC_SET_NT_USG( FAG, (SACp_emal_5878__cnstass_5816_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int));
SAC_CUDA_GET_LAST_KERNEL_ERROR();
    }

    /*
     * ND_REFRESH__MIRROR( (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 2)
     */
    SAC_NOOP()

    SAC_ND_FREE((SACp_emal_5877__cnstass_5815_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_emal_5876__cnstass_5814_ub, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_emal_5879__cnstass_5817_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_emal_5878__cnstass_5816_lb, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_pinl_631__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_pinl_632__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    SAC_ND_FREE((SACp_wlidx_5546_B, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_ALLOC_BEGIN((SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 2, float)
    /*
     * ND_SET__SHAPE_arr( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 2, 1024, 1024)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == 2), 222, "Assignment with incompatible types found!");
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SHAPE( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0) == 1024), 222, "Assignment with incompatible types found!");
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SHAPE( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1) == 1024), 222, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1, 2, float)
    /*
     * CUDA_MEM_TRANSFER( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), float, cudaMemcpyDeviceToHost)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SIZE( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == SAC_ND_A_SIZE( (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))))), 222, "cudaMemcpy: Destionation and source arrays should have equal sizes!");
    SAC_CUDA_MEM_TRANSFER((SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), float, cudaMemcpyDeviceToHost)
    SAC_CUDA_FREE((SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), )
    SAC_ND_ALLOC_BEGIN((SACp_emal_5870__flat_199, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), 1, 1, unsigned char)
    /*
     * ND_SET__SHAPE_arr( (SACp_emal_5870__flat_199, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), 1, 5)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5870__flat_199, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, ))))))))))) == 1), 1, "Assignment with incompatible types found!");
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SHAPE( (SACp_emal_5870__flat_199, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), 0) == 5), 1, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_emal_5870__flat_199, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), 1, 1, unsigned char)
    SAC_ND_CREATE__STRING__DATA((SACp_emal_5870__flat_199, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), "work")
    /*
     * ND_ASSIGN( (SACp_tcp_6821__emal_5870__flat_199, (AKD, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), -3, (SACp_emal_5870__flat_199, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), 1, )
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_tcp_6821__emal_5870__flat_199, (AKD, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, ))))))))))) == 1), 38, "Assignment with incompatible types found!");
    SAC_ND_A_DESC( (SACp_tcp_6821__emal_5870__flat_199, (AKD, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, ))))))))))) = SAC_ND_A_DESC( (SACp_emal_5870__flat_199, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))));
    SAC_ND_A_MIRROR_SHAPE( (SACp_tcp_6821__emal_5870__flat_199, (AKD, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), 0) = SAC_ND_A_SHAPE( (SACp_emal_5870__flat_199, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), 0);
    SAC_ND_A_MIRROR_SIZE( (SACp_tcp_6821__emal_5870__flat_199, (AKD, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, ))))))))))) = SAC_ND_A_SIZE( (SACp_emal_5870__flat_199, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))));
    SAC_ND_A_DESC_SHAPE( (SACp_tcp_6821__emal_5870__flat_199, (AKD, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), 0) = SAC_ND_A_SHAPE( (SACp_emal_5870__flat_199, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), 0);
    SAC_ND_A_DESC_SIZE( (SACp_tcp_6821__emal_5870__flat_199, (AKD, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, ))))))))))) = SAC_ND_A_SIZE( (SACp_emal_5870__flat_199, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))));
    SAC_ND_ASSIGN__DATA( (SACp_tcp_6821__emal_5870__flat_199, (AKD, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), (SACp_emal_5870__flat_199, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, )))))))))), )

    /*
     * ND_FUN_AP( to_string, , 3, out, SACt_String__string, SAC_SET_NT_USG( FAG, (SACp_flat_198, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))), in, unsigned char, SAC_SET_NT_USG( FAG, (SACp_tcp_6821__emal_5870__flat_199, (AKD, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, ))))))))))), in_nodesc, int, SAC_SET_NT_USG( FAG, (SACp_emal_5871__flat_205, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))))
     */
    SAC_ND_FUNAP2( to_string,  SAC_ND_ARG_out( SAC_SET_NT_USG( FAG, (SACp_flat_198, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))), SACt_String__string), SAC_ND_ARG_in( SAC_SET_NT_USG( FAG, (SACp_tcp_6821__emal_5870__flat_199, (AKD, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (UCH, ))))))))))), unsigned char), SAC_ND_ARG_in_nodesc( SAC_SET_NT_USG( FAG, (SACp_emal_5871__flat_205, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int))

    /*
     * ND_REFRESH__MIRROR( (SACp_flat_198, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 0)
     */
    SAC_NOOP()

    SAC_ND_DEC_RC_FREE((SACp_emal_5871__flat_205, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, )
    /*
     * ND_FUN_AP( SACf_C99Benchmarking__getInterval__SACt_String__string__i__i, , 4, out, SACt_Interval__Interval, SAC_SET_NT_USG( FAG, (SACl_interval, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))), in, SACt_String__string, SAC_SET_NT_USG( FAG, (SACp_flat_198, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))), in, int, SAC_SET_NT_USG( FAG, (SACp_emal_5892__isaa_1080__rso_219_TheWorld, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), in, int, SAC_SET_NT_USG( FAG, (SACp_emal_5872__flat_207, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf_C99Benchmarking__getInterval__SACt_String__string__i__i,  SAC_ND_ARG_out( SAC_SET_NT_USG( FAG, (SACl_interval, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))), SACt_Interval__Interval), SAC_ND_ARG_in( SAC_SET_NT_USG( FAG, (SACp_flat_198, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))), SACt_String__string), SAC_ND_ARG_in( SAC_SET_NT_USG( FAG, (SACp_emal_5892__isaa_1080__rso_219_TheWorld, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int), SAC_ND_ARG_in( SAC_SET_NT_USG( FAG, (SACp_emal_5872__flat_207, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int))

    /*
     * ND_REFRESH__MIRROR( (SACl_interval, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 0)
     */
    SAC_NOOP()

    /*
     * ND_FUN_AP( SACf_C99Benchmarking__start__SACt_C99Benchmarking__Interval, , 1, inout, SACt_Interval__Interval, SAC_SET_NT_USG( FAG, (SACl_interval, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf_C99Benchmarking__start__SACt_C99Benchmarking__Interval,  SAC_ND_ARG_inout( SAC_SET_NT_USG( FAG, (SACl_interval, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))), SACt_Interval__Interval))

    /*
     * ND_ASSIGN( (SACp_tcp_6820__emal_5873_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -4, (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 2, )
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_tcp_6820__emal_5873_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == 2), 41, "Assignment with incompatible types found!");
    SAC_ND_A_DESC( (SACp_tcp_6820__emal_5873_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = SAC_ND_A_DESC( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))));
    SAC_ND_A_MIRROR_SHAPE( (SACp_tcp_6820__emal_5873_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0) = SAC_ND_A_SHAPE( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0);
    SAC_ND_A_MIRROR_SHAPE( (SACp_tcp_6820__emal_5873_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1) = SAC_ND_A_SHAPE( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1);
    SAC_ND_A_MIRROR_SIZE( (SACp_tcp_6820__emal_5873_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = SAC_ND_A_SIZE( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))));
    SAC_ND_A_DESC_SHAPE( (SACp_tcp_6820__emal_5873_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0) = SAC_ND_A_SHAPE( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0);
    SAC_ND_A_DESC_SHAPE( (SACp_tcp_6820__emal_5873_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1) = SAC_ND_A_SHAPE( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1);
    SAC_ND_A_DESC_SIZE( (SACp_tcp_6820__emal_5873_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = SAC_ND_A_SIZE( (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))));
    SAC_ND_ASSIGN__DATA( (SACp_tcp_6820__emal_5873_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), (SACp_emal_5873_B, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )

    /*
     * ND_ASSIGN( (SACp_tcp_6819__emal_5882_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -4, (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 2, )
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_tcp_6819__emal_5882_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) == 2), 41, "Assignment with incompatible types found!");
    SAC_ND_A_DESC( (SACp_tcp_6819__emal_5882_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = SAC_ND_A_DESC( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))));
    SAC_ND_A_MIRROR_SHAPE( (SACp_tcp_6819__emal_5882_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0) = SAC_ND_A_SHAPE( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0);
    SAC_ND_A_MIRROR_SHAPE( (SACp_tcp_6819__emal_5882_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1) = SAC_ND_A_SHAPE( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1);
    SAC_ND_A_MIRROR_SIZE( (SACp_tcp_6819__emal_5882_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = SAC_ND_A_SIZE( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))));
    SAC_ND_A_DESC_SHAPE( (SACp_tcp_6819__emal_5882_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0) = SAC_ND_A_SHAPE( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0);
    SAC_ND_A_DESC_SHAPE( (SACp_tcp_6819__emal_5882_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1) = SAC_ND_A_SHAPE( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1);
    SAC_ND_A_DESC_SIZE( (SACp_tcp_6819__emal_5882_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = SAC_ND_A_SIZE( (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))));
    SAC_ND_ASSIGN__DATA( (SACp_tcp_6819__emal_5882_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), (SACp_emal_5882_A, (AKS, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )

    /*
     * ND_FUN_AP( SACf__MAIN__tmm__f_X_X__f_X_X, , 3, out, float, SAC_SET_NT_USG( FAG, (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))), in, float, SAC_SET_NT_USG( FAG, (SACp_tcp_6819__emal_5882_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))), in, float, SAC_SET_NT_USG( FAG, (SACp_tcp_6820__emal_5873_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf__MAIN__tmm__f_X_X__f_X_X,  SAC_ND_ARG_out( SAC_SET_NT_USG( FAG, (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))), float), SAC_ND_ARG_in( SAC_SET_NT_USG( FAG, (SACp_tcp_6819__emal_5882_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))), float), SAC_ND_ARG_in( SAC_SET_NT_USG( FAG, (SACp_tcp_6820__emal_5873_B, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))), float))

    /*
     * ND_REFRESH__MIRROR( (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -4)
     */
    SAC_ND_A_MIRROR_SHAPE( (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0) = SAC_ND_A_DESC_SHAPE( (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0);
    SAC_ND_A_MIRROR_SHAPE( (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1) = SAC_ND_A_DESC_SHAPE( (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1);
    SAC_ND_A_MIRROR_SIZE( (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, ))))))))))) = SAC_ND_A_DESC_SIZE( (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))));

    SAC_ND_ALLOC_BEGIN((SACp_emal_5869__isaa_1147_C, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 1, int)
    /*
     * ND_SET__SHAPE_arr( (SACp_emal_5869__isaa_1147_C, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 2)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5869__isaa_1147_C, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 1), 41, "Assignment with incompatible types found!");
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SHAPE( (SACp_emal_5869__isaa_1147_C, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) == 2), 41, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_emal_5869__isaa_1147_C, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 1, int)
    /*
     * ND_PRF_SHAPE_A__DATA( (SACp_emal_5869__isaa_1147_C, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -4)
     */
    SAC_TR_PRF_PRINT( ("ND_PRF_SHAPE_A__DATA( (SACp_emal_5869__isaa_1147_C, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -4)"))
    SAC_ND_WRITE_COPY( (SACp_emal_5869__isaa_1147_C, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, SAC_ND_A_SHAPE( (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0), );
    SAC_ND_WRITE_COPY( (SACp_emal_5869__isaa_1147_C, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, SAC_ND_A_SHAPE( (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 1), );

    /*
     * ND_FUN_AP( SACf_C99Benchmarking__end__SACt_C99Benchmarking__Interval, , 1, inout, SACt_Interval__Interval, SAC_SET_NT_USG( FAG, (SACl_interval, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf_C99Benchmarking__end__SACt_C99Benchmarking__Interval,  SAC_ND_ARG_inout( SAC_SET_NT_USG( FAG, (SACl_interval, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))), SACt_Interval__Interval))

    /*
     * ND_FUN_AP( SACf_C99Benchmarking__printResult__SACt_C99Benchmarking__Interval, , 1, inout, SACt_Interval__Interval, SAC_SET_NT_USG( FAG, (SACl_interval, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf_C99Benchmarking__printResult__SACt_C99Benchmarking__Interval,  SAC_ND_ARG_inout( SAC_SET_NT_USG( FAG, (SACl_interval, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))), SACt_Interval__Interval))

    SAC_ND_DEC_RC_FREE((SACl_interval, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 1, )
    /*
     * ND_IDXS2OFFSET_id( (SACp_emal_5868__ivesli_5617, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2, (SACp_emal_5892__isaa_1080__rso_219_TheWorld, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_emal_5892__isaa_1080__rso_219_TheWorld, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2, (SACp_emal_5869__isaa_1147_C, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
     */
    SAC_ND_WRITE( (SACp_emal_5868__ivesli_5617, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = ( SAC_ND_READ( (SACp_emal_5869__isaa_1147_C, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1) * SAC_ND_READ( (SACp_emal_5892__isaa_1080__rso_219_TheWorld, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) + SAC_ND_READ( (SACp_emal_5892__isaa_1080__rso_219_TheWorld, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) );

    SAC_ND_DEC_RC_FREE((SACp_emal_5892__isaa_1080__rso_219_TheWorld, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, )
    SAC_ND_FREE((SACp_emal_5869__isaa_1147_C, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    /*
     * ND_PRF_IDX_SEL__DATA( (SACp_emal_5867__pinl_653__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -4, (SACp_emal_5868__ivesli_5617, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
     */
    SAC_TR_PRF_PRINT( ("ND_PRF_IDX_SEL__DATA( (SACp_emal_5867__pinl_653__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), -4, (SACp_emal_5868__ivesli_5617, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))"))
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_5868__ivesli_5617, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 152, "1st argument of _idx_sel_ is not a scalar!");
    SAC_ND_WRITE_READ_COPY( (SACp_emal_5867__pinl_653__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0, (SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), SAC_ND_READ( (SACp_emal_5868__ivesli_5617, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), )

    SAC_ND_FREE((SACl_C, (AKD, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    SAC_ND_FREE((SACp_emal_5868__ivesli_5617, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_PRF_S__DATA((SACp_emal_5866__pinl_656__flat_252, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), SAC_ND_PRF_TOI, SAC_ND_READ((SACp_emal_5867__pinl_653__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), 0))
    SAC_ND_FREE((SACp_emal_5867__pinl_653__flat_140, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), )
    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), (SACp_emal_5866__pinl_656__flat_252, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), (SACp_emal_5866__pinl_656__flat_252, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACf__MAIN__main, , 1, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * WITH-loop Count: 0
 * _MAIN:_INIT::SACf__MAIN_CL_INIT__init(...) [ body ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACf__MAIN_CL_INIT__init, , 0)
 */
SAC_ND_DEF_FUN_BEGIN2( SACf__MAIN_CL_INIT__init, void, void)
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    SAC_INIT_LOCAL_MEM()
    /*
     * ND_FUN_AP( SACf_World_CL_INIT__init_TheWorld__SACt_World__World, , 1, inout, SACt_World__World, SAC_SET_NT_USG( TFA, (SACo_World__TheWorld, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, ))))))))))
     */
    SAC_ND_FUNAP2( SACf_World_CL_INIT__init_TheWorld__SACt_World__World,  SAC_ND_ARG_inout( SAC_SET_NT_USG( TFA, (SACo_World__TheWorld, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, ))))))))), SACt_World__World))

    /*
     * ND_FUN_AP( SACf_C99Benchmarking_CL_INIT__init_TheBenchmarkObject__SACt_C99Benchmarking__C99Benchmarking, , 1, inout, SACt_C99Benchmarking__C99Benchmarking, SAC_SET_NT_USG( TFA, (SACo_C99Benchmarking__TheBenchmarkObject, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, ))))))))))
     */
    SAC_ND_FUNAP2( SACf_C99Benchmarking_CL_INIT__init_TheBenchmarkObject__SACt_C99Benchmarking__C99Benchmarking,  SAC_ND_ARG_inout( SAC_SET_NT_USG( TFA, (SACo_C99Benchmarking__TheBenchmarkObject, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, ))))))))), SACt_C99Benchmarking__C99Benchmarking))

    /*
     * ND_FUN_AP( SACf_MTClock_CL_INIT__init_TheMTClock__SACt_MTClock__MTClock, , 1, inout, SACt_MTClock__MTClock, SAC_SET_NT_USG( TFA, (SACo_MTClock__TheMTClock, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, ))))))))))
     */
    SAC_ND_FUNAP2( SACf_MTClock_CL_INIT__init_TheMTClock__SACt_MTClock__MTClock,  SAC_ND_ARG_inout( SAC_SET_NT_USG( TFA, (SACo_MTClock__TheMTClock, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, ))))))))), SACt_MTClock__MTClock))

    /*
     * ND_FUN_AP( SACf_Terminal_CL_INIT__init_TheTerminal__SACt_Terminal__Terminal, , 1, inout, SACt_Terminal__Terminal, SAC_SET_NT_USG( TFA, (SACo_Terminal__TheTerminal, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, ))))))))))
     */
    SAC_ND_FUNAP2( SACf_Terminal_CL_INIT__init_TheTerminal__SACt_Terminal__Terminal,  SAC_ND_ARG_inout( SAC_SET_NT_USG( TFA, (SACo_Terminal__TheTerminal, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, ))))))))), SACt_Terminal__Terminal))

    /*
     * ND_FUN_AP( SACf_TermFile_CL_INIT__init_stdout__SACt_TermFile__TermFile, , 1, inout, SACt_TermFile__TermFile, SAC_SET_NT_USG( TFA, (SACo_TermFile__stdout, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, ))))))))))
     */
    SAC_ND_FUNAP2( SACf_TermFile_CL_INIT__init_stdout__SACt_TermFile__TermFile,  SAC_ND_ARG_inout( SAC_SET_NT_USG( TFA, (SACo_TermFile__stdout, (SCL, (HID, (NUQ, (INT, (GLO, (NON, (NOT, ))))))))), SACt_TermFile__TermFile))

    /*
     * ND_FUN_RET( , 0)
     */
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACf__MAIN_CL_INIT__init, , 0)
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * WITH-loop Count: 0
 * _MAIN:sacprelude_p::SACf__MAIN_CLsacprelude_p__zero__f_X_X(...) [ body ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACf__MAIN_CLsacprelude_p__zero__f_X_X, , 2, out, float, (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, float, (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACf__MAIN_CLsacprelude_p__zero__f_X_X, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_ND_PARAM_in( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    SAC_ND_DECL_CONST__DATA((SACp_emal_6773__flat_284, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))), float, 0.0f)

    /*
     * ND_DECL__MIRROR_PARAM( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), -4)
     */
    int SAC_ND_A_MIRROR_SHAPE( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 0) = SAC_ND_A_DESC_SHAPE( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 0);
    int SAC_ND_A_MIRROR_SHAPE( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 1) = SAC_ND_A_DESC_SHAPE( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 1);
    int SAC_ND_A_MIRROR_SIZE( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, ))))))))))) = SAC_ND_A_DESC_SIZE( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))));
    const int SAC_ND_A_MIRROR_DIM( (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, ))))))))))) = 2;

    SAC_INIT_LOCAL_MEM()
    SAC_ND_DEC_RC_FREE((SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 1, )
    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), (SACp_emal_6773__flat_284, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), (SACp_emal_6773__flat_284, (SCL, (NHD, (NUQ, (FLO, (GLO, (NON, (NOT, (NDI, (FLO, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACf__MAIN_CLsacprelude_p__zero__f_X_X, , 2, out, float, (SAC_arg_1, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), in, float, (SACl_A, (AKD, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * WITH-loop Count: 0
 * _MAIN::SACf__MAIN___cuknl_6818_CUDA__i__i__i__i__fd_1024_1024__f(...) [ body ]
 ****************************************************************************/
/*
 * CUDA_GLOBALFUN_DEF_BEGIN( SACf__MAIN___cuknl_6818_CUDA__i__i__i__i__fd_1024_1024__f, 6, in, float, (SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 0, inout, float, (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), 2, in, int, (SACp_ub_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0, in, int, (SACp_ub_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0, in, int, (SACp_lb_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0, in, int, (SACp_lb_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0)
 */
__global__ void SACf__MAIN___cuknl_6818_CUDA__i__i__i__i__fd_1024_1024__f(SAC_CUDA_PARAM_in( (SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_CUDA_PARAM_inout( (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), float), int SAC_ND_A_MIRROR_SHAPE((SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), 0), int SAC_ND_A_MIRROR_SHAPE((SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), 1), int SAC_ND_A_MIRROR_SIZE((SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, ))))))))))), int SAC_ND_A_MIRROR_DIM((SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, ))))))))))), SAC_CUDA_PARAM_in( (SACp_ub_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_CUDA_PARAM_in( (SACp_ub_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_CUDA_PARAM_in( (SACp_lb_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_CUDA_PARAM_in( (SACp_lb_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int)){

{ 
  /*
   * ND_DECL( (SACp_wlidx_5546_B, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
   */
  SAC_ND_DECL__DATA( (SACp_wlidx_5546_B, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
  SAC_ND_DECL__DESC( (SACp_wlidx_5546_B, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
  SAC_NOTHING()

  /*
   * ND_DECL( (SACp_pinl_631__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
   */
  SAC_ND_DECL__DATA( (SACp_pinl_631__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
  SAC_ND_DECL__DESC( (SACp_pinl_631__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
  SAC_NOTHING()

  /*
   * ND_DECL( (SACp_pinl_632__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
   */
  SAC_ND_DECL__DATA( (SACp_pinl_632__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
  SAC_ND_DECL__DESC( (SACp_pinl_632__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
  SAC_NOTHING()

  /*
   * CUDA_DECL_KERNEL_ARRAY( (SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 1, 2)
   */
  int SAC_ND_A_FIELD( (SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))[2];
  SAC_ND_DECL__DESC( (SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
  const int SAC_ND_A_MIRROR_SHAPE( (SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = 2;
  const int SAC_ND_A_MIRROR_SIZE( (SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 2;
  const int SAC_ND_A_MIRROR_DIM( (SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 1;


  SAC_INIT_LOCAL_MEM()
  /*
   * CUDA_WLIDS( (SACp_pinl_631__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, 2, 1, (SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), false)
   */
  SAC_CUDA_WLIDS( (SACp_pinl_631__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, BLOCKIDX_X, BLOCKDIM_X, THREADIDX_X, SACp_step_1, SACp_width_1, SACp_lb_1, SACp_ub_1)
SAC_ND_WRITE( (SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1) = SAC_ND_READ( (SACp_pinl_631__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0);

  /*
   * CUDA_WLIDS( (SACp_pinl_632__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, 2, 0, (SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), false)
   */
  SAC_CUDA_WLIDS( (SACp_pinl_632__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, BLOCKIDX_Y, BLOCKDIM_Y, THREADIDX_Y, SACp_step_0, SACp_width_0, SACp_lb_0, SACp_ub_0)
SAC_ND_WRITE( (SACp_pinl_630_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = SAC_ND_READ( (SACp_pinl_632__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0);

  /*
   * ND_IDXS2OFFSET_arr( (SACp_wlidx_5546_B, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2, (SACp_pinl_632__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_pinl_631__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2, 1024, 1024)
   */
  SAC_ND_WRITE( (SACp_wlidx_5546_B, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = ( 1024 * SAC_ND_READ( (SACp_pinl_632__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) + SAC_ND_READ( (SACp_pinl_631__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) );

  /*
   * CUDA_WL_ASSIGN( (SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), 2, (SACp_wlidx_5546_B, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
   */
  SAC_ND_WRITE_READ_COPY( (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), SAC_ND_READ( (SACp_wlidx_5546_B, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), (SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 0, );

  SAC_ND_FREE((SACp_wlidx_5546_B, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
  SAC_ND_FREE((SACp_pinl_631__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
  SAC_ND_FREE((SACp_pinl_632__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOOP()

  SAC_CLEANUP_LOCAL_MEM()
}
/*
 * CUDA_GLOBALFUN_DEF_END( SACf__MAIN___cuknl_6818_CUDA__i__i__i__i__fd_1024_1024__f, 6, in, float, (SACp_emal_5881__pinl_626__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 0, inout, float, (SACp_emal_5874__iwlmem_5813_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), 2, in, int, (SACp_ub_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0, in, int, (SACp_ub_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0, in, int, (SACp_lb_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0, in, int, (SACp_lb_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0)
 */
}



/****************************************************************************
 * WITH-loop Count: 0
 * _MAIN::SACf__MAIN___cuknl_6817_CUDA__i__i__i__i__fd_128_1024__f(...) [ body ]
 ****************************************************************************/
/*
 * CUDA_GLOBALFUN_DEF_BEGIN( SACf__MAIN___cuknl_6817_CUDA__i__i__i__i__fd_128_1024__f, 6, in, float, (SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 0, inout, float, (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), 2, in, int, (SACp_ub_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0, in, int, (SACp_ub_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0, in, int, (SACp_lb_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0, in, int, (SACp_lb_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0)
 */
__global__ void SACf__MAIN___cuknl_6817_CUDA__i__i__i__i__fd_128_1024__f(SAC_CUDA_PARAM_in( (SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), float), SAC_CUDA_PARAM_inout( (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), float), int SAC_ND_A_MIRROR_SHAPE((SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), 0), int SAC_ND_A_MIRROR_SHAPE((SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), 1), int SAC_ND_A_MIRROR_SIZE((SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, ))))))))))), int SAC_ND_A_MIRROR_DIM((SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, ))))))))))), SAC_CUDA_PARAM_in( (SACp_ub_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_CUDA_PARAM_in( (SACp_ub_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_CUDA_PARAM_in( (SACp_lb_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int), SAC_CUDA_PARAM_in( (SACp_lb_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int)){

{ 
  /*
   * ND_DECL( (SACp_wlidx_5545_A, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
   */
  SAC_ND_DECL__DATA( (SACp_wlidx_5545_A, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
  SAC_ND_DECL__DESC( (SACp_wlidx_5545_A, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
  SAC_NOTHING()

  /*
   * ND_DECL( (SACp_pinl_614__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
   */
  SAC_ND_DECL__DATA( (SACp_pinl_614__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
  SAC_ND_DECL__DESC( (SACp_pinl_614__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
  SAC_NOTHING()

  /*
   * ND_DECL( (SACp_pinl_615__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
   */
  SAC_ND_DECL__DATA( (SACp_pinl_615__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
  SAC_ND_DECL__DESC( (SACp_pinl_615__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
  SAC_NOTHING()

  /*
   * CUDA_DECL_KERNEL_ARRAY( (SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 1, 2)
   */
  int SAC_ND_A_FIELD( (SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))[2];
  SAC_ND_DECL__DESC( (SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
  const int SAC_ND_A_MIRROR_SHAPE( (SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = 2;
  const int SAC_ND_A_MIRROR_SIZE( (SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 2;
  const int SAC_ND_A_MIRROR_DIM( (SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 1;


  SAC_INIT_LOCAL_MEM()
  /*
   * CUDA_WLIDS( (SACp_pinl_614__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, 2, 1, (SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), false)
   */
  SAC_CUDA_WLIDS( (SACp_pinl_614__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, BLOCKIDX_X, BLOCKDIM_X, THREADIDX_X, SACp_step_1, SACp_width_1, SACp_lb_1, SACp_ub_1)
SAC_ND_WRITE( (SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1) = SAC_ND_READ( (SACp_pinl_614__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0);

  /*
   * CUDA_WLIDS( (SACp_pinl_615__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, 2, 0, (SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), false)
   */
  SAC_CUDA_WLIDS( (SACp_pinl_615__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, BLOCKIDX_Y, BLOCKDIM_Y, THREADIDX_Y, SACp_step_0, SACp_width_0, SACp_lb_0, SACp_ub_0)
SAC_ND_WRITE( (SACp_pinl_613_iv, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = SAC_ND_READ( (SACp_pinl_615__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0);

  /*
   * ND_IDXS2OFFSET_arr( (SACp_wlidx_5545_A, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2, (SACp_pinl_615__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), (SACp_pinl_614__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 2, 128, 1024)
   */
  SAC_ND_WRITE( (SACp_wlidx_5545_A, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = ( 1024 * SAC_ND_READ( (SACp_pinl_615__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) + SAC_ND_READ( (SACp_pinl_614__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) );

  /*
   * CUDA_WL_ASSIGN( (SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 0, (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), 2, (SACp_wlidx_5545_A, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
   */
  SAC_ND_WRITE_READ_COPY( (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), SAC_ND_READ( (SACp_wlidx_5545_A, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), (SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 0, );

  SAC_ND_FREE((SACp_wlidx_5545_A, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
  SAC_ND_FREE((SACp_pinl_614__eat_235, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
  SAC_ND_FREE((SACp_pinl_615__eat_236, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOOP()

  SAC_CLEANUP_LOCAL_MEM()
}
/*
 * CUDA_GLOBALFUN_DEF_END( SACf__MAIN___cuknl_6817_CUDA__i__i__i__i__fd_128_1024__f, 6, in, float, (SACp_emal_5890__pinl_609__flat_349, (SCL, (NHD, (NUQ, (FLO, (GLO, (FPM, (NOT, (NDI, (FLO, )))))))))), 0, inout, float, (SACp_emal_5883__iwlmem_5812_dev, (AKS, (NHD, (NUQ, (FLO, (GLO, (FPO, (NOT, (NDI, (OTH, )))))))))), 2, in, int, (SACp_ub_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0, in, int, (SACp_ub_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0, in, int, (SACp_lb_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0, in, int, (SACp_lb_0, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0)
 */
}

/*
 * stubs for SACARGfreeDataUdt and SACARGcopyDataUdt
 */
extern "C" void SACARGfreeDataUdt( int, void *);
extern "C" void *SACARGcopyDataUdt( int, int, void *);
void SACARGfreeDataUdt( int size, void *data) {}
void *SACARGcopyDataUdt( int type, int size, void *data) { return ((void *) 0x0); } 

int main( int __argc, char *__argv[])
{
  SAC_ND_DECL__DATA( (SAC_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
  SAC_ND_DECL__DESC( (SAC_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
  SAC_NOTHING()
  SAC_MT_SETUP_INITIAL();
  SAC_PF_SETUP();
  SAC_HM_SETUP();
  SAC_MT_SETUP();
  SAC_CS_SETUP();
  SAC_COMMANDLINE_SET( __argc, __argv);

  SAC_INVOKE_MAIN_FUN( SACf__MAIN__main, SAC_ND_ARG_out( (SAC_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int));

  SAC_DISTMEM_BARRIER();
  SAC_PF_PRINT();
  SAC_CS_FINALIZE();
  SAC_MT_FINALIZE();
  SAC_HM_PRINT();

  return( SAC_ND_READ( (SAC_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0));
}
