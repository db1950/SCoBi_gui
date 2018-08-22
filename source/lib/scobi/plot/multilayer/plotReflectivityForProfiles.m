function plotReflectivityForProfiles( Rp1, Rp2 )


%% GET GLOBAL PARAMETERS
sim_counter = ParamsManager.sim_counter;
% Simulation Settings
draw_live_plots = SimSettings.getInstance.draw_live_plots;
% Transmitter Parameters
pol_Tx = TxParams.getInstance.pol_Tx;
pol_Rx = RxParams.getInstance.pol_Rx;
% Dielectric Parameters
fig1 = DielMLDynParams.getInstance.fig1;
fig2 = DielMLDynParams.getInstance.fig2;
% Configuration Parameters
DoYs = ConfigParams.getInstance.DoYs;


if draw_live_plots
    
    Rp1_slab = Rp1{Constants.id_diel_slab,1};
    Rp1_L = Rp1{Constants.id_diel_logistic,1};
    Rp1_2 = Rp1{Constants.id_diel_2nd_order,1};
    Rp1_3 = Rp1{Constants.id_diel_3rd_order,1};
    
    Rp2_slab = Rp2{Constants.id_diel_slab,1};
    Rp2_L = Rp2{Constants.id_diel_logistic,1};
    Rp2_2 = Rp2{Constants.id_diel_2nd_order,1};
    Rp2_3 = Rp2{Constants.id_diel_3rd_order,1};
    
    DoY = DoYs( sim_counter );
    
    figure(fig1)
    subplot(3,4,5:8)
    plot(DoY, Rp1_slab, '-or', 'MarkerFaceColor', 'r', 'markers', 3)
    plot(DoY, Rp2_slab, '-or', 'MarkerFaceColor', 'w', 'markers', 3)
    plot(DoY, Rp1_L, '-ob', 'MarkerFaceColor', 'b', 'markers', 3)
    plot(DoY, Rp2_L, '-ob', 'MarkerFaceColor', 'w', 'markers', 3)
    plot(DoY, Rp1_2, '-ok', 'MarkerFaceColor', 'k', 'markers', 3)
    plot(DoY, Rp2_2, '-ok', 'MarkerFaceColor', 'w', 'markers', 3)
    plot(DoY, Rp1_3, '-oc', 'MarkerFaceColor', 'c', 'markers', 3)
    plot(DoY, Rp2_3, '-oc', 'MarkerFaceColor', 'w', 'markers', 3)
    ylabel('Reflectivity')
    title(strcat('Transmit/Receive Polarization:',  pol_Tx, pol_Rx))

    figure(fig2)
    subplot(2,1,1)
    plot(DoY, Rp1_slab, '-or', 'MarkerFaceColor', 'r', 'markers', 1)
    plot(DoY, Rp2_slab, '-or', 'MarkerFaceColor', 'w', 'markers', 1)
    plot(DoY, Rp1_L, '-ob', 'MarkerFaceColor', 'b', 'markers', 1)
    plot(DoY, Rp2_L, '-ob', 'MarkerFaceColor', 'w', 'markers', 1)
    plot(DoY, Rp1_2, '-ok', 'MarkerFaceColor', 'k', 'markers', 1)
    plot(DoY, Rp2_2, '-ok', 'MarkerFaceColor', 'w', 'markers', 1)
    plot(DoY, Rp1_3, '-oc', 'MarkerFaceColor', 'c', 'markers', 1)
    plot(DoY, Rp2_3, '-oc', 'MarkerFaceColor', 'w', 'markers', 1)
    ylabel('Reflectivity')
    % title(strcat('Transmit/Receive Polarization:',  pol_Tx, pol_Rx))

end

end
