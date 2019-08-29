close all
for study_i = 1:numel(studies)  
    study = studies(study_i);
    options = struct('xname',           'surfDofs',  ...
                     'yname',           'surfaceError', ...
                     'plotResults', 	1, ... 
                     'printResults',	1, ... 
                     'axisType',        'loglog', ... 
                     'lineStyle',       '*-', ... 
                     'xLoopName',       'M', ...
                     'subFolderName',   '../results/PhD_S1_IENSG', ...
                     'legendEntries',   {{'method','formulation','N'}}, ...
                     'noXLoopPrms',     1); 

    figure(2)
    printResultsToTextFiles(study,options)
% 
%     options.legendEntries = {'solveForPtot','M','method','degree','parm'};
%     options.xname = 'alpha';
%     options.yname = 'error_p';
%     options.axisType = 'semilogy';
%     options.lineStyle = '-';
%     options.noXLoopPrms = 0;
%     
%     figure(3)
%     printResultsToTextFiles(study,options)
% 
%     options.yname = 'error_pAbs';
%     figure(4)
%     printResultsToTextFiles(study,options)
% 
%     options.yname = 'TS';
%     options.axisType = 'plot';
%     figure(5)
%     printResultsToTextFiles(study,options)
end