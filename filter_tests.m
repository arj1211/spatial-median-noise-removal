orig_img = imread("preproc-imgs\18.jpg");
img = imread("distorted-imgs\noise_60\18.jpg");
im_arr = [img;img;img;img];
im_arr = repmat([orig_img img], 4, 1);
for ms = 3:2:9
newimgs = [ MeanFilter(img,ms);
            MedianFilter(img,ms);
            CMF(img,ms);
            VMF(img,ms) ];
im_arr = [im_arr, newimgs];
end
imshow(im_arr);
imwrite(im_arr, '.\filter-tests.jpg')