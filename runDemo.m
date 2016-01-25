function runDemo(seq)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% config some parameters
pathAnno = './Datasets/';
imgSavePath=['./resultImage/' seq.name '/'];
if ~exist(imgSavePath,'dir')
    mkdir(imgSavePath);
end
config;
rect_anno = dlmread([pathAnno seq.name '/groundtruth_rect.txt']);
param.init_rect=rect_anno(seq.startFrame,:);
image_no = seq.startFrame;
nz	= strcat('%0',num2str(seq.nz),'d'); %number of zeros in the name of image
id = sprintf(nz,image_no);
seq.s_frames{1} = strcat(seq.path,id,'.',seq.ext);
img_color = imread(seq.s_frames{1});
% 将图像转为灰度图
if size(img_color,3)==3
    %     img	= double(rgb2gray(img_color));  %这两种方式有什么区别啊
    img	= im2double(rgb2gray(img_color));
else
    %     img	= double(img_color);
    img	= im2double(img_color);
end
imshow(img_color);
[model train_sample AffineParam]=init(img,param);
seq_length=seq.len;
results.type='4corner';
results.res=zeros(2,5,seq_length);
results.anno=rect_anno;
results.len=seq.len;
results.tmplsize=param.psize;
results.startFrame=seq.startFrame;
results.annoBegin=seq.startFrame;
for f = 1:seq_length
    
    %     img_color = imread([dataPath int2str(f) forMat]);
    image_no = seq.startFrame + (f-1);
    id = sprintf(nz,image_no);
    seq.s_frames{f} = strcat(seq.path,id,'.',seq.ext);
    img_color = imread(seq.s_frames{f});
    if size(img_color,3)==3
        img	= im2double(rgb2gray(img_color));
    else
        img	= im2double(img_color);
    end
    %     hold on;
    imshow(img_color);
    text(10,10,['#' int2str(f)], 'Color', 'g','fontsize',20)
    [AffineParam result_idx] = processFrame(img,param,AffineParam,model);
    AffineParam.est=affparam2mat(AffineParam.param(:,result_idx));
    color = [ 1 0 0 ];
    [ center corners ] = drawbox([32 32],AffineParam.est , 'Color', color, 'LineWidth', 2.5);
    results.res(:,:,f)=corners;
    axis off;
    drawnow;
    imwrite(frame2im(getframe), [imgSavePath  num2str(f) '.png']);
end
resultMat=['./results/' seq.name '_HWJ'];
save(resultMat,'results');

end

