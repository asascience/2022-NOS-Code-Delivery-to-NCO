Section 1: Information about USGS or NOS gages where real-time discharges and/or water temperature observations are available
 7   1  0.25  !! NIJ NRIVERS DELT
RiverID STATION_ID NWS_ID AGENCY_ID Q_min Q_max Q_mean  T_min  T_max  T_mean  Q_Flag TS_Flag   River_Name
  1     04165710   DFWM4    USGS    0.0  8000.0 5200.0     0.0    28.0  12.0    1     1    "DETROIT RIVER AT FORT WAYNE, MI      "
 
Section 2: Information of FVCOM grids/locations to specify river inputs                            
 GRID_ID NODE_ID ELE_ID DIR    FLAG RiverID_Q  Q_Scale RiverID_T    T_Scale	    River_Basin_Name				 
  1          1       2   0  	 3      1	  0.20	    1	      1.0	 "Detriot River at Fort Wayne, MI      "
  2          2       4   0  	 3      1	  0.20	    1	      1.0	 "Detriot River at Fort Wayne, MI      "
  3          3       5   0  	 3      1	  0.20	    1	      1.0	 "Detriot River at Fort Wayne, MI      "
  4          4       7   0  	 3      1	  0.20	    1	      1.0	 "Detriot River at Fort Wayne, MI      "
  5          5       0   0  	 3      1	  0.20 	    1	      1.0	 "Detriot River at Fort Wayne, MI      "
  6       6106   11508   1  	 3      1	  -0.5	    1	      1.0	 "Niagra River at  Lake Erie Outlet, NY"
  7       6105       0   1  	 3      1	  -0.5	    1	      1.0	 "Niagra River at  Lake Erie Outlet, NY"

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
