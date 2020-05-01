function p = makeStlLink(stlfilename, parentAxes, faceColor)

%don't need if all inputs are used
% if (nargin == 1)
%     parentAxes = gca;
%     faceColor = [.7 .7 .7];
% elseif (nargin == 2)
%     faceColor = [.7 .7 .7];
% end
set(parentAxes, 'DataAspectRatio', [1 1 1]);
stlTr = stlread(stlfilename);
linkVerts = stlTr.Points; 
linkFaces = stlTr.ConnectivityList;
p = patch('Parent', parentAxes, 'Faces',linkFaces,'Vertices',linkVerts,'FaceColor',faceColor);

end