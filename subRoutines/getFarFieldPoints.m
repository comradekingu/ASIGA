function v = getFarFieldPoints(alpha,beta,r)
if length(beta) ~= 1
    error('Not fully implemented')
end
v = zeros(length(alpha)*length(beta)*length(r),3);
counter = 1;
for l = 1:length(r)
    for j = 1:length(beta)
        for i = 1:length(alpha)
            v(counter,:) = r(l)*([cos(beta(j))*cos(alpha(i)), cos(beta(j))*sin(alpha(i)), sin(beta(j))]);
            counter = counter + 1;
        end
    end
end