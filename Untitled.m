config;
% opt.psize = [32 32];
forMat = '.jpg';
for f = 1:500
    
    img_color = imread([dataPath int2str(f) forMat]);
    if size(img_color,3)==3
        img	= im2double(rgb2gray(img_color));
    else
        img	= im2double(img_color);
    end
    
    pause(1);
    imshow(img);
    rect=[118 57 82 98];
    rectangle('position',rect,'EdgeColor','r');
end