Section 1:  Information about USGS rivers where real-time discharges are available
36  12 1.0 !! NIJ NRIVERS : number of model locations (NIJ) and number of USGS river stations (NRIVERS)
RiverID  USGS_ID   NWS_ID  AGENCY_ID  Q_min      Q_max    Q_mean    T_min    T_max   T_mean   Q_Flag  TS_Flag        River_Station_Name
  1     15295700    XXXXX   USGS      0.00     136.20      8.48   -999.0   -999.0   -999.0     1       0        Terror River at mouth near Kodiak, AK
  2     15239070    XXXXX   USGS      0.00      49.55      4.05     0.10    15.80     4.32     1       1        Bradley River near Tidewater near Homer, AK
  3     15239900    XXXXX   USGS      0.00      59.47      3.95   -999.0   -999.0   -999.0     1       0        Anchor River near Anchor Point, AK
  4     15266300    XXXXX   USGS      0.00     662.61    185.51   -999.0   -999.0   -999.0     1       0        Kenai River at Soldotna, AK
  5     15271000    XXXXX   USGS      0.00     103.92     20.00   -999.0   -999.0   -999.0     1       0        Sixmile Creek near Hope, AK
  6     15274600    XXXXX   USGS      0.00      14.78      1.47   -999.0   -999.0   -999.0     1       0        Campbell Creek near Spendard, AK
  7     15275100    XXXXX   USGS      0.00       6.43      0.86   -999.0   -999.0   -999.0     1       0        Chester Canal at Arctic Boulevard at Anchorage, AK
  8     15276000    XXXXX   USGS      0.00      23.31      3.42   -999.0   -999.0   -999.0     1       0        Ship Canal near Anchorage, AK
  9     15281000    XXXXX   USGS      0.00    1384.69    402.38   -999.0   -999.0   -999.0     1       0        Knik River near Palmer, AK
 10     15284000    XXXXX   USGS      0.00     577.66    184.95   -999.0   -999.0   -999.0     1       0        Matanuska River near Palmer, AK 
 11     15290000    XXXXX   USGS      0.00      59.75      5.95   -999.0   -999.0   -999.0     1       0        Little Susitna River near Palmer, AK
 12     15292780    XXXXX   USGS      0.00    5487.81   1315.35   -999.0   -999.0   -999.0     1       0        Susitna River at Sunshine, AK
Section 2: information of ROMS grids to specify river discharges 
GRID_ID  I/Xpos  J/Ypos  DIR  FLAG  RiverID_Q  Q_Scale  RiverID_TS  TS_Scale    River_Basin_Name 
   1      157      18     0     3       1      -1.000        2       1.000      Terror River at mouth near Kodiak, AK
   2      506      73     1     3       2       1.000        2       1.000      Bradley River near Tidewater near Homer, AK
   3      272     169     0     3       3      -1.000        2       1.000      Anchor River near Anchor Point, AK
   4      266     269     0     3       4      -0.500        2       1.000      Kenai River at Soldotna, AK
   5      266     270     0     3       4      -0.500        2       1.000      Kenai River at Soldotna, AK
   6      594     474     1     3       5       1.000        2       1.000      Sixmile Creek near Hope, AK 
   7      339     517     1     3       6      -1.000        2       1.000      Campbell Creek near Spendard, AK 
   8      265     604     0     3       7      -1.000        2       1.000      Chester Canal at Arctic Boulevard at Anchorage, AK 
   9      253     628     0     3       8      -1.000        2       1.000      Ship Canal near Anchorage, AK 
  10      179     955     1     3       9      -0.100        2       1.000      Knik River near Palmer, AK 
  11      180     955     1     3       9      -0.100        2       1.000      Knik River near Palmer, AK 
  12      181     955     1     3       9      -0.100        2       1.000      Knik River near Palmer, AK 
  13      182     955     1     3       9      -0.100        2       1.000      Knik River near Palmer, AK 
  14      183     955     1     3       9      -0.100        2       1.000      Knik River near Palmer, AK 
  15      184     955     1     3       9      -0.100        2       1.000      Knik River near Palmer, AK 
  16      185     955     1     3       9      -0.100        2       1.000      Knik River near Palmer, AK 
  17      186     955     1     3       9      -0.100        2       1.000      Knik River near Palmer, AK 
  18      187     955     1     3       9      -0.100        2       1.000      Knik River near Palmer, AK 
  19      188     955     1     3       9      -0.100        2       1.000      Knik River near Palmer, AK
  20      179     955     1     3       10     -0.100        2       1.000      Matanuska River near Palmer, AK 
  21      180     955     1     3       10     -0.100        2       1.000      Matanuska River near Palmer, AK 
  22      181     955     1     3       10     -0.100        2       1.000      Matanuska River near Palmer, AK 
  23      182     955     1     3       10     -0.100        2       1.000      Matanuska River near Palmer, AK 
  24      183     955     1     3       10     -0.100        2       1.000      Matanuska River near Palmer, AK 
  25      184     955     1     3       10     -0.100        2       1.000      Matanuska River near Palmer, AK 
  26      185     955     1     3       10     -0.100        2       1.000      Matanuska River near Palmer, AK 
  27      186     955     1     3       10     -0.100        2       1.000      Matanuska River near Palmer, AK 
  28      187     955     1     3       10     -0.100        2       1.000      Matanuska River near Palmer, AK 
  29      188     955     1     3       10     -0.100        2       1.000      Matanuska River near Palmer, AK 
  30       84     518     0     3       11      0.500        2       1.000      Little Susitna River near Palmer, AK
  31       84     519     0     3       11      0.500        2       1.000      Little Susitna River near Palmer, AK
  32       53     456     0     3       12      0.412        2       1.000      Susitna River at Sunshine, AK 
  33       53     457     0     3       12      0.405        2       1.000      Susitna River at Sunshine, AK
  34       53     458     0     3       12      0.400        2       1.000      Susitna River at Sunshine, AK
  35       53     459     0     3       12      0.394        2       1.000      Susitna River at Sunshine, AK
  36       53     460     0     3       12      0.389        2       1.000      Susitna River at Sunshine, AK

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
