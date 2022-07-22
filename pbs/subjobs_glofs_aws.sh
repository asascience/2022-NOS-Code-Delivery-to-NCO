#!/bin/bash -l
. /lfs/h1/nos/nosofs/noscrub/Aijun.Zhang/packages/nosofs.v3.4.0/versions/run.ver
module purge 
module load envvar/${envvars_ver:?}
module load PrgEnv-intel/${PrgEnv_intel_ver}
module load craype/${craype_ver}
module load intel/${intel_ver}
export LSFDIR=/lfs/h1/nos/nosofs/noscrub/Aijun.Zhang/packages/nosofs.v3.4.0/pbs 
qsub $LSFDIR/jnos_glofs_aws.prod
