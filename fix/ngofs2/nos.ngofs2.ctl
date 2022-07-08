# control files for ingofs, which is read in by shell script 

export DBASE_MET_NOW=NAM
export DBASE_MET_FOR=NAM
export DBASE_WL_NOW=RTOFS
export DBASE_WL_FOR=RTOFS
export DBASE_TS_NOW=RTOFS
export DBASE_TS_FOR=RTOFS

export OCEAN_MODEL=FVCOM
export LEN_FORECAST=48
export IGRD_MET=2
export IGRD_OBC=2
export BASE_DATE=1858111700
export TIME_START=2019010100
export MINLON=-99.0
export MINLAT=20.0
export MAXLON=-82.0 
export MAXLAT=32.0
export THETA_S=4.5d0                     
export THETA_B=0.95d0                    
export TCLINE=10.0d0
export SCALE_HFLUX=1.0 
export CREATE_TIDEFORCING=0

########################################################
##  static input file name, do not include path name
########################################################
export GRIDFILE=nos.ngofs2.grid.dat
export HC_FILE_OBC=nos.ngofs2.HC.nc 
export HC_FILE_OFS=nos.ngofs2.HC.nc 
export RIVER_CTL_FILE=nos.ngofs2.river.ctl
export RIVER_CLIM_FILE=nos.ofs.river.clim.usgs.nc
export OBC_CTL_FILE=nos.ngofs2.obc.ctl
export OBC_CLIM_FILE=nos.ofs.clim.WOA05.nc
export STA_OUT_CTL=nos.ngofs2_station.dat
export VGRID_CTL=nos.ngofs2.vgrid.dat
export RUNTIME_CTL=nos.ngofs2.fvcom.nml
export HC_FILE_NWLON=nos.ofs.HC_NWLON.nc
export OBC_FILE_TEMPLATE=nos.ngofs2.obc.template.nc
export STA_EDGE_CTL=nos.ngofs2_station_edge.dat

########################################################
# parameters for FVCOM RUN
########################################################
export NNODE=303714
export NELE=569405
export KBm=40
export DELT_MODEL=2
export EXTSTEP_SECONDS=2.0
export ISPLIT=3
export RST_OUT_INTERVAL=21600.0
export IREPORT=100
export NC_OUT_INTERVAL=10800.0
export NCSF_OUT_INTERVAL=3600.0
export NC_STA_INTERVAL=360.0
export NRIVERS=63
export MIN_DEPTH=0.5
export HEATING_LONGWAVE_LENGTHSCALE=1.4
export HEATING_LONGWAVE_PERCTAGE=0.78
export HEATING_SHORTWAVE_LENGTHSCALE=6.3
export NESTING_BLOCKSIZE=5

### Files Used in Model Run
export RIVER_NAMELIST=nos.ngofs2.RIVERS_NAMELIST.nml
export CORIOLISFILE=nos.ngofs2.cor.dat
export DEPTHFILE=nos.ngofs2.dep.dat
export RUNGRIDFILE=nos.ngofs2.grd.dat
export MODELOBCFILE=nos.ngofs2.obc.dat
export SIGMA_LEVEL=nos.ngofs2.sigma.dat
export SPONGEFILE=nos.ngofs2.spg.dat
export STATIONFILE=nos.ngofs2.station.dat
export InputNodeFile=nos.ngofs2.node.dat
export InputNode2LFile=nos.ngofs2.node.2LayerNd.dat
export STATIONEDGEFILE=nos.ngofs2.station.edge.dat

