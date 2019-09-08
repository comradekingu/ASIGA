scatteringCase = 'BI';  % Bistatic scattering
model = 'SS';           % Spherical shell
method = 'IE';          % Method for handling the unbounded domain problem
BC = 'SHBC';            % Boundary condition

plot2Dgeometry              = false;    % Plot cross section of mesh and geometry
plot3Dgeometry              = false;    % Plot visualization of mesh and geometry in 3D
calculateSurfaceError       = false;	% Only if scatteringCase == 'Bi'
calculateSurfEnrgErr        = false;	% Only if scatteringCase == 'Bi'
calculateVolumeError        = false;	% Only if scatteringCase == 'Bi'
plotResultsInParaview       = false;	% Only if scatteringCase == 'Bi'
plotTimeOscillation         = false;	% Create 30 paraview files in order to visualize a dynamic result
plotMesh                    = false;	% Create additional Paraview files to visualize IGA mesh
plotFarField                = true;     % If false, plots the near-field instead
useNeumanProj               = false;    % In BEM; project Neumann boundary conditions onto solution space
runTasksInParallel          = false;    % In BEM; project Neumann boundary conditions onto solution space
solveForPtot                = false;    % In BEM: solve for the total pressure (as opposed to the scattered pressure)
exteriorProblem             = true;     % In BEM: solve for the exterior problem (as opposed to the interior problem)
plotResidualError           = false;    % In Galerkin BEM; plot residual error of the BIE
calculateFarFieldPattern    = true;     % Calculate far field pattern
computeCondNumber           = false;    % Compute the condition number of the global matrix
storeSolution               = false;    % Store the solution vector
storeFullVarCol             = false;    % Store all variable in the varCol variable collector
clearGlobalMatrices         = true;     % Clear memory consuming matrices
useROM                      = false;    % Use reduced order modeling

M = 1;                      % Mesh number
extraGP = 0;                % extra quadrature points
extraGPBEM = 50;            % extra quadrature points around singularities for BEM formulations
agpBEM = 1.4;               % parameter for adaptiv Gauss point integration around singularities for BEM formulations
initMeshFactXi = 1;         % initial number of knots in xi direction
initMeshFactEta = 1;        % initial number of knots in eta direction
initMeshFactZeta = 1;       % initial number of knots in zeta direction
colBEM_C0 = 0;              % In collocation BEM: the scaling factor moving collocation points away from C0-lines
quadMethodBEM = 'Adaptive2';% In BEM: Quadrature method for handling weakly singular integrals
colMethod = 'Grev';         % In collocation BEM: Location of collocation points
applyLoad = 'planeWave';    % Acoustic scattering of plane wave
coreMethod = 'IGA';         % Solution space
N_max = inf;                % number of terms in analytic solution for scattering on spherical shell

alpha_s = NaN;          	% Aspect angle of incident wave
beta_s = NaN;               % Elevation angle of incident wave
alpha = (0:0.5:360)*pi/180; % Aspect angles of observation points
beta = 0;                   % Elevation angle of observation points
r = 1;                      % radii for near-field evaluation. Assume by default plotFarField = true

loopParameters = {'M'};     % parameter study arr to be investigated


