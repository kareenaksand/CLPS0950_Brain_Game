PurplefileID='1wmvcJvQc4Q0mIqnjCYhIMG60qR44GXNG';
PurpleimageURL= ['https://drive.google.com/uc?id=',PurplefileID];
Purplefilename= 'purple_image.png';
websave(Purplefilename, PurpleimageURL);
PurpleimageData = imread(Purplefilename);
figure
imshow(PurpleimageData);