img = imread("distorted-imgs\noise_60\3.jpg");
msize = 11;
img_med = MedianFilter(img,11);
img_cmf = CMF(img,11);
img_m_diff = abs(img_med - img_cmf);
imarr = [img_med, min(img_m_diff*10,255), img_cmf];
imshow(imarr)