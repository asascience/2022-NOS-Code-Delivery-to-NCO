Section 1: Information about USGS or NOS gages where real-time discharges and/or water temperature observations are available
 9   6  1.0  !! NIJ NRIVERS DELT
RiverID STATION_ID NWS_ID AGENCY_ID Q_min Q_max Q_mean  T_min  T_max  T_mean  Q_Flag TS_Flag   River_Name
  1     11459150   XXXXX    USGS    0.0  280.0    2.0       9.5    25.0  20.    1     0    "Petaluma River at Petaluma, CA       "
  2     11180700   XXXXX    USGS    0.0  430.0    3.0       9.5    25.0  20.    1     0    "Alemeda Creek at Union City, CA      "
  3     11458000   XXXXX    USGS    0.0 1000.0  100.0      10.0    23.0  20.    1     0	   "Napa River near Napa, CA             "
  4     11172175   XXXXX    USGS    0.0  100.0    2.0       9.5    25.0  20.    1     0	   "Coyote Creek at Milpitas, CA         "
  5     11169025   XXXXX    USGS    0.0  170.0    3.0       9.5    25.0  20.    1     0	   "Guadalupe River at San Jose, CA      "
  6     9415144    PCOC1    NOAA    0.0  100.0   50.0      10.0    24.0  15.0   2     1    "Port Chicago                         "
 
Section 2: Information of FVCOM grids/locations to specify river inputs                            
 GRID_ID NODE_ID ELE_ID DIR    FLAG RiverID_Q  Q_Scale RiverID_T    T_Scale	    River_Basin_Name				 
  1      46752      12   0  	 3      3	  0.15	    6	      1.0	 "Napa River near Napa, CA             "
  2      46753      13   0  	 3      3	  0.20	    6	      1.0	 "Napa River near Napa, CA             "
  3      46804      14   0  	 3      3	  0.30	    6	      1.0	 "Napa River near Napa, CA             "
  4      46805      15   0  	 3      3	  0.20	    6	      1.0	 "Napa River near Napa, CA             "
  5      46850      16   0  	 3      3	  0.15 	    6	      1.0	 "Napa River near Napa, CA             "
  6      45345      17   0  	 3      1	  1.0	    6	      1.0	 "Petaluma River at Petaluma, CA       "
  7      45670      18   0  	 3      2	  1.0	    6	      1.0	 "Alameda Creek at Union City, CA      "
  8      52543      19   0  	 3      5	  1.0	    6	      1.0	 "Guadalupe River at San Jose, CA      "
  9      52308      20   0  	 3      4    	  1.0  	    6	      1.0	 "Coyote Creek at Milpitas, CA         "

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
          :  2: use stage height, have to modify source code to use the provided formula to ocnvert stage height into discharge
             >=3 discharge at the river is not used, river is for T and Salinity
TS_Flag   :  0: use climatological temperature data (daily mean); 1:use real-time river temperature observations.
River_Bain_Name:  Name of Rivers or river basins
