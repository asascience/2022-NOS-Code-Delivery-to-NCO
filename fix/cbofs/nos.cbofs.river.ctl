Section 1:  Information about USGS rivers where real-time discharges are available
51  26  1.0 !! NIJ NRIVERS : number of model locations (NIJ) and number of USGS river stations (NRIVERS)
RiverID  USGS_ID   NWS_ID  AGENCY_ID  Q_min      Q_max    Q_mean    T_min    T_max   T_mean   Q_Flag  TS_Flag        River_Station_Name
  1     01487000    XXXXX   USGS      0.18      85.47      2.64     0.80    27.90    15.06     1       1        Nanticoke River near Bridgeville, DE
  2     01491000    XXXXX   USGS      0.01     197.25      3.85   -999.0   -999.0   -999.0     1       0        Choptank River near Greensboro, MD
  3     01491500    XXXXX   USGS      0.04      95.94      2.74     0.00    29.20    13.65     1       0        Choptank River near Ruthsburg, MD
  4     01495000    XXXXX   USGS      0.06     299.98      1.98   -999.0   -999.0   -999.0     1       0        Big Elk Creek at Elk Mills, MD
  5     01578310    CNWM2   USGS      4.08   11979.00   1161.15   -999.0   -999.0   -999.0     1       0        Susquehanna River at Conowingo, MD
  6     01580520    XXXXX   USGS      1.25     328.28      7.05   -999.0   -999.0   -999.0     1       0        Deer Creek near Darlington, MD
  7     01581757    XXXXX   USGS      0.20     254.13      2.59   -999.0   -999.0   -999.0     1       0        Otter Point Creek near Edgewood, MD
  8     01589352    XXXXX   USGS      0.18     676.37      2.55   -999.0   -999.0   -999.0     1       0        Gwynns Falls at Washington Blvd., MD
  9     01646500    BRKM2   USGS      1.87    5663.37    323.19    -0.30    34.00    15.55     1       1        Potomac River near Washington, DC
 10     01658000    XXXXX   USGS      0.00     263.19      1.62    -0.10    29.10    13.55     1       1        Mattawoman Creek near Pomonkey, MD
 11     01594440    XXXXX   USGS      0.91     880.13     10.81   -999.0   -999.0   -999.0     1       0        Patuxent River near Bowie, MD
 12     01594526    XXXXX   USGS      0.01     919.75      2.89   -999.0   -999.0   -999.0     1       0        Western Branch at Upper Marlboro, MD
 13     01668000    FDBV2   USGS      0.14    2962.00     47.37    -0.10    34.40    15.71     1       1        Rappahannock River near Fredericksburg, VA
 14     01673000    XXXXX   USGS      0.57     846.17     29.83    -0.10    32.20    15.45     1       0        Pamunkey River near Hanover, VA
 15     01674500    XXXXX   USGS      0.01     478.27     16.10     0.00    30.00    15.00     1       0        Mattaponi River near Beulahville, VA
 16     02037500    RMDV2   USGS      0.28    4857.90    193.43   -999.0   -999.0   -999.0     1       0        James River near Richmond, VA
 17     02041650    MTCV2   USGS      0.48     454.64     37.30   -999.0   -999.0   -999.0     1       0        Appomattox River at Matoaca, VA
 18     02049500    FKNV2   USGS      0.00     650.90     18.03   -999.0   -999.0   -999.0     1       0        Blackwater River near Franklin, VA
 19     02051500    XXXXX   USGS      0.06    1075.40     14.07    -0.20    29.90    15.20     0       1        Meherrin River near Lawrenceville, VA
 20     02035000    XXXXX   USGS      8.94   10244.60    198.86    -0.50    36.00    15.77     0       1        James River at Cartersville, VA
 21     01673638    XXXXX   USGS      0.00      40.47      0.20     0.10    34.00    15.77     0       1        Cohoke Mill Creek near Lester Manor, VA
 22     01649500    XXXXX   USGS      0.04     339.60      2.48    -0.20    32.20    14.20     0       1        NE Branch Anacostia River at Riverdale, MD
 23     01649190    XXXXX   USGS   -999.0     -999.0    -999.0    -0.20    25.50    10.91     0       1        Paint Branch near College Park, MD
 24     01579550    XXXXX   USGS     45.28   28866.00    977.48     0.00    32.00    12.93     0       1        Susquehanna River near Darlington, MD
 25     01481500    XXXXX   USGS      0.91     812.21     14.21     0.00    29.20    13.65     0       1        Brandywine Creek at Wilmington, DE
 26     01490120    XXXXX   USGS   -999.0     -999.0    -999.0    -0.30    35.20    17.27     0       1        Little Blackwater River near Cambridge, MD
