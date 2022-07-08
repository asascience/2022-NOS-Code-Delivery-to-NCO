Section 1:  Information about USGS rivers where real-time discharges are available: template from "fix/nos_ofs/nos.cbofs.river.ctl"
34  9  1.0  !! NIJ NRIVERS : number of model locations (NIJ) and number of USGS river stations (NRIVERS)
RiverID      USGS_ID       NWS_ID         Q_min          Q_max     Q_mean      T_min    T_max     T_mean   Q_Flag  TS_Flag      River_Station_Name
  1     01014000    XXXXX	USGS	28.6	2520.2	258.93	2	14.3	8.78	1	1	St John	River	MA
  2     01021000    XXXXX	USGS	25.66	353.96	78.22	2	14.3	8.78	1	1	St.Croix MA	
  3     01021500    XXXXX	USGS	6.91	75.61	26.87	2	16.8	8.89	1	1	Machias	MA		
  4     01034500    XXXXX	USGS	96.28	1667.86	366.44	2	17.6	9.29	1	1	Penobscot MA		
  5     01049265    XXXXX	USGS	50.12	1823.6	278.8	3.6	19.6	11.82	1	1	Kennebec MA		
  6     01059000    XXXXX	USGS	58.33	1653.7	184.69	3.6	19.6	11.82	1	1	Androscoggin MA		
  7     01066000    XXXXX	USGS	17.44	419.09	82.85	3.6	19.6	11.82	1	1	Saco MA		
  8     01100000    XXXXX	USGS	33.98	758.89	190.32	3	21.2	11.58	1	1	Merrimack MA		
  9     011055566   XXXXX	USGS	0.76	17.33	4.48	3	21.2	11.58	1	1	Neponset MA	
Section 2: information of ROMS grids to specify river discharges
GRID_ID         I/Xpos  J/Ypos  DIR  FLAG  RiverID_Q  Q_Scale  RiverID_TS  TS_Scale    River_Basin_Name
       1       890     747       1      3   1          -0.333    1              1     St. John River  MA
       2       891     747       1      3   1          -0.333    1              1     St. John River  MA
       3       892     747       1      3   1          -0.333    1              1     St. John River  MA
       4       788     760       1      3   2          -0.250    2              1     V - St. Croix  MA
       5       789     760       1      3   2          -0.250    2              1     V - St. Croix  MA
       6       790     760       1      3   2          -0.250    2              1     V - St. Croix  MA
       7       791     760       1      3   2          -0.250    2              1     V - St. Croix  MA
       8       777     742       0      3   3           0.200    3              1     U - St. Croix  MA
       9       777     743       0      3   3           0.200    3              1     U - St. Croix  MA
      10       777     744       0      3   3           0.200    3              1     U - St. Croix  MA
      11       777     745       0      3   3           0.200    3              1     U - St. Croix  MA
      12       777     746       0      3   3           0.200    3              1     U - St. Croix  MA
      13       715     733       1      3   4          -0.333    4              1     Machias  MA
      14       716     733       1      3   4          -0.333    4              1     Machias  MA
      15       717     733       1      3   4          -0.333    4              1     Machias  MA
      16       557     768       0      3   5          -0.250    5              1     Penobscot  MA
      17       557     769       0      3   5          -0.250    5              1     Penobscot  MA
      18       557     770       0      3   5          -0.250    5              1     Penobscot  MA
      19       557     771       0      3   5          -0.250    5              1     Penobscot  MA
      20       404     732       1      3   6          -0.250    6              1     Kennebec  MA & Androscoggin  MA
      21       405     732       1      3   6          -0.250    6              1     Kennebec  MA & Androscoggin  MA
      22       406     732       1      3   6          -0.250    6              1     Kennebec  MA & Androscoggin  MA
      23       407     732       1      3   6          -0.250    6              1     Kennebec  MA & Androscoggin  MA
      24       320     715       0      3   7           0.333    7              1     Saco  MA
      25       320     716       0      3   7           0.333    7              1     Saco  MA
      26       320     717       0      3   7           0.333    7              1     Saco  MA
      27       226     650       0      3   8           0.333    8              1     Merrimack  MA
      28       226     651       0      3   8           0.333    8              1     Merrimack  MA
      29       226     652       0      3   8           0.333    8              1     Merrimack  MA
      30       163     591       0      3   9           0.200    9              1     Neponset  MA
      31       163     592       0      3   9           0.200    9              1     Neponset  MA
      32       163     593       0      3   9           0.200    9              1     Neponset  MA
      33       163     594       0      3   9           0.200    9              1     Neponset  MA
      34       163     595       0      3   9           0.200    9              1     Neponset  MA
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
