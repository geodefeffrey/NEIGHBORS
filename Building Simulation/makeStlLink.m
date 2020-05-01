function p = makeStlLink(stlfilename, parentAxes, faceColor)

set(parentAxes, 'DataAspectRatio', [1 1 1]);
stlTr = stlread(stlfilename);
linkVerts = stlTr.Points;
linkFaces = stlTr.ConnectivityList;
p = patch('Parent', parentAxes, 'Faces',linkFaces,'Vertices',linkVerts,'FaceColor',faceColor);

end