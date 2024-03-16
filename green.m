GreenfileID='16DXUbnRrs8Pqp2tx2wmpapivf3-uGzW3';
GreenimageURL= ['https://drive.google.com/uc?id=',GreenfileID];
Greenfilename= 'green_image.png';
websave(Greenfilename, GreenimageURL);
GreenimageData = imread(Greenfilename);
figure
imshow(GreenimageData);