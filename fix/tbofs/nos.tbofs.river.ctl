Section 1: Information about USGS rivers where real-time discharges and temperature are available
15  8  1.0  !! NIJ NRIVERS DELT
RiverID  USGS_ID   NWS_ID   AGENCY_ID  Q_min    Q_max  Q_mean   T_min   T_max   T_mean   Q_Flag  T_Flag        River_Station_Name
  1     02306000    XXXXX     USGS      0.00     4.10    1.01   23.90   25.80   -999.0     1       1       Sulphur Springs at Sulpher Springs, FL
  2     02301750    XXXXX     USGS      0.00    20.40    0.26    8.50   34.10   -999.0     1       1       Delaney Creek near Tampa, FL
  3     02301719    XXXXX     USGS      0.09   129.61   11.74    8.50   34.10   -999.0     1       1       Alafia River near Gibsonton, FL
  4     02300500    XXXXX     USGS      0.03   396.20    4.81   11.00   35.00    24.98     1       1       Little Manatee River at Wimauma, FL
  5     02300021    XXXXX     USGS      0.55    69.62    1.43   11.00   35.00    24.98     1       1       Manatee River at Fort Hamer, FL
  6     02300033    XXXXX     USGS      0.01    44.43    0.58   11.00   35.00    24.98     1       1       Braden River at Lakewood Ranch, FL
  7     02306647    XXXXX     USGS      0.00    26.32    0.58    9.60   33.50   -999.0     1       1       Sweetwater Creek near Tampa, FL
  8     02304510    XXXXX     USGS      0.00    67.07    6.80    9.60   33.50   -999.0     1       1       Hillsborough River at Rowlett Park Dr., FL
Section 2: Information of ROMS grids/locations to specify river inputs
 GRID_ID  I/Xpos  J/Ypos  DIR  FLAG  RiverID_Q  Q_Scale  RiverID_T  T_Scale        River_Basin_Name 
    1      109     269     1     3       1       -1.50       8       1.00      Hillsborough and Sulphur springs, FL
    2      110     269     1     3       1       -1.50       8       1.00      Hillsborough and Sulphur springs, FL
    3      163     269     0     3       2       -1.00       8       1.00      Tampa Bypass Canal
    4      163     270     0     3       2       -1.00       8       1.00      Tampa Bypass Canal
    5      176     217     0     3       3       -1.00       3       1.00      Alafia and Bullfrog
    6      176     218     0     3       3       -1.00       3       1.00      Alafia and Bullfrog
    7      157     157     0     3       4       -0.50       3       1.00      Little Manatee at Wimanma
    8      157     158     0     3       4       -0.50       3       1.00      Little Manatee at Wimanma
    9      175     102     0     3       5       -0.40       5       1.00      Manatee at Myakka Head
   10      175     103     0     3       5       -0.40       5       1.00      Manatee at Myakka Head
   11      175     104     0     3       5       -0.40       5       1.00      Manatee at Myakka Head
   12      164      92     1     3       6        0.50       5       1.00      Braden at Lakewood
   13      165      92     1     3       6        0.50       5       1.00      Braden at Lakewood
   14       19     290     1     3       7       -2.50       8       1.00      Rocky Cr.,Lake Tarpon, Sweetwater
   15       20     290     1     3       7       -2.50       8       1.00      Rocky Cr.,Lake Tarpon, Sweetwater

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
T_scale  :  Scaling factor of river tempature at corresponding model grid
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
