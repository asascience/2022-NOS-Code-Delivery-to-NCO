Section 1: Information about USGS or NOS gages where real-time discharges and/or water temperature observations are available
 12   5  1.0  !! NIJ NRIVERS DELT
RiverID STATION_ID NWS_ID AGENCY_ID Q_min Q_max Q_mean  T_min  T_max  T_mean  Q_Flag TS_Flag   River_Name
  1     04127885   XXXXX    USGS    0.0  5000.0 3115.0   0.0    28.0   12.0      1      1     "ST MARY'S RIVER AT SAULT STE. MARIE,ONTARIO    "
  2     04159130   XXXXX    USGS    0.0  6003.0 4955.0   0.0    28.0   12.0      1      1     "ST. CLAIR RIVER AT PORT HURON, MI"
  3     04157005   XXXXX    USGS    0.0   365.0  114.0   0.0    28.0   12.0      1      1     "SAGINAW RIVER AT SAGINAW "       
  4     040851385  XXXXX    USGS    0.0   271.0  125.0   0.0    28.0   12.0      1      1     "FOX RIVER AT GREEN BAY, WI"    
  5     9076070    SWPM4   COOPS -9999.   9999.  9999.   0.0    28.0   12.0      3      1     "use for ST Mary river temperaure"
Section 2: Information of FVCOM grids/locations to specify river inputs                            
 GRID_ID NODE_ID ELE_ID DIR    FLAG RiverID_Q  Q_Scale RiverID_T    T_Scale	    River_Basin_Name				 
  1      95709   95709   0  	 3      1	  0.50	    5	      1.0	 "ST MARY'S RIVER AT SAULT STE. MARIE,ONTARIO    " 
  2      96378   96378   0  	 3      1	  0.50	    5	      1.0	 "ST MARY'S RIVER AT SAULT STE. MARIE,ONTARIO    "
  3     120667  120667   0  	 3      2	 -0.33	    2	      1.0	 "ST. CLAIR RIVER AT PORT HURON, MI"
  4     120665  120665   0  	 3      2	 -0.33	    2	      1.0	 "ST. CLAIR RIVER AT PORT HURON, MI"
  5     120662  120662   0  	 3      2	 -0.33 	    2	      1.0	 "ST. CLAIR RIVER AT PORT HURON, MI"
  6     171375  171375   0  	 3      3	  0.25	    3	      1.0	 "SAGINAW RIVER AT SAGINAW "
  7     171369  171369   0  	 3      3	  0.25	    3	      1.0	 "SAGINAW RIVER AT SAGINAW "
  8     171360  171360   0       3      3         0.25      3         1.0        "SAGINAW RIVER AT SAGINAW "
  9     171348  171348   0       3      3         0.25      3         1.0        "SAGINAW RIVER AT SAGINAW "
 10          6       6   0       3      4         0.33      4         1.0        "FOX RIVER AT GREEN BAY, WI"
 11          4       4   0       3      4         0.33      4         1.0        "FOX RIVER AT GREEN BAY, WI"
 12          1       1   0       3      4         0.33      4         1.0        "FOX RIVER AT GREEN BAY, WI"

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
