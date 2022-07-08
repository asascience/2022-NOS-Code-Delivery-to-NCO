#!/bin/sh
HOMEnos=/lfs/h1/nos/nosofs/noscrub/$LOGNAME/packages/nosofs.v3.5.0
cd ..
#HOMEnos=`pwd`

BUILD_VERSION_FILE=$HOMEnos/versions/build.ver
if [ -f $BUILD_VERSION_FILE ]; then
 . $BUILD_VERSION_FILE
else
   echo " Build Version File $BUILD_VERSION_FILE does not exist **"
   exit
fi

export HOMEnos=${HOMEnos:-${PACKAGEROOT:?}/nosofs.${nosofs_ver:?}}

export COMP_F=ftn
export COMP_F_MPI90=ftn
export COMP_F_MPI=ftn
export COMP_ICC=cc
export COMP_CC=cc
export COMP_CPP=cpp
export COMP_MPCC=cc

module purge
printenv SHELL
module purge
module load envvar/$envvars_ver
# Loading Intel Compiler Suite
module load PrgEnv-intel/${PrgEnv_intel_ver}
module load craype/${craype_ver}
module load intel/${intel_ver}
module load cray-mpich/${cray_mpich_ver}
module load cray-pals/${cray_pals_ver}
#Set other library variables
#module load netcdf/${netcdf_ver}
#module load hdf5/${hdf5_ver}
module load bacio/${bacio_ver}
module load w3nco/${w3nco_ver}
module load w3emc/${w3emc_ver}
module load g2/${g2_ver}
module load zlib/${zlib_ver}
module load libpng/${libpng_ver}
module load bufr/${bufr_ver}
module load jasper/${jasper_ver}
#
#Set other library variables
module load netcdf/${netcdf_ver}
module load hdf5/${hdf5_ver}
module load subversion/${subversion_ver}


#module purge
#printenv SHELL
#module use $HOMEnos/modulefiles
#module load nosofs
#module list 2>&1

export SORCnos=$HOMEnos/sorc
export EXECnos=$HOMEnos/exec
export LIBnos=$HOMEnos/lib

if [ ! -s $EXECnos ]
then
  mkdir -p $EXECnos
fi
export LIBnos=$HOMEnos/lib

if [ ! -s $LIBnos ]
then
  mkdir -p $LIBnos
fi

cd $SORCnos/nos_ofs_utility.fd
rm -f *.o *.a
gmake -f makefile

if [ -s $SORCnos/nos_ofs_utility.fd/libnosutil.a ]
then
  chmod 755 $SORCnos/nos_ofs_utility.fd/libnosutil.a
  mv $SORCnos/nos_ofs_utility.fd/libnosutil.a ${LIBnos}
fi
gmake clean


cd $SORCnos/nos_ofs_combine_field_netcdf_selfe.fd
rm -f *.o *.a
gmake -f makefile

cd $SORCnos/nos_ofs_combine_station_netcdf_selfe.fd
rm -f *.o *.a
gmake -f makefile

cd $SORCnos/nos_ofs_combine_hotstart_out_selfe.fd
rm -f *.o *.a
gmake -f makefile

cd $SORCnos/nos_ofs_create_forcing_met.fd
rm -f *.o *.a
gmake -f makefile

cd $SORCnos/nos_ofs_create_forcing_met_fvcom.fd
rm -f *.o *.a
gmake -f makefile
cd $SORCnos/nos_ofs_create_forcing_obc_tides.fd
rm -f *.o *.a
gmake -f makefile

cd $SORCnos/nos_ofs_create_forcing_obc.fd
rm -f *.o *.a
gmake -f makefile

cd $SORCnos/nos_ofs_create_forcing_obc_fvcom.fd
rm -f *.o *.a
gmake -f makefile

cd $SORCnos/nos_ofs_create_forcing_obc_fvcom_gl.fd
rm -f *.o *.a
gmake -f makefile

cd $SORCnos/nos_ofs_create_forcing_obc_fvcom_nest.fd
rm -f *.o *.a
gmake -f makefile

