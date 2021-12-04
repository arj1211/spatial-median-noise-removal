img = imread("preproc-imgs\12.jpg");
cs = 5; % dot size to show center pixel
ms = 100; % mask size (square sidelength)
step = 20; % to animate faster
for i = 1:step:size(img,1)
    for j = 1:step:size(img,2)
        [dc, bounds] = make_mask(img, [i,j], ms);
        img_d = img;
        img_d(bounds(1,1):bounds(1,2), bounds(2,1):bounds(2,2), :) = 255 - dc;
        img_d(max([1,i-cs]):min([size(img,1),i+cs]) , max([1,j-cs]):min([size(img,2),j+cs]), :) = 0;
        imshow(img_d);
    end
end