
for study_i = 1:numel(studies)  
    study = studies(study_i);
    options = struct('xname',           'k_ROM',  ...
                     'yname',           'surfaceError', ...
                     'plotResults', 	1, ... 
                     'printResults',	0, ... 
                     'axisType',        'semilogy', ... 
                     'lineStyle',       '-', ... 
                     'xLoopName',       'k_ROM', ...
                     'yScale',          1/100, ... 
                     'subFolderName',   '../results/Hetmaniuk/', ...
                     'legendEntries',   {{'method','coreMethod','formulation','M','degree','basisROM','noVecs'}}, ...
                     'noXLoopPrms',     0); 

    figure(2)
    printResultsToTextFiles(study,options)
%     options.xname = 'k';
%     options.legendEntries = {'method','coreMethod','formulation','M','degree'};
%     figure(3)
%     printResultsToTextFiles(study,options)
end

% 
% real_p_Hetmaniuk = importdata('e3Dss/models/Hetmaniuk2012raa/Figure7_2.csv');
% semilogy(real_p_Hetmaniuk(:,1),real_p_Hetmaniuk(:,2),'DisplayName','Hetmaniuk2012raa Figure 7');
% hold on