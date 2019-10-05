clc;
close all;
clear all;
%% Initialise of Lookup Table.
LUP = zeros(255,3);% Making the zero matrix of Lookup table for 255 grey scale
%% MAking RGB Lookup Table for Rainbow colors
%red color
LUP(1:36,1) = 255;
% orange color RGB Value
LUP(37:73,1) = 255;
LUP(37:73,2) = 165;
%yellow color RGB Value
LUP(74:109,1) = 255;
LUP(74:109,2) = 255;
% Green color RGB Value
LUP(110:146,2) = 255;
% blue color RGB Value
LUP(147:183,3) = 255;
%indigo color RGB Value
LUP(184:219,1) =75;
LUP(184:219,3) =130;
% Violet color RGB Value
LUP(220:256,1) = 238;
LUP(220:256,2) = 130;
LUP(220:256,3) = 238;
LUP = LUP./255;% normalise the lookup table between (0,1)
%% making bars with rainbw color
Image = zeros(100,256);
for i = 1:100
  Image(i,:) = (0:255);  
end
Image = Image./255;
figure(1);
imshow(Image);
colormap(LUP);
title('Bar with Rainbow Colors');

%% Part 2 pseudocolor image

%%Making lookup table for pseudocolor
LUT = zeros(255:3);
% Indigo color
LUT(1:16,1) = 75;
LUT(1:16,3) = 130;
%Purple color
LUT(17:32,1) = 160;
LUT(17:32,3) = 200;
%dark purple
LUT(33:48,1) = 110;
LUT(33:48,3) = 220;
% adrk blue
LUT(49:64,1) = 30;
LUT(49:64,2) = 60;
LUT(49:64,3) = 255;
% Medium blue
LUT(65:80,2) = 160;
LUT(65:80,3) = 255;
% Light Blue
LUT(81:96,2) = 200;
LUT(81:96,3) = 200;
%Malachite color
LUT(97:112,2) = 220;
LUT(97:112,3) = 90;
% dark green
LUT(113:128,2) = 128;
% LIMe color
LUT(129:144,2) = 255;
% Yellw green
LUT(145:160,1) = 160;
LUT(145:160,2) = 230;
LUT(145:160,3) = 50;
%yellow color
LUT(161:176,1) = 230;
LUT(161:176,2) = 220;
LUT(161:176,3) = 50;
% dark yellow
LUT(177:192,1) = 230;
LUT(177:192,2) = 175;
LUT(177:192,3) = 45;
% orange color
LUT(193:208,1) = 240;
LUT(193:208,2) = 130;
LUT(193:208,3) = 40;
% pink color
LUT(209:224,1) = 255;
LUT(209:224,2) = 192;
LUT(209:224,3) = 203;
% red color
LUT(225:240,1) = 250;
LUT(225:240,2) = 60;
LUT(225:240,3) = 60;
% Magenta color
LUT(241:256,1) = 128;
LUT = LUT./255;% NOrmalise the matrix because lookup table has range (0 1)
image = zeros(100,256);
for i = 1:100
  image(i,:) = (0:255);  
end
image = image./255;
%% plot the pseudocolor image
figure(2)
imshow(image);
colormap(LUT);
title('Bar with 16 pseudocolor');
%% Plot the hurricane Image 
aa = (imread('BME7112_Data_File_3D.tif'));
figure(3)
imagesc(aa);
colormap(LUT);
 title('Pseudocolor hurricane image')
 %% Plot the brain Image
 bb = imread('BME7112_Data_File_3C.tif');
 figure(4)
 imagesc(bb);
 colormap(LUT);
 title('Pseudocolor Brain image')






