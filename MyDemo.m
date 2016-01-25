% config some parameters
config;

img_color = imread([dataPath int2str(1) forMat]);
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
seq_length=500;
results.type='4corner';
results.res=zeros(2,5,seq_length);
for f = 1:seq_length
    
    img_color = imread([dataPath int2str(f) forMat]);
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
end
resultMat=['./results/' seq_name '_HWJ'];
save(resultMat,'results');