cd $SORCnos/nos_ofs_create_forcing_obc_selfe.fd
rm -f *.o *.a
gmake -f makefile
cd $SORCnos/nos_ofs_create_forcing_river.fd
rm -f *.o *.a

gmake -f makefile
cd $SORCnos/nos_ofs_met_file_search.fd
rm -f *.o *.a
gmake -f makefile

cd $SORCnos/nos_ofs_read_restart.fd
rm -f *.o *.a
gmake -f makefile

cd $SORCnos/nos_ofs_read_restart_fvcom.fd
rm -f *.o *.a
gmake -f makefile

cd $SORCnos/nos_ofs_read_restart_selfe.fd
rm -f *.o *.a
gmake -f makefile
cd $SORCnos/nos_ofs_reformat_ROMS_CTL.fd
rm -f *.o *.a
gmake -f makefile

cd $SORCnos/nos_creofs_wl_offset_correction.fd
gmake clean
gmake -f makefile

cd $SORCnos/nos_ofs_create_forcing_nudg.fd
gmake clean
gmake -f makefile

cd $SORCnos/nos_ofs_residual_water_calculation.fd
gmake clean
gmake -f makefile

cd $SORCnos/nos_ofs_adjust_tides.fd
gmake clean
gmake -f makefile

cd $SORCnos/nos_ofs_rename.fd
rm -f *.o *.a
gmake -f makefile

#  Compile ocean model of ROMS for CBOFS
cd $SORCnos/ROMS.fd
gmake clean
./build_cbofs.sh
if [ -s  cbofs_roms_mpi ]; then
  mv cbofs_roms_mpi $EXECnos/.
else
  echo 'roms executable for CBOFS is not created'
fi

#  Compile ocean model of ROMS for DBOFS
cd $SORCnos/ROMS.fd
gmake clean
./build_dbofs.sh
if [ -s  dbofs_roms_mpi ]; then
  mv dbofs_roms_mpi $EXECnos/.
else
  echo 'roms executable for DBOFS is not created'
fi

#  Compile ocean model of ROMS for TBOFS
cd $SORCnos/ROMS.fd
gmake clean
./build_tbofs.sh
if [ -s  tbofs_roms_mpi ]; then
  mv tbofs_roms_mpi $EXECnos/.
else
  echo 'roms executable for TBOFS is not created'
fi

#  Compile ocean model of ROMS for GoMOFS
cd $SORCnos/ROMS.fd
gmake clean
./build_gomofs.sh
if [ -s  gomofs_roms_mpi ]; then
  mv gomofs_roms_mpi $EXECnos/.
else
  echo 'roms executable for GoMOFS is not created'
fi
#  Compile ocean model of ROMS for CIOFS
cd $SORCnos/ROMS.fd
gmake clean
./build_ciofs.sh
if [ -s  ciofs_roms_mpi ]; then
  mv ciofs_roms_mpi $EXECnos/.
else
  echo 'roms executable for CIOFS is not created'
fi

#  Compile ocean model of ROMS for WCOFS (which includes 3 models)
cd $SORCnos/ROMS.fd
gmake clean
./build_wcofs.sh
gmake clean
if [ -s  wcofs_roms_mpi ]; then
  mv wcofs_roms_mpi $EXECnos/.
else
  echo 'roms executable for WCOFS is not created'
fi

# Compile WCOFS_FREE
cd $SORCnos/ROMS.fd
./build_wcofs_free.sh
gmake clean
if [ -s  wcofs_free_roms_mpi ]; then
  mv wcofs_free_roms_mpi $EXECnos/.
else
  echo 'roms executable for WCOFS_FREE is not created'
fi
# Compile WCOFS_DA
cd $SORCnos/ROMS.fd/Lib/ARPACK
gmake clean
gmake  lib
gmake  plib
gmake clean
cd $SORCnos/ROMS.fd
./build_wcofs_da.sh
gmake clean
if [ -s  wcofs_da_roms_mpi ]; then
  mv wcofs_da_roms_mpi $EXECnos/.
