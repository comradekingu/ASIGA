function layer = setPHParameters(noDomains)

layer{1} = struct('media', 'fluid', ...
                  'R_1', 3.5, ...
                  'R_2', 4, ...
                  'gd',  40, ...
                  't',   0.04, ...
                  'c_f', 1500, ...
                  'rho', 1000);
layer{2} = struct('media', 'solid', ...
                  'E', 210e9, ...
                  'nu', 0.3, ...
                  'rho', 7850);
layer{3} = struct('media', 'fluid', ...
                  'c_f', 340, ...
                  'rho', 1.2);

layer = layer(1:noDomains);