clear;
% Enter data by hand if data from a ThingSpeak channel is not available.
%strength = [-90 -90 -90 -90 -40 -20 -22.4 -45 -35 -41 -44 -55 -40 -75 -26]';
% Read data from a ThingSpeak channel.
% Uncomment the next line to read from ThingSpeak.
% strength = thingSpeakRead(CHANNEL_ID, 'ReadKey',READ_API_KEY,'numPoints',15,'fields',FIELD_NUMBER');
%X = [10 550 550 10 50 234 393 129 237 328 448 225 344 457 477]';
%Y = [10 10 410 410 293 210 202 132 130 142 141 272 268 274 200]';

load apartment.mat
X = apartment(:,1);

Y = apartment(:,2);

strength = apartment(:,3);


%picture = imread('HBLL4th.png');
picture = imread('https://raw.githubusercontent.com/dyllbert/heatmaps/main/apartment.jpg');
%picture = imread('https://www.mathworks.com/help/examples/thingspeak/win64/CreateHeatmapOverlayImageTSExample_02.png'); 
% picture = imread('https://raw.githubusercontent.com/dyllbert/heatmaps/main/Clyde.png');
% for kk = 1:5
%     imshow(picture)
%     [x,y] = ginput(1);
%     X(kk) = x;
%     Y(kk) = y;
%     close
%     promt_wifi = 'What is the BYU wifi strength?  \n';
%     strength(kk) = input(promt_wifi);
% end
% strength = strength';
% X = X';
% Y = Y';

% imshow(picture)
% [X,Y] = ginput(15)
% close;

strengthPercent = strength;
%strengthPercent = 2*(strength+100)/100;
[height,width,depth] = size(picture);

OverlayImage=[];
F = scatteredInterpolant(Y, X, strengthPercent,'linear');
for i = 1:height-1
   for j = 1:width-1
          OverlayImage(i,j) = F(i,j);
   end
end
alpha = (~isnan(OverlayImage))*0.6;

imshow(picture);
hold on
OverlayImage = imshow( OverlayImage );
caxis auto
%caxis([-90 -20])  
colormap( OverlayImage.Parent, jet );
colorbar( OverlayImage.Parent );
set( OverlayImage, 'AlphaData', alpha );