else
  echo 'roms executable for WCOFS_DA is not created'
fi


#  Compile ocean model of FVCOM for NGOFS
cd  $SORCnos/FVCOM.fd/FVCOM_source/libs/julian
gmake clean
gmake -f makefile
if [ -s libjulian.a ]; then
  cp -p libjulian.a $LIBnos
else
  echo "WARNING: libjulian.a was not created"
fi
rm -f *.o

cd  $SORCnos/FVCOM.fd/FVCOM_source/libs/proj.4-master
gmake clean
#./configure  --prefix=$SORCnos/FVCOM.fd/FVCOM_source/libs/proj.4-master
./configure CC=cc FC=ftn CFLAGS='-DIFORT -g -w -O2' --prefix=$SORCnos/FVCOM.fd/FVCOM_source/libs/proj.4-master
gmake
gmake install
if [ -s ./lib/libproj.a ]; then
  cp -p ./lib/libproj.a $LIBnos
else
  echo "WARNING: ./lib/libproj.a was not created"
fi


cd $SORCnos/FVCOM.fd/FVCOM_source/libs/proj4-fortran-master
gmake clean
./configure  CC=cc FC=ftn CFLAGS='-DIFORT -g -w -O2' proj4=$SORCnos/FVCOM.fd/FVCOM_source/libs/proj.4-master --prefix=$SORCnos/FVCOM.fd/FVCOM_source/libs/proj4-fortran-master
gmake
gmake install
if [ -s ./lib/libfproj4.a ]; then
  cp -p ./lib/libfproj4.a $LIBnos
else
  echo "WARNING: ./lib/libfproj4.a was not created"
fi

cd $SORCnos/FVCOM.fd/METIS_source
gmake clean
gmake -f makefile
if [ -s libmetis.a ]; then
  cp -p libmetis.a $LIBnos
else
  echo "WARNING: $LIBnos/libmetis.a was not created"
fi
rm -f *.o

cd $SORCnos/FVCOM.fd/FVCOM_source
gmake clean
gmake -f makefile_SFBOFS
if [ -s  fvcom_sfbofs ]; then
  mv fvcom_sfbofs $EXECnos/.
else
  echo 'fvcom executable is not created'
fi

cd $SORCnos/FVCOM.fd/FVCOM_source
gmake clean
gmake -f makefile_LEOFS
if [ -s  fvcom_leofs ]; then
  mv fvcom_leofs $EXECnos/.
else
  echo 'fvcom executable is not created'
fi

cd $SORCnos/FVCOM.fd/FVCOM_source
gmake clean
gmake -f makefile_LMHOFS
if [ -s  fvcom_lmhofs ]; then
  mv fvcom_lmhofs $EXECnos/.
else
  echo 'fvcom executable is not created'
fi

cd $SORCnos/FVCOM.fd/FVCOM_source
gmake clean
gmake -f makefile_LSOFS
if [ -s  fvcom_lsofs ]; then
  mv fvcom_lsofs $EXECnos/.
else
  echo 'fvcom executable is not created'
fi

cd $SORCnos/FVCOM.fd/FVCOM_source
gmake clean
gmake -f makefile_LOOFS
if [ -s  fvcom_loofs ]; then
  mv fvcom_loofs $EXECnos/.
else
  echo 'fvcom executable is not created'
fi

cd $SORCnos/FVCOM.fd/FVCOM_source
gmake clean
gmake -f makefile_NGOFS2
if [ -s  fvcom_ngofs2 ]; then
  mv fvcom_ngofs2 $EXECnos/.
else
  echo 'fvcom executable is not created'
fi

#  Compile ocean model of SELFE.fd for CREOFS
#cd $SORCnos/SELFE.fd/ParMetis-3.1-64bit
#gmake clean
#gmake -f Makefile
cd $SORCnos/SELFE.fd
gmake clean
gmake -f makefile
if [ -s  selfe_creofs ]; then
  mv selfe_creofs $EXECnos/.
else
  echo 'selfe executable is not created'
fi  

