 1 2 1 0.1 :NSTA NOBC NEL_OBC DELT
SECTION 1:  WATER LEVEL and WATER TEMPERATURE INFORMATION FOR LATERAL OPEN BOUNDARY
SID   NOS_ID  NWS_ID  AGENCY_ID DATUM  FLAG TS_FLAG BACKUP_SID GRIDID_STA  AS         GAUGE NAME
 1   9076024   RCKM4   NOAA     0.00     0      0         0         1      1.0  Rock Cut, MI
SECTION 2: CONFIGURATION OF LATERAL OPEN BOUNDARY
 GRIDID  NODE_ID WL_STA WL_SID_1 WL_S_1 WL_SID_2 WL_S_2 TS_STA TS_SID_1 TS_S_1 TS_SID_2 TS_S_2
     1 51018       1       1    1.00       0    0.00     1          1    1.00       0    0.00
     2 51112       1       1    1.00       0    0.00     1          1    1.00       0    0.00
SECTION 3: CONFIGURATION OF LATERAL OPEN BOUNDARY
SeqNumber   NODE_1  NODE_2   ElementID     CU_STA      CU_1       CU_2
        1    51018   51112      97079           0          0          0
--------------------------------------------------------------------------------------------------
GLOSSARY:

NSTA   : Total number of observation/climatology stations
NOBC   : Total number of ocean model open boundary grid points
DELT   : Time interval to final open boundary condition time series

SECTION 1: NWLON TIDE GUAGE INFORMATION

SID      : sequential number of observational station
NOS_ID   : NOS NWLON/PORTS tide gauge ID(NWLON, BUOY, CMAN, USGS,etc.)
NWS_ID   : NWS SHEF ID which is used to extract real time data from NWS BUFR files
AGENCY_ID: Agency whs provides observation for this station
DATUM    : Datum to convert water level from MLLW to MSL
FLAG     : indicator of it is a primary or backup station,
           =0, used as a primary station for WL OBC correction using real time observations
           =1, used as a backup station for WL OBC correction using real time observations
TS_FLAG  : indicator of whether it is used for T/S boundary condition,
           =0, no T/S data are used;
           =1, real time T/S obs are used to specify T/S open boundary conditions;
               climatology is automatically used if no real time is available;
           =2, use static historical data set to specify T/S open boundary conditions.
           if TS_FLAG > 0, T/S climatology have to be specified.
BACKUP_SID: SID of backup station for this station. The real time obs at BACKUP_SID
            is used to this station. If BACKUP_SID <=0, there is no backup for this station.
            For instance for DBOFS, Atlantic City's backup station is Cape May (BACKUP_SID=4)
GRIDID_STA : GRIDID of open boundary grid point in Section 2 which the observation gauge
             corresponds to. From GRIDID_STA, IROMS and JROMS can be found in Section 2
             GRIDID_STA <= 0 means the station is out of model domain.
             For a primary station, GRIDID_STA must be a GRIDID listed in Section 2.
             For a backup station, GRIDID_STA can be same as its primary station, and
             may not be used.
             Then the difference between obs and ETSS is computed as,

             diff (error) = Observed SWL (SID) - ETSS(GRIDID_STA)

AS      : correlation coefficient between primary and backup stations, or scaling factor to project SWL
          from backup station to primary station.
GUAGE NAME: Guage Station Name
-----------------------------------------------------------------------
SECTION 2: CONFIGURATION OF LATERAL OPEN BOUNDARY

 GRIDID   : sequential number of open boundary
NODE_ID   : node number along open boundary
 WL_STA   : Number of observed stations used for correction of water level OBC,
            =0,  no correction by observations, use data source of DBASE_WL
            =1, correct  OBC generated from data source DBASE_WL by observations
                from one guage station,therefore,the correction at this grid is,
                 correction=obs_1 * WL_S_1
            =2, correct OBC generated from data source DBASE_WL by observations from
                two guage stations,therefore,the correction at this grid is,
                 correction=obs_1 * WL_S_1 + obs_2 * WL_S_2
WL_SID_1   : SID (first column in Section 1) of first gauge station
WL_SID_2   : SID (first column in Section 1) of second gauge station, it is dummy if WL_STA=1
WL_S_1    : scale factor to multiple observation at first gauge
WL_S_2    : scale factor to multiple observation at second gauge
TS_STA    : Number of observed stations used for correction of T & S OBC,
            =0, use data source of DBASE_TS, no correction by observations
            =1, use data source of DBASE_TS, but corrected by observations from
                one guage station,therefore,the correction at this grid is,
                 correction=obs_1 * T_S_1
            =2, use data source of DBASE_TS, but corrected by observations from
                two guage stations,therefore,the correction at this grid is,
                 correction=obs_1 * T_S_1 + obs_2 * T_S_2
TS_SID_1   : SID (first column in Section 1) of first gauge station
TS_SID_2   : SID (first column in Section 1) of second gauge station
TS_S_1     : scale factor to multiple observation at first gauge
TS_S_2     : scale factor to multiple observation at second gauge
-----------------------------------------------------------------------
NOTES

1. For interpolation, all open points are treated in same way no mater whichever boundary the point is on.
   Then using OBC_ID to assign to corresponding boundary variables (e.g. zeta_south, temp_south, and so on)
2. Then the difference between observation and ETSS is computed as,

             diff (error) = Observed SWL (SID) - ETSS(GRIDID_STA)




