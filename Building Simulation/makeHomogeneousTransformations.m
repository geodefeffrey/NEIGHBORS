function [A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12] = makeHomogeneousTransformations(degreesTheta1, degreesTheta2, degreesTheta3, degreesTheta4, degreesTheta5,degreesTheta6,degreesTheta7,degreesTheta8 )
%MAKEHOMOGENEOUSTRANSFORMATIONS Create the DH matrices for the arm.

stl_factor = 6233/247;%6233/250;          %scaling factor on buildings due to STL import. Improved STL may remove the need for this. This is set to be as close as collision detection will allow
dist = 436.83;                  %the distance magnitude away from the origin

A1 = homogeneousTransformation(-436.83*stl_factor, 0, 0, -33.8);
A2 = homogeneousTransformation(0, 0, 0, degreesTheta1+33.8);


A3 = homogeneousTransformation(0, 0, 0, degreesTheta2+33.8);

A4 = homogeneousTransformation(-436.83*stl_factor,0, 0, 33.8);
A5 = homogeneousTransformation(0, 0, 0, degreesTheta3-33.8);
A6 = homogeneousTransformation(0, 0, 0, degreesTheta4-33.8);

%2nd building

A7 = homogeneousTransformation(436.83*stl_factor, 0, 0, 33.8);
A8 = homogeneousTransformation(0, 0, 0, degreesTheta5-33.8);


A9 = homogeneousTransformation(0, 0, 0, degreesTheta6-33.8);

A10 = homogeneousTransformation(436.83*stl_factor,0, 0, -33.8);
A11 = homogeneousTransformation(0, 0, 0, degreesTheta7+33.8);
A12 = homogeneousTransformation(0, 0, 0, degreesTheta8+33.8);
end
