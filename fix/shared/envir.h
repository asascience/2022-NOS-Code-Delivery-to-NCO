export job=${job:-$LSB_JOBNAME}
export jobid=${jobid:-${job}.$$}
export RUN_ENVIR=${RUN_ENVIR:-nco}
export envir=%ENVIR%

export DCOMROOT=/dcom/us007003  # previously set to /dcom in .bash_profile
export COMROOT=${COMROOT:-/com}
export GESROOT=${GESROOT:-/nwges}
export NWROOT=${NWROOT:-/nw${envir}}
export UTILROOT=${UTILROOT:-/nwprod/util}

case $envir in
  prod)
    export jlogfile=${jlogfile:-${COMROOT}/logs/jlogfiles/jlogfile.${jobid}}
    export DATAROOT=${DATAROOT:-/tmpnwprd1}
    if [ "$LSB_EXEC_CLUSTER" = $(cat /etc/prod) ]; then
      export DBNROOT=/iodprod/dbnet_siphon  # previously set in .bash_profile
    else
      export DBNROOT=/nwprod/spa_util/fakedbn  # dev/backup machine
    fi
    ;;
  eval)
    export envir=para
    export jlogfile=${jlogfile:-${COMROOT}/logs/${envir}/jlogfile}
    export DATAROOT=${DATAROOT:-/tmpnwprd2}
    if [ "$LSB_EXEC_CLUSTER" = $(cat /etc/prod) ]; then
      export DBNROOT=/nwprod/spa_util/para_dbn
      SENDDBN_NTC=NO
    else
      export DBNROOT=/nwprod/spa_util/fakedbn  # dev/backup machine
    fi
    ;;
  para|test)
    export jlogfile=${jlogfile:-${COMROOT}/logs/${envir}/jlogfile}
    export DATAROOT=${DATAROOT:-/tmpnwprd2}
    export DBNROOT=/nwprod/spa_util/fakedbn
    KEEPDATA=%KEEPDATA:YES%
    ;;
  *)
    ecflow_client --abort="ENVIR must be prod, para, eval, or test [envir.h]"
    exit
    ;;
esac

export PCOMROOT=${PCOMROOT:-/pcom/${envir}}
export SENDDBN=${SENDDBN:-YES}
export SENDDBN_NTC=${SENDDBN_NTC:-YES}
export SENDECF=${SENDECF:-YES}
export SENDCOM=${SENDCOM:-YES}
export KEEPDATA=${KEEPDATA:-%KEEPDATA:NO%}
