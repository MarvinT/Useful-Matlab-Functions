function ngon = make_ngon(center, distances, n_gon, thetas)
% size(center) = [2,1] or [1,2] ie [x; y]
% size(distances) = [1,n_gon] or [n_gon,1] or [1,1]
% n_gon = number of points/angles
% size(thetas) = [1,n_gon]

if length(distances) == 1
    distances = repmat(distances, 1, n_gon);
else
    distances = reshape(distances, 1, n_gon);
end
center = reshape(center, 2, 1);

%thetas = linspace(0, 2 * pi * (1 - 1/n_gon), n_gon);
ngon = repmat(center, 1, n_gon) + [cos(thetas); sin(thetas)] .* repmat(distances, 2, 1);
end