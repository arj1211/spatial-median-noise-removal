function distorted_img = distort(img, p)
    x = rand(size(img, 1:2));
    y = rand(size(img, 1:2));
    z = randi(256, size(img)) - 1;
    
    img_rg = img;
    img_rb = img;
    img_gb = img;
    
    img_rg(:,:,3) = z(:,:,3);
    img_rb(:,:,2) = z(:,:,2);
    img_gb(:,:,1) = z(:,:,1);
    
    r1 = uint8(repmat(x>=p, [1,1,3]));
    r2 = uint8(repmat((x<p & y<1/3), [1,1,3]));
    r3 = uint8(repmat((x < p & y >= 1/3 & y < 2/3), [1,1,3]));
    r4 = uint8(repmat((x < p & y >= 2/3), [1,1,3]));
    
    distorted_img = (img .* r1) + (img_rg .* r2) + (img_rb .* r3) + (img_gb .* r4);
end
