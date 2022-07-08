Section 1: Information about USGS or NOS gages where real-time discharges and/or water temperature observations are available
 22   8  1.0  !! NIJ NRIVERS DELT
RiverID STATION_ID NWS_ID AGENCY_ID Q_min Q_max Q_mean  T_min  T_max  T_mean  Q_Flag TS_Flag   River_Name
  1   0421964005   YNTN6    USGS 5000.0 30000.0 7400.0   0.0    28.0   12.0      1      1     "Niagara River"  
  2     04231600   ROHN6    USGS    0.0   603.0  400.0   0.0    28.0   12.0      1      1     "Genesee River"
  3     04249000   OSON6    USGS    0.0   365.0  114.0   0.0    28.0   12.0      1      1     "Oswego River"       
  4     04260500   ARTN6    USGS    0.0   271.0  125.0   0.0    28.0   12.0      1      1     "Black River"    
  5     04250200   PNVN6    USGS    0.0   271.0  125.0   0.0    28.0   12.0      1      1     "Salmon River"        
  6     04260901   BRKQ6    USGS 5000.0 30000.0 7400.0   0.0    28.0   12.0      1      1     "St Law River"
  7      02HC003   XXXXX    ECCC    0.0  3271.0 2125.0   0.0    28.0   12.0      1      1     "Humber River"
  8      02HC024   XXXXX    ECCC    0.0  3271.0 2125.0   0.0    28.0   12.0      1      1     "Don River"
Section 2: Information of FVCOM grids/locations to specify river inputs                            
 GRID_ID NODE_ID ELE_ID DIR    FLAG RiverID_Q  Q_Scale RiverID_T    T_Scale	    River_Basin_Name			
  1       1586    1586   0  	 3      1	  0.25	    1	      1.0	 "Niagara River " 
  2       1588    1588   0  	 3      1	  0.25	    1	      1.0	 "Niagara River"
  3       1589    1589   0  	 3      1	  0.25	    1	      1.0	 "Niagara River"
  4       1591    1591   0  	 3      1	  0.25	    1	      1.0	 "Niagara River"
  5      19606   19606   0  	 3      2	  1.00 	    2	      1.0	 "Genesee River"
  6      37420   37420   0       3      3         1.00      3         1.0        "Oswego River"
  7       1403    1403   0       3      4         1.00      4         1.0        "Black River"
  8      26075   26075   0       3      5         1.00      5         1.0        "Salmon River"
  9      28863   28863   0       3      6       -0.083      6         1.0        "St Law US River"
 10      28862   28862   0       3      6       -0.083      6         1.0        "St Law US River"
 11      28861   28861   0       3      6       -0.083      6         1.0        "St Law US River"
 12      39695   39695   0       3      6       -0.083      6         1.0        "St Law CAN River"
 13      40323   40323   0       3      6       -0.083      6         1.0        "St Law CAN River"
 14      40925   40925   0       3      6       -0.083      6         1.0        "St Law CAN River"
 15      41493   41493   0       3      6       -0.083      6         1.0        "St Law CAN River"
 16      41495   41495   0       3      6       -0.083      6         1.0        "St Law CAN River"
 17      42033   42033   0       3      6       -0.084      6         1.0        "St Law CAN River"
 18      42035   42035   0       3      6       -0.084      6         1.0        "St Law CAN River"
 19      42547   42547   0       3      6       -0.084      6         1.0        "St Law CAN River"
 20      42550   42550   0       3      6       -0.084      6         1.0        "St Law CAN River"
 21       3844    3844   0       3      7         1.00      7         1.0        "Humber River"
 22       7120    7120   0       3      8         1.00      8         1.0        "Don River"

PARAMETER DEFINITION:

NIJ       :  Number of model grids to specify river discharges
NRIVERS   :  Number of USGS river observing stations
DELT      :  Time interval in hours for output time series.
RiverID   :  Serial Identification number of USGS River
STATION_ID:  River Identification number
NWS_ID    :  NWS Identification number for USGS river
AGENCY    :  Station owner agency name 
GRID_NODE :  Serial Identification number for model grid location to specify river input 
FLAG      :  River runoff trace flag, 0: all tracers (T & S) are off; 1: only T is on; 2: only S is on; 3: both
             T and S are on.
RiverID_Q :  RiverID in Section 1 which is used to specify river discharge at the corresponding model grid
RiverID_T :  RiverID in Section 1 which is used to specify river temperature at the corresponding model grid
Q_Scale   :  scaling factor of river discharge at the model grid
T_scale   :  scaling factor of river temperature at corresponding model grid.
Q_min     :  minimum discharge value of the river
Q_mean    :  average discharge value of the river
Q_max     :  maximum discharge value of the river
T_min     :  minimum discharge value of the temperature
T_mean    :  average discharge value of the temperature
T_max     :  maximum discharge value of the temperature
Q_Flag    :  0: use climatological river discharges data (daily mean); 1:use real-time river discharge observations.
          :  2: use stage height, have to modify source code to use the provided formula to convert stage height into discharge
             >=3 discharge at the river is not used, river is for T and Salinity
TS_Flag   :  0: use climatological temperature data (daily mean); 1:use real-time river temperature observations.
River_Bain_Name:  Name of Rivers or river basins
