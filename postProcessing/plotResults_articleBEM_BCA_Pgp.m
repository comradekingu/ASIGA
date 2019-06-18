
close all
for study_i = [1,3,4]
    study = studies(study_i);
    options = struct('xname',           'agpBEM',  ...
                     'yname',           'surfaceError', ...
                     'plotResults', 	1, ... 
                     'printResults',	1, ... 
                     'axisType',        'semilogy', ... 
                     'lineStyle',       '*-', ... 
                     'xLoopName',       'agpBEM', ...
                     'subFolderName',   '../results/articleBEM_BCA_Pgp', ...
                     'legendEntries',   {{'extraGPBEM','colBEM_C0','formulation','degree','M'}}, ...
                     'noXLoopPrms',     1); 

    figure(2)
    printResultsToTextFiles(study,options)
end
for study_i = [2,3,5]
    study = studies(study_i);
    options = struct('xname',           'extraGPBEM',  ...
                     'yname',           'surfaceError', ...
                     'plotResults', 	1, ... 
                     'printResults',	1, ... 
                     'axisType',        'semilogy', ... 
                     'lineStyle',       '*-', ... 
                     'xLoopName',       'extraGPBEM', ...
                     'subFolderName',   '../results/articleBEM_BCA_Pgp', ...
                     'legendEntries',   {{'agpBEM','colBEM_C0','formulation','degree','M'}}, ...
                     'noXLoopPrms',     1); 

    figure(3)
    printResultsToTextFiles(study,options)
end


