clear all; close all; clc

% link0 = makeStlLink('STL/Theater_section.STL',gca,[1 0.5 0])
% link1 = makeStlLink('STL/SCARY Robot - Link1-2.Stl',gca,[1 0 0])
% link2 = makeStlLink('STL/SCARY Robot - Link2-2.Stl',gca,[0 0 1])
% link3 = makeStlLink('STL/SCARY Robot - Link3-2.Stl',gca,[1 1 0])

% link0 = makeStlLink('STL/section1.STL',gca,[1 0.5 0])

% link0 = makeStlLink('STL/Theater_section.STL',gca,[1 0.5 0])
link1 = makeStlLink('STL/Theater_section_no_collor.STL',gca,[0 0.5 1])
link1 = makeStlLink('STL/Bench_section_nocollor.STL',gca,[1 0.5 1])


xlabel ("x")
ylabel ("y")
zlabel("z")