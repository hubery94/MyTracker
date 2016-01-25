% --------------------------------------------------------------
% This function is used to process every frame of input dataset,
% return the result index of the best candidate.
% -------------------------------------------------------------

function [AffineParam result_idx] = processFrame(img,param,AffineParam,model)
%   process every frame of image sequences
%   Input
%     -img   image of frame i
%     -param param of inition
%     -AffineParam  affine parameter
%   Output
%     -result_bb    Result location of frame i (moved latter)
%     -AffineParam  affine parameter
%     -result_idx   index of the best candidate

% draw N candidates with particle filter
sz= param.psize;
[wimgs Y AffineParam] = affineSample(img,sz, param, AffineParam);
test_lable=ones(param.numsample,1);
% Norm the candidates
Y=normVector(Y);
% predict the lables of candidates with libsvm
[predict_label, accuracy, dec_values] = libsvmpredict(test_lable, Y', model);
result_idx=find(dec_values==max(dec_values));
% result_bb=wimgs(:,:,result_idx);

end

