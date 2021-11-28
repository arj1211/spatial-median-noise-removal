filenames = dir('preproc-imgs\');
filenames = filenames(3:length(filenames));
mkdir 'distorted-imgs';
mkdir 'distorted-imgs\collage';

p = log10(linspace(2,10,5));

for i = 1:length(p)
    mkdir(strcat('.\distorted-imgs\noise_', num2str(round(p(i)*100))));
end

for i = 1:length(filenames)
    img = imread(strcat('preproc-imgs\',filenames(i).name));
    imarr = [img];
    
    for j = 1:length(p)
        d_img = distort(img, p(j));
        imwrite(d_img, strcat('.\distorted-imgs\noise_', num2str(round(p(j)*100)), '\', filenames(i).name));
        imarr = [imarr d_img];
    end
    
    imwrite(imarr, strcat('distorted-imgs\collage\',filenames(i).name));
end