Section 2: information of ROMS grids to specify river discharges 
GRID_ID  I/Xpos  J/Ypos  DIR  FLAG  RiverID_Q  Q_Scale  RiverID_TS  TS_Scale    River_Basin_Name 
   1      247     145     0     3       1      -0.448        1       1.000      Nanticoke River near Bridgeville, MD
   2      247     146     0     3       1      -0.552        1       1.000      Nanticoke River near Bridgeville, MD
   3      296     173     0     3       2      -0.317       26       1.000      Choptank River near Greensboro, MD
   4      296     174     0     3       2      -0.339       26       1.000      Choptank River near Greensboro, MD
   5      296     175     0     3       2      -0.348       26       1.000      Choptank River near Greensboro, MD
   6      296     176     0     3       2      -0.348       26       1.000      Choptank River near Greensboro, MD
   7      296     177     0     3       2      -0.390       26       1.000      Choptank River near Greensboro, MD
   8      177     290     1     3       4      -0.103       25       1.000      Big Elk Creek at Elk Mills, MD
   9      178     290     1     3       4      -0.102       25       1.000      Big Elk Creek at Elk Mills, MD
  10      179     290     1     3       4      -0.102       25       1.000      Big Elk Creek at Elk Mills, MD
  11      180     290     1     3       4      -0.101       25       1.000      Big Elk Creek at Elk Mills, MD
  12      181     290     1     3       4      -0.100       25       1.000      Big Elk Creek at Elk Mills, MD
  13      182     290     1     3       4      -0.100       25       1.000      Big Elk Creek at Elk Mills, MD
  14      183     290     1     3       4      -0.100       25       1.000      Big Elk Creek at Elk Mills, MD
  15      184     290     1     3       4      -0.100       25       1.000      Big Elk Creek at Elk Mills, MD
  16      185     290     1     3       4      -0.096       25       1.000      Big Elk Creek at Elk Mills, MD
  17      186     290     1     3       4      -0.096       25       1.000      Big Elk Creek at Elk Mills, MD
  18      145     255     0     3       5       0.198       24       1.000      Susquehanna River at Conowingo, MD
  19      145     256     0     3       5       0.158       24       1.000      Susquehanna River at Conowingo, MD
  20      145     257     0     3       5       0.138       24       1.000      Susquehanna River at Conowingo, MD
  21      145     258     0     3       5       0.137       24       1.000      Susquehanna River at Conowingo, MD
  22      145     259     0     3       5       0.165       24       1.000      Susquehanna River at Conowingo, MD
  23      145     260     0     3       5       0.217       24       1.000      Susquehanna River at Conowingo, MD
  24      156     239     1     3       7      -0.333       23       1.000      Otter Point Creek near Edgewood, MD
  25      157     239     1     3       7      -0.333       23       1.000      Otter Point Creek near Edgewood, MD
  26      158     239     1     3       7      -0.333       23       1.000      Otter Point Creek near Edgewood, MD
  27      146     216     0     3       8       0.429       23       1.000      Gwynns Falls at Washington Blvd., MD
  28      146     217     0     3       8       0.571       23       1.000      Gwynns Falls at Washington Blvd., MD
  29        1     130     0     3       9       0.187        9       1.000      Potomac River near Washington DC
  30        1     131     0     3       9       0.149        9       1.000      Potomac River near Washington DC
  31        1     132     0     3       9       0.131        9       1.000      Potomac River near Washington DC
  32        1     133     0     3       9       0.533        9       1.000      Potomac River near Washington DC
  33       34     135     1     3      10      -1.000       10       1.000      Mattawoman Creek near Pomonkey, MD
  34       58     156     0     3      11       0.372       22       1.000      Patuxent River near Bowie, MD
  35       58     157     0     3      11       0.446       22       1.000      Patuxent River near Bowie, MD
  36       58     158     0     3      11       0.439       22       1.000      Patuxent River near Bowie, MD
  37       60     102     0     3      13       0.374       13       1.000      Rappahannock River near Fredericksburg, VA
  38       60     103     0     3      13       0.626       13       1.000      Rappahannock River near Fredericksburg, VA
  39       80      68     0     3      14       0.139       21       1.000      Pamunkey River near Hanover, VA
  40       80      69     0     3      14       0.262       21       1.000      Pamunkey River near Hanover, VA
  41       80      70     0     3      14       0.459       21       1.000      Pamunkey River near Hanover, VA
  42       80      71     0     3      14       0.402       21       1.000      Pamunkey River near Hanover, VA
  43       80      72     0     3      14       0.266       21       1.000      Pamunkey River near Hanover, VA
  44       20      49     0     3      16       0.222       20       1.000      James River near Richmond, VA
  45       20      50     0     3      16       0.294       20       1.000      James River near Richmond, VA
  46       20      51     0     3      16       0.259       20       1.000      James River near Richmond, VA
  47       20      52     0     3      16       0.201       20       1.000      James River near Richmond, VA
  48       20      53     0     3      16       0.124       20       1.000      James River near Richmond, VA
  49       20      54     0     3      16       0.094       20       1.000      James River near Richmond, VA
  50      142      45     1     3      18       0.474       19       1.000      Blackwater River near Franklin, VA
  51      143      45     1     3      18       0.526       19       1.000      Blackwater River near Franklin, VA

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
