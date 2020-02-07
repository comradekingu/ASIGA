scatteringCase = 'BI'; % 'BI' = Bistatic scattering, 'MS' = Monostatic scattering
model = 'S5';

parm = 1;
plot2Dgeometry = 0;
plot3Dgeometry = 0;
if 0
    method = {'BEM'};
    formulation = 'GCBIE';
    solveForPtot = true;
else
    method = {'IE'};
    formulation = 'BGU';
    solveForPtot = false;
    calculateVolumeError = 1;
%     N = 1;
end
% BC = 'NNBC';
BC = 'SSBC';
% BC = 'SHBC';
f = 1e2; 

M = 1:2; %1:5
alpha_s = 240*pi/180;
beta_s = 30*pi/180;
alpha_s = 0;
beta_s = pi/2;
calculateSurfaceError = 1;
calculateFarFieldPattern = 0;
plotResultsInParaview = 1;
initMeshFactZeta = 1;

extraGP = 0; % extra quadrature points
degree = 2;
loopParameters = {'M','degree','method'};
collectIntoTasks
    
method = {'BA'};
% formulation = 'SL2E';
formulation = 'VL2E';
calculateVolumeError = 1;
collectIntoTasks