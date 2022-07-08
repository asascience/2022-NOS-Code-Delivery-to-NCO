#!/bin/bash -l
. /lfs/h1/nos/nosofs/noscrub/aijun.zhang/packages/nosofs.v3.5.0/versions/run.ver
module load envvar/${envvars_ver:?}
module load PrgEnv-intel/${PrgEnv_intel_ver}
module load craype/${craype_ver}
module load intel/${intel_ver}
rm -f /lfs/h1/nos/ptmp/aijun.zhang/rpt/v3.5.0/sfbofs_*_03.out
rm -f /lfs/h1/nos/ptmp/aijun.zhang/rpt/v3.5.0/sfbofs_*_03.err
export LSFDIR=/lfs/h1/nos/nosofs/noscrub/aijun.zhang/packages/nosofs.v3.5.0/pbs 
PREP=$(qsub  $LSFDIR/jnos_sfbofs_prep_03.pbs) 
NFRUN=$(qsub -W depend=afterok:$PREP $LSFDIR/jnos_sfbofs_nowcst_fcst_03.pbs)
qsub -W depend=afterok:$NFRUN $LSFDIR/jnos_sfbofs_aws_03.pbs
