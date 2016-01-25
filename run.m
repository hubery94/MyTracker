% This is a demo to run the tracker
% run.m

seqs=configSeqs;
numSeq=length(seqs);
% pathAnno = './anno/';
for idxSeq=1:length(seqs)
    s = seqs{idxSeq};
    s.len = s.endFrame - s.startFrame + 1;
    s.s_frames = cell(s.len,1);
    runDemo(s);
end