Y=imread('coins.png');
imshow(Y)
imhist(Y) 
intensityValue = Y(100, 150);
thresh = multithresh(Y,1);
level=graythresh(Y);
[counts,x] = imhist(Y,18);
stem(x,counts)
T = otsuthresh(counts);
LP=imbinarize(Y);
imshow(LP)
imshowpair(Y,LP,'montage')
