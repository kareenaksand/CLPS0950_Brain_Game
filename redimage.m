%test read image
RedfileID='1rMywuEU3bLoHCFdjeDYpcUM57usf5Pl7';
RedimageURL= ['https://drive.google.com/uc?id=',RedfileID];
Redfilename= 'red_image.png';
websave(Redfilename, RedimageURL);
RedimageData = imread(Redfilename);
figure
imshow(RedimageData);