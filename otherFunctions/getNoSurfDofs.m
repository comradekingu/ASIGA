function surfDofs = getNoSurfDofs(varCol)

if varCol.boundaryMethod
    switch varCol.method
        case 'IENSG'
            surfDofs = varCol.dofs/varCol.N;
        otherwise
            surfDofs = varCol.dofs;
    end
else
    counter = 0;
    surfDofs = [];
    for patch = 1:varCol.noPatches
        number = varCol.patches{patch}.nurbs.number;
        surfDofsPatch = 1:prod(number(1:2));
        surfDofs = [surfDofs, surfDofsPatch+counter];
        counter = counter + prod(number);
    end
    surfDofs = numel(setdiff(surfDofs,varCol.dofsToRemove));
end