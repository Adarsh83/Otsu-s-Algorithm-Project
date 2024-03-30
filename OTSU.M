Y=imread('coins.png');
imshow(Y)
imhist(Y)
level=graythresh(Y);
[counts,x] = imhist(Y,16);
stem(x,counts)
T = otsuthresh(counts);
BW=imbinarize(Y);
imshowpair(Y,BW,'montage')