Section 1: Information about USGS or NOS gages where real-time discharges and/or water temperature observations are available
 20   8  1.0  !! NIJ NRIVERS DELT
RiverID STATION_ID NWS_ID AGENCY_ID Q_min Q_max Q_mean  T_min  T_max  T_mean  Q_Flag TS_Flag   River_Name
  1     04024000   SCNM5    USGS    0.0  5000.0 3115.0   0.0    28.0   12.0      1      1     "St. Louis River"
  2     04027000   ODAW3    USGS    0.0  6003.0 4955.0   0.0    28.0   12.0      1      1     "Bad River"
  3     04040000   RKLM4    USGS    0.0  3365.0 1114.0   0.0    28.0   12.0      1      1     "Ontonagon River"       
  4     04127885   XXXXX    USGS    0.0  3271.0 1125.0   0.0    28.0   12.0      1      1     "St. Marys River"    
  5      02AB006   XXXXX    ECCC    0.0  3271.0 1125.0   0.0    28.0   12.0      1      1     "Kaministiquia River"        
  6      02AC002   XXXXX    ECCC    0.0  3271.0 1125.0   0.0    28.0   12.0      1      1     "Black Sturgeon River"
  7      02AD012   XXXXX    ECCC    0.0  3271.0 1125.0   0.0    28.0   12.0      1      1     "Nipigon River"
  8      02BB003   XXXXX    ECCC    0.0  3271.0 1125.0   0.0    28.0   12.0      1      1     "Pic River"
Section 2: Information of FVCOM grids/locations to specify river inputs                            
 GRID_ID NODE_ID ELE_ID DIR    FLAG RiverID_Q  Q_Scale RiverID_T    T_Scale	    River_Basin_Name				 
  1       6507    6507   0  	 3      1	  0.50	    1	      1.0	 "St Louis River " 
  2       4848    4848   0  	 3      1	  0.50	    1	      1.0	 "St Louis River "
  3      17383   17383   0  	 3      2	  1.00	    2	      1.0	 "Bad River"
  4      50785   50785   0  	 3      3	  1.00	    3	      1.0	 "Ontonagon River"
  5      56316   56316   0  	 3      5	  0.33 	    5	      1.0	 "Kaministiquia River"
  6      56313   56313   0       3      5         0.33      5         1.0        "Kaministiquia River"
  7      56307   56307   0       3      5         0.33      5         1.0        "Kaministiquia River"
  8      42987   42987   0       3      6         1.00      6         1.0        "Black Sturgeon River"
  9      43543   43543   0       3      7         0.33      7         1.0        "Nipigon River"
 10      43545   43545   0       3      7         0.33      7         1.0        "Nipigon River"
 11      43546   43546   0       3      7         0.33      7         1.0        "Nipigon River"
 12      99022   99022   0       3      8         1.00      8         1.0        "Pic River"
 13     173932  173932   0       3      4        -0.12      4         1.0        "St Marys River"
 14     173950  173950   0       3      4        -0.12      4         1.0        "St Marys River"
 15     173967  173967   0       3      4        -0.12      4         1.0        "St Marys River"
 16     173982  173982   0       3      4        -0.12      4         1.0        "St Marys River"
 17     173994  173994   0       3      4        -0.13      4         1.0        "St Marys River"
 18     174003  174003   0       3      4        -0.13      4         1.0        "St Marys River"
 19     174010  174010   0       3      4        -0.13      4         1.0        "St Marys River"
 20     174013  174013   0       3      4        -0.13      4         1.0        "St Marys River"

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
