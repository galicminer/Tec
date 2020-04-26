% Define the ellipse
x   = 0;    y   = 0;    z   = 0;
tl  = 1;   tw  = 1;   td  = 1;
% Create ellipsoid
[eex,eey,eez]  = ellipsoid(x, y, z, tl, tw, td,40);
ex= eez
ey= eex
ez= eey
% Define a 3D grid over area of interest
xx = linspace(min(ex(:)),max(ex(:)),50);
yy = linspace(min(ey(:)),max(ey(:)),50);
zz = linspace(min(ez(:)),max(ez(:)),50);
[X, Y, Z] = meshgrid(xx, yy, zz);
V = [X(:) Y(:) Z(:)]; % rearrange

% Define two planes (ax + bx + cz + d = 0)
a = [0; 0];
b = [-1; -1];
c = [-1; -1];
d = [-1; -1];
% Normal vectors of the planes
n = [a b c];
n(1,:) = n(1,:) / norm(n(1,:));
n(2,:) = n(2,:) / norm(n(2,:));

% Find a point (0,0,z) on each plane
zp = [zeros(2) (d- a * 0 - b * 0)./c];

% Define the area of interest.
% Dot product to test if grid points are below or above the planes
% We want: above plane 1, below plane 2.
V1 = sum(bsxfun(@times, bsxfun(@minus, V, -zp(1,:)), n(1,:)),2);
V2 = sum(bsxfun(@times, bsxfun(@minus, V, -zp(2,:)), n(2,:)),2);
between_planes = (V1 < 0)
% ...and the points have to be inside the ellipsoid
in_ellipse = ((X(:) - x)/tl).^2 + ((Y(:)-y)/tw).^2 + ((Z(:)-z)/td).^2 < 1;
% Final AOI
aoi = between_planes & in_ellipse;

% Add this if you want to also have only values with Z < 0
aoi = aoi & (V(:,3) < 0);

figure;
%surf(ex, ey, ez, 'facecolor','blue','facealpha',.2,...
%    'edgecolor','none')
hold on;
axis equal;
%plot3(V(aoi,1), V(aoi, 2), V(aoi, 3), 'r.')
% Draw the planes
[X,Y] = meshgrid(xx,yy);
Z = cell(2,1);
clr = {'r', 'g'};
for k = 1:2
    Z{k} = (a(k) * X + b(k) * Y + d(k))/ (-c(k));
    %hs(k) = surf(xx, yy, Z{k},'facecolor',clr{k}, 'facealpha',.2, 'edgecolor','none');
    %drawnow;
end
view([-115 10])
% Moving on to smooth representation...
shp = alphaShape(V(aoi,1), V(aoi, 2), V(aoi, 3),1);
hs = plot(shp);
% Create a colormap to use for the patch (color of each vertex)
cmap = jet(size(hs.Vertices,1));
set(hs, 'FaceVertexCData', cmap);
set(hs, 'FaceColor', 'interp'); % smooth interp coloring
set(hs, 'EdgeColor', 'none'); % Remove ugly edges