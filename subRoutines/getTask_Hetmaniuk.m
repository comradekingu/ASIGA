scatteringCase = 'Sweep';
% BC = 'NNBC';
model = 'S1';  % Spherical shell

coreMethod = {'IGA'};
% coreMethod = {'IGA'};
method = {'IE'};
formulation = {'BGC'};


k = [9, 22.5, 36];
% k = [9, 22.5, 36]/10;
c_f = 1500;
f = k*c_f/(2*pi);

alpha_s = 0;
beta_s = -pi/2;  

alpha = 0;
beta = -pi/2;   
r_a = 1.2;

M = 5; % 5
N = 7; % 9

degree = 4;
parm = 2;
calculateSurfaceError = 1;
calculateVolumeError  = 0;
calculateFarFieldPattern = 0;
plot3Dgeometry = 0;
plot2Dgeometry = 0;
initMeshFactXi = 3;
initMeshFactZeta = 4;
useROM = false;

loopParameters = {'f','method','coreMethod','formulation','M','degree','parm'};
collectIntoTasks

method = {'BA'};
formulation = {'VL2E'};
% collectIntoTasks

formulation = {'SL2E'};
collectIntoTasks


noVecsArr = [8,16,24,32,64];        % do not put noVecsArr in loopParameters (this is done automatically)
basisROMcell = {'Pade','Taylor'};  % do not put basisROMcell in loopParameters (this is done automatically)
basisROMcell = {'Pade'};  % do not put basisROMcell in loopParameters (this is done automatically)
noVecsArr = 32;
% noVecsArr = [8,32,64,128];
% k_start = 9/10;
% k_end = 36/10;
% P = 3;
% n = P*noVecs;
% temp = cos(pi/(2*n));
% a = ((k_start+k_end)*temp-(k_end-k_start))/(2*temp);
% b = ((k_start+k_end)*temp+(k_end-k_start))/(2*temp);
% j = 1:n;
% k_arr = 1/2*(a+b)+1/2*(b-a)*cos((2*n-2*j+1)*pi/(2*n));
% k = k_arr(round(linspace(1,n,P)));
M = 5; % 5
N = 7; % 9
% M = 1; 
% N = 2;
useROM = true;
storeFullVarCol = false;
loopParameters = {'method','coreMethod','formulation','M','degree','parm'};
% collectIntoTasks

M = M-1; 
coreMethod = {'hp_FEM'};
% collectIntoTasks


k_ROM = k(1):0.05:k(end);
% k_ROM = k(1):0.005:k(end);
% k_ROM = k(1):0.5:k(end);
k = k_ROM;
% k = (9:1:36)/10;
% k = 36;
c_f = 1500;
f = k*c_f/(2*pi);
useROM = false;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
coreMethod = {'hp_FEM'};
method = {'BA'};
formulation = {'VL2E'};
% collectIntoTasks

formulation = {'SL2E'};
% collectIntoTasks

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
coreMethod = {'IGA'};
M = M+1; 
formulation = {'VL2E'};
% collectIntoTasks

formulation = {'SL2E'};
% collectIntoTasks