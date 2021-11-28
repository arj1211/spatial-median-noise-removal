filenames = dir('src-imgs\*');
filenames = filenames(3:length(filenames));
mkdir 'preproc-imgs';
for i = 1:length(filenames)
    img = imread(strcat('src-imgs\',filenames(i).name));
    img = imresize(img, [600, 800]);
    if size(img,3) ~= 3
        img = repmat(img, [1,1,3]);
    end
    imwrite(img, strcat('.\preproc-imgs\', num2str(i), '.jpg'));
end