scatteringCase = 'BI'; % 'BI' = Bistatic scattering, 'MS' = Monostatic scattering
model = 'IL';
formulation = 'BGU';
method = 'IE';
parm = 1;
coreMethods = {'IGA','IGA','hp_FEM','linear_FEM'}; % [5, 4, 2, 1, 3]
% coreMethods = {'IGA'}; % [5, 4, 2, 1, 3]
for i_coreM = 1:length(coreMethods) %{'IGA'}
    coreMethod = {coreMethods{i_coreM}};
    for BC = {'SHBC','SSBC','NNBC'} %
        k = 1;
        c_f = 1524;
        omega = k*c_f;
        f = omega/(2*pi); 

        switch coreMethod{1}
            case 'IGA'
                if i_coreM == 1
                    M = 4; % 4
                    degree = 3; %3
                else
                    M = 5;
                    degree = 2:3;
                end
            case 'hp_FEM'
                degree = 2;
                M = 5;
            case 'linear_FEM'
                degree = 2;
                M = 6;
        end
        alpha_s = pi;
        beta_s = 0;
        alpha = alpha_s;
        beta = beta_s;
        plotResultsInParaview = 0;
        calculateFarFieldPattern = 1;
        calculateVolumeError = 1;
        calculateSurfaceError = 0;
        loopParameters = {'M','degree','coreMethod','BC','f'};

        collectIntoTasks
    end
end
return
for j = 1:3
    tasks = studies(9+j).tasks;
    tasks(end+1) = studies(6+j).tasks;
    tasks(end+1) = studies(3+j).tasks(1);
    tasks(end+1) = studies(j).tasks(1);
    tasks(end+1) = studies(3+j).tasks(2);
    studies2(j).tasks = tasks;
end
for j = 1:3
    tasks = studies2(j).tasks;
    for i = 1:numel(tasks)
        task = tasks(i).task;
        M = task.M;
        degree = task.degree;
        t_sys = task.varCol.timeBuildSystem;
        t_sol = task.varCol.tot_time - t_sys;
        noElems = task.varCol.totNoElems;
        dofs = task.varCol.dofs;
        switch task.coreMethod
            case 'IGA'
                fprintf('Mesh ${\\cal M}_{%d,%d,%d}^{\\textsc{iga}}$\t\t\t & %6d\t & %6d \t & %5.2f & %6.2f & %5.2f \\cr\n', ...
                         M, degree, degree-1, noElems, dofs, t_sys, t_sol, task.results.energyError);
            otherwise
                fprintf('Mesh ${\\cal M}_{%d,%d,\\mathrm{i}}^{\\textsc{fem}}$\t & %6d\t & %6d \t & %5.2f & %6.2f & %5.2f \\cr\n', ...
                         M, degree, noElems, dofs, t_sys, t_sol, task.results.energyError);
        end
    end
    fprintf('\n')
end