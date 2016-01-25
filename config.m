% ---相关配置信息---%
% title='Faceocc2';
% seq_name = 'faceocc2';
% forMat = '.jpg'; % 数据集格式
% dataPath = [ 'Datasets\' title '\img\']; % 数据集路径
% rect=[118 57 82 98];    % 目标初始位置信息  x,y,w,h
% param.init_rect=rect;   % 目标初始位置信息  x,y,w,h
param.psize = [32 32];  % 图像归一化尺寸
param.numsample=100;    % 粒子滤波采样的候选个数
param.affsig=[4, 4, .02, .03, .001,.000]; %仿射参数