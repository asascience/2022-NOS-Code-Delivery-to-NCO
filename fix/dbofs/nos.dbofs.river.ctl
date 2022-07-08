Section 1:  Information about USGS rivers where real-time discharges are available
14  11  1.0 !! NIJ NRIVERS DELT: number of model locations (NIJ) and number of USGS river stations (NRIVERS)
RiverID  USGS_ID   NWS_ID  AGENCY_ID Q_min     Q_max   Q_mean   T_min   T_max  T_mean   Q_Flag  T_Flag        River_Station_Name
  1     01411500    XXXXX   USGS     0.25    208.29     4.61    0.00   27.50   13.62     1       1       Maurice River at Norma, NJ
  2     01412800    XXXXX   USGS     0.13    283.00     1.01    0.00   27.50   13.62     1       1       Cohansey River at Seeley, NJ
  3     01463500    TREN4   USGS    33.39   2831.70   336.77   -0.60   34.00   13.42     1       1       Delaware River at Trenton, NJ
  4     01465500    LNGP1   USGS     0.05    500.19     8.66   -0.60   34.00   13.42     1       1       Neshaminy Creek near Langhorne, PA
  5     01467087    XXXXX   USGS     0.01    393.37     1.17   -0.60   34.00   13.42     1       1       Frankford Creek at Castor Ave., PA
  6     01474500    XXXXX   USGS     0.00   1132.67    79.24    0.00   27.50   13.62     1       1       Schuylkill River at Philadelphia, PA   
  7     01477120    XXXXX   USGS     0.08     99.90     1.12    0.00   27.50   13.62     1       1       Raccoon Creek near Swedesboro, NJ
  8     01478650    NEKD1   USGS     0.07    475.44     2.69    0.00   27.50   13.62     1       1       White Clay Creek at Newark, DE
  9     01482500    XXXXX   USGS     0.00    622.60     0.55    0.00   27.50   13.62     1       1       Salem River at Woodstown, NJ
 10     01484525    XXXXX   USGS     0.00     50.09     2.62    0.00   27.50   13.62     1       1       Millsboro Pond Outlet at Millsboro, DE
 11     01477000    CHSP1   USGS     0.01    393.37     1.17   -0.60   34.00   13.42     1       1       Chester Creek near Chester, PA
Section 2: ROMS river discharge inputs 
GRID_ID  I/Xpos  J/Ypos  DIR  FLAG  RiverID_Q  Q_Scale  RiverID_T  T_Scale    River_Basin_Name 
   1       94      92     0     3       1       -1.00       1       1.00      MAURICE RIVER
   2       88     128     0     3       2       -1.00       1       1.00      COHANSEY RIVER
   3       77     730     1     3       3       -0.33       3       1.00      DELAWARE RIVER
   4       78     730     1     3       3       -0.34       3       1.00      DELAWARE RIVER
   5       79     730     1     3       3       -0.33       3       1.00      DELAWARE RIVER
   6       73     608     0     3       4        1.00       5       1.00      NESHAMINY CREEK
   7       76     542     0     3       5        1.00       5       1.00      FRANKFORD CREEK
   8       73     426     0     3       6        1.00       6       1.00      SCHUYLKILL RIVER
   9       86     341     0     3       7       -1.00       6       1.00      RACCOON CREEK
  10       73     283     0     3       8        1.20       6       1.00      BRANDYWINE CREEK
  11       87     206     0     3       9       -1.00       6       1.00      SALEM RIVER
  12       65      52     0     3      10        1.00       6       1.00      MILLSBORO POND
  13       73     349     0     3      11        1.00       6       1.00      CHESTER CREEK
  14       67      96     0     3      10        0.25       6       1.00      ROACH MARSH


PARAMETER DEFINITION:

NIJ      :  Number of model grids to specify river discharges
NRIVERS  :  Number of USGS river observing stations
DELT     :  Time interval in hours for output time series
RiverID  :  Serial Identification number of USGS River
USGS_ID  :  USGS river Identification number
NWS_ID   :  NWS Identification number for USGS river
GRID_ID  :  Serial Identification number for Model grid location to specify river input 
I/Xpos   :  XI-position of model grid at RHO-points
J/Ypos   :  ETA-position of model grid at RHO-points 
DIR      :  River runoff direction. 0:along x/xi-axis; 1:along y/eta-axis 
FLAG     :  River runoff trace flag. 0: all tracers (T & S) are off; 1: only T is on; 2: only S is on; 3: both T and S are on
RiverID_Q:  RiverID in Section 1 which is used to specify river discharge at the corresponding model grid
RiverID_T:  RiverID in Section 1 which is used to specify river temperature at the corresponding model grid
Q_Scale  :  Scaling factor of river discharge at the model grid
T_Scale  :  Scaling factor of river tempature at corresponding model grid
Q_min    :  Minimum discharge value of the river
Q_mean   :  Average discharge value of the river
Q_max    :  Maximum discharge value of the river
T_min    :  Minimum temperature value of the river
T_mean   :  Average temperature value of the river
T_max    :  Maximum temperature value of the river
Q_Flag   :  0:use climatological river discharges data(daily mean); 1:use real-time river discharge observations
T_Flag   :  0:use climatological temperature data(daily mean); 1:use real-time river temperature observations
River_Basin_Name:  Name of Rivers or river basins
River_Station_Name:  Name of Rivers or stations
