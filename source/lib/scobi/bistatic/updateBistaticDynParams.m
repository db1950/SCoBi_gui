% Mehmet Kurum
% Feb 25, 2017
% Mehmet Kurum
% April 6, 2017

function updateBistaticDynParams


%% TO-DO: Work on the realistic SatGeo
%% TRANSMITTER GEOMETRY
[Tgt, TgtI] = transmitterGeometryManuel();


%% BISTATIC GEOMETRY
[rd_m, idn, isn, osp, osn, Tgs, Tgr, TgrI, AntRotZ_Rx, AntRotY_Rx, ...
    AntRot_Rx, AntRotZ_Tx, AllPoints_m, AngT2R_rf, ...
    AngS2R_rf, AngT2S_sf] = bistaticGeometry();


% Initialize Bistatic Parameters
BistaticDynParams.getInstance.update(rd_m, idn, isn, osp, osn, Tgt, ...
    TgtI, Tgs, Tgr, TgrI, AntRotZ_Rx, AntRotY_Rx, AntRot_Rx, AntRotZ_Tx, ...
    AllPoints_m, AngT2R_rf, AngS2R_rf, AngT2S_sf);

end