# Parameters Used in Model RUN
export NRST=3600
export NSTA=360
export NFLT=3600
export NHIS=3600
export NAVG=3600
export DCRIT="0.10d0     !m" 
#export TOTAL_TASKS=768
export TOTAL_TASKS=756
#############################################################
# GLOSSARY
# #############################################################
# GRIDFILE    :ocean model grid netCDF file including lon, lat, depth, etc.
# DBASE       :Name of NCEP atmospheric operational products, e.g. NAM, GFS, RTMA, NDFD, etc.
# DBASE_MET_NOW : Data source Name of NCEP atmospheric operational products for Nowcast run.
# DBASE_MET_FOR : Data source Name of NCEP atmospheric operational products for Forecast run.
# DBASE_WL_NOW  : Data source Name of water level open boundary conditions for Nowcast run.
# DBASE_WL_FOR  : Data source Name of water level open boundary conditions for Forecast run.
# DBASE_TS_NOW  : Data source Name of T & S open boundary conditions for Nowcast run.
# DBASE_TS_FOR  : Data source Name of T & S open boundary conditions for Forecast run.
# OCEAN_MODEL :Name of Hydrodynamic Ocean Model, e.g. ROMS, FVCOM, SELFE, etc.
# LEN_FORECAST:Forecast length of OFS forecast cycle.
# IGRD_MET    :spatial interpolation method for atmospheric forcing fields
#           =0:on native grid of NCEP products with wind rotated to earth coordinates
#	    =1:on ocean model grid (rotated to local coordinates) interpolated using remesh routine.
#	    =2:on ocean model grid (rotated to local coordinates) interpolated using bicubic routine.
#	    =3:on ocean model grid (rotated to local coordinates) interpolated using bilinear routine.
#           =4:on ocean model grid (rotated to local coordinates) interpolated using nature neighbors routine.
# IGRD_OBC    :spatial interpolation method for ocean open boundary forcing fields
# BASE_DATE   :base date for the OFS time system, e.g. YYYYMMDDHH (2008010100)
# TIME_START  :forecast start time/current time, e.g. 2008110600
# MINLON      :longitude of lower left/southwest corner to cover the OFS domain
# MINLAT      :latitude of lower left /southwest corner to cover the OFS domain
# MAXLON      :longitude of upper right/northeast corner to cover the OFS domain
# MAXLAT      :latitude of  upper right/northeast corner to cover the OFS domain
# THETA_S     :S-coordinate surface control parameter, [0 < theta_s < 20].
# THETA_B     :S-coordinate bottom  control parameter, [0 < theta_b < 1].
# TCLINE      :Width (m) of surface or bottom boundary layer in which
#             :higher vertical resolution is required during stretching.
# SCALE_HFLUX :scaling factor (fraction) of surface heat flux (net short-wave and downward
#              long-wave radiation). if =1.0, no adjustment to atmospheric products.  
# CREATE_TIDEFORCING : > 0, generate tidal forcing file
# HC_FILE_ADCIRC     : ADCIRC EC2001 harmonic constant file 
# HC_FILE_ROMS     : Tidal forcing file of ROMS (contains tide constituents of WL, ubar, and vbar) 
# EL_HC_CORRECTION   : > 0, correction elevation harmonics with user provided data
# FILE_EL_HC_CORRECTION : file name contains elevation harmonics for correction                
# RIVER_CTL_FILE  : File name contains river attributes (Xpos, Epos, Flag, River name,etc.)
# OBC_CTL_FILE  : Control file name for generating open boundary conditions (WL, T and S).
# IM          :GRID Number of I-direction RHO-points, it is xi_rho for ROMS
# JM          :GRID Number of J-direction RHO-points, it is eta_rho for ROMS
# DELT_ROMS   :Time-Step size in seconds.  If 3D configuration, DT is the
#              size of baroclinic time-step.  If only 2D configuration, DT
#              is the size of the barotropic time-step.
# NDTFAST      Number of barotropic time-steps between each baroclinic time
#              step. If only 2D configuration, NDTFAST should be unity since
#              there is not need to splitting time-stepping.
# KBm         :Number of vertical levels at temperature points of OFS
# NRST         Number of time-steps between writing of re-start fields.
# NSTA         Number of time-steps between writing data into stations file.
#              Station data is written at all levels.
# NFLT         Number of time-steps between writing data into floats file.
# NHIS         Number of time-steps between writing fields into history file.
# RDRG2        Quadratic bottom drag coefficient.
#
# Zob          Bottom roughness (m).
# AKT_BAK      Background vertical mixing coefficient (m2/s) for active
#              (NAT) and inert (NPT) tracer variables.
# AKV_BAK      Background vertical mixing coefficient (m2/s) for momentum.
#
# AKK_BAK      Background vertical mixing coefficient (m2/s) for turbulent
#              kinetic energy.
#
# AKP_BAK      Background vertical mixing coefficient (m2/s) for turbulent
#              generic statistical field, "psi".
#
# TKENU2       Lateral, harmonic, constant, mixing coefficient (m2/s) for
#              turbulent closure variables.
#
# TKENU4       Lateral, biharmonic, constant mixing coefficient (m4/s) for
#              turbulent closure variables.
# DCRIT        Minimum depth (m) for wetting and drying.
# DSTART       Time stamp assigned to model initialization (days).  Usually
#              a Calendar linear coordinate, like modified Julian Day.  For
#              Example:
# TIDE_START   Reference time origin for tidal forcing (days). This is the
#              time used when processing input tidal model data. It is needed
#              in routine "set_tides" to compute the correct phase lag with
#              respect ROMS/TOMS initialization time.
# TOTAL_TASKS  Total tasks to be run
