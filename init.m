function [model train_sample param1]= init(img,param)
% function init(img,opt)
% Init the tracker
%   Input
%     -img   the image
%     -bb    target location obtained in first frame
%     -param  parameters for inition
%   Output
%
%   首先在目标周围进行采样，构建样本空间，利用粒子滤波框架进行
addpath('./Affine Sample Functions');
% addpath('./libsvm/windows');
rect=param.init_rect;
% rect=[118 57 82 98];
p = [rect(1)+rect(3)/2, rect(2)+rect(4)/2, rect(3), rect(4), 0];
% sz = para.psize;
% opt.psize =[32 32];
% opt.numsample=120;
sz = param.psize;
% opt.tmplsize=sz;

% title = 'Faceocc2';
% dataPath = [ 'Datasets\' title '\img\'];
param0 = [p(1), p(2), p(3)/sz(1), p(5), p(4)/p(3), 0]; %param0 = [px, py, sc, th,ratio,phi];
param0 = affparam2mat(param0);
p0 = p(4)/p(3);
param1 = [];
param1.est = param0';
% forMat = '.jpg';
num_p = 50;
num_n = 200;
% img_color = imread([dataPath int2str(1) forMat]);
% % 将图像转为灰度图
% if size(img_color,3)==3
%     img	= double(rgb2gray(img_color));
% else
%     img	= double(img_color);
% end
% 获取全局模型的训练样本
[A_poso A_nego] = affineTrainG(img, sz, param, param1, num_p, num_n, p0);   % obtain positive and negative templates for the holistic templates
A_pos = A_poso';
A_neg = A_nego';
train_sample=[A_pos;A_neg];
train_sample = normVector(train_sample);
% 对样本进行特征提取
% 选择libsvm做为分类器，训练分类器
% test=A_pos(1,:);
% test_result=reshape(test,32,32);
% imshow(test_result);
lable_p=ones(num_p,1);
lable_n=-1*ones(num_n,1);
train_lable=[lable_p;lable_n];
model=libsvmtrain(train_lable,train_sample,'-c 1 -g 0.07');%'-c 1 -g 0.07'
% [predict_label, accuracy, dec_values] = libsvmpredict(train_lable, train_sample, model);
end

