Section 1: Information about USGS rivers where real-time discharges are available
 17 14 1.0 !! NIJ RIVERS
RiverID STATION_ID NWS_ID AGENCY_ID Q_min     Q_max   Q_mean  T_min  T_max  T_mean Q_Flag TS_Flag  River_Name
 1       14246900  CBAO3   USGS      0.00  68753.19  7248.45   5.11  23.72   12.71    1     0      COLUMBIA RIVER AT BEAVER ARMY TERMINAL, OR
 2       08MF005   XXXXX   ECCAN     0.00  26916.52  2534.64   6.05  23.72   10.39    0     0      FRASER RIVER, BC, CANADA
 3       12200500  MVEW1   USGS      0.00   2485.96   451.33   6.05  23.72   10.39    0     0      SKAGIT RIVER NEAR MOUNT VERNON, WA
 4       12150800  MROW1   USGS      0.00   1627.33   264.91   6.05  23.72   10.39    0     0      SNOHOMISH RIVER NEAR MONROE, WA
 5       12167000  ARGW1   USGS      0.00    369.21    54.67   6.05  23.72   10.39    0     0      NF STILLAGUAMISH RIVER NEAR ARLINGTON, WA 
 6       12101500  PUYW1   USGS      0.00    529.68    90.85   6.05  23.72   10.39    0     0      PUYALLUP RIVER AT PUYALLUP, WA
 7       12113000  AUBW1   USGS      0.00    277.54    37.39   6.05  23.72   10.39    0     0      GREEN RIVER NEAR AUBURN, WA            
 8       12089500  MKNW1   USGS      0.00    276.16    34.38   6.05  23.72   10.39    0     0      NISQUALLY RIVER AT MCKENNA, WA
 9       12080010  DSEW1   USGS      0.00     65.45     6.93   6.05  23.72   10.39    0     0      DESCHUTES RIVER AT E ST BRIDGE AT TUMWATER, WA
 10      12061500  SRPW1   USGS      0.00    342.35    38.28   6.05  23.72   10.39    0     0      SKOKOMISH RIVER NEAR POTLATCH, WA
 11      12054000  DKBW1   USGS      0.00     79.12    12.08   6.05  23.72   10.39    0     0      DUCKABUSH RIVER NEAR BRINNON, WA
 12      12119000  RNTW1   USGS      0.00    136.03    18.55   6.05  23.72   10.39    0     0      CEDAR RIVER AT RENTON, WA
 13      12213100  NKSW1   USGS      0.00    653.95   111.33   6.05  23.72   10.39    0     0      NOOKSACK RIVER AT FERNDALE, WA         
 14      12201500  SMRW1   USGS      0.00     63.90     7.17   6.05  23.72   10.39    0     0      SAMISH RIVER NEAR BURLINGTON, WA           
Section 2: information on ROMS grids to specify river discharges
 GRID_ID I/Xpos J/Ypos DIR FLAG RiverID_Q Q_Scale RiverID_TS TS_Scale River_Basin_Name
  1       313    708     0    3     1      -0.50      1       1.00    COLUMBIA RIVER, OR
  2       313    709     0    3     1      -0.50      1       1.00    COLUMBIA RIVER, OR
  3       334    791     0    3     2      -1.0       2       1.00    FRASER RIVER, BC, CANADA
  4       345    764     0    3     3      -1.0096    3       1.00    SKAGIT RIVER, WA
  5       346    755     0    3     4      -1.0894    4       1.00    SNOHOMISH, WA
  6       345    760     0    3     5      -2.4598    5       1.00    STILLAGUAMISH, WA
  7       337    734     1    3     6       1.0444    6       1.00    PUYALLUP, WA
  8       341    742     0    3     7      -1.00      7       1.00    GREEN, WA
  9       331    730     1    3     8       1.223     8       1.00    NISQUALLY, WA
 10       328    732     0    3     9       1.0384    9       1.00    DESCHUTES, WA
 11       324    739     1    3    10       1.081    10       1.00    SKOKOMISH, WA
 12       329    747     1    3    11      -1.1404   11       1.00    DUCKABUSH, WA
 13       331    748     0    3    11       1.429    11       1.00    DOSEWALLIPS(DUCKABUSH), WA
 14       327    744     0    3    10       0.4459   10       1.00    HAMMA(SKOKOMISH), WA
 15       341    746     0    3    12      -1.00     12       1.00    CEDAR, WA
 16       344    778     1    3    13      -0.954    13       1.00    NOOKSACK, WA
 17       344    772     0    3    14      -1.00     14       1.00    SAMISH, WA

PARAMETER DEFINITION:
NIJ       :  Number of model grids to specify river discharges
NRIVERS   :  Number of USGS river observing stations
DELT      :  Time interval in hours for output time series
RiverID   :  Serial Identification number of USGS River
USGS_ID   :  USGS river Identification number
NWS_ID    :  NWS Identification number for USGS river
GRID_ID   :  Serial Identification number for Model grid location to specify river input
I/Xpos    :  XI-position of model grid at RHO-points
J/Ypos    :  ETA-position of model grid at RHO-points
DIR       :  River runoff direction. 0:along x/xi-axis; 1:along y/eta-axis
FLAG      :  River runoff trace flag. 0: all tracers (T & S) are off; 1: only T is on; 2: only S is on; 3: both T and S are on
RiverID_Q :  RiverID in Section 1 which is used to specify river discharge at the corresponding model grid
RiverID_TS:  RiverID in Section 1 which is used to specify river temperature and salinity at the corresponding model grid
Q_Scale   :  Scaling factor of river discharge at the model grid
TS_scale  :  Scaling factor of river tempature and salinity at corresponding model grid
Q_min     :  Minimum discharge value of the river
Q_mean    :  Average discharge value of the river
Q_max     :  Maximum discharge value of the river
T_min     :  Minimum temperature value of the river
T_mean    :  Average temperature value of the river
T_max     :  Maximum temperature value of the river
Q_Flag    :  0:use climatological river discharges data(daily mean); 1:use real-time river discharge observations
TS_Flag   :  0:use climatological temperature data(daily mean); 1:use real-time river temperature observations
River_Basin_Name:  Name of Rivers or river basins
River_Station_Name:  Name of Rivers or stations

