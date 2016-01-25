function seqs=configSeqs
%  struct('name','football','path','Datasets\football\img\','startFrame',1,'endFrame',74,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
seqVTD={struct('name','soccer','path','Datasets\soccer\img\','startFrame',1,'endFrame',392,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','matrix','path','Datasets\matrix\img\','startFrame',1,'endFrame',100,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','ironman','path','Datasets\ironman\img\','startFrame',1,'endFrame',166,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','deer','path','Datasets\deer\img\','startFrame',1,'endFrame',71,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','skating1','path','Datasets\skating1\img\','startFrame',1,'endFrame',400,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','shaking','path','Datasets\shaking\img\','startFrame',1,'endFrame',365,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','singer1','path','Datasets\singer1\img\','startFrame',1,'endFrame',351,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','singer2','path','Datasets\singer2\img\','startFrame',1,'endFrame',366,'nz',1,'ext','jpg','init_rect', [0,0,0,0])};

seqIVT={struct('name','carDark','path','Datasets\carDark\img\','startFrame',1,'endFrame',393,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','car4','path','Datasets\car4\img\','startFrame',1,'endFrame',659,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','david','path','Datasets\david\img\','startFrame',300,'endFrame',770,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','david2','path','Datasets\david2\img\','startFrame',1,'endFrame',537,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...    
    struct('name','sylvester','path','Datasets\sylvester\img\','startFrame',1,'endFrame',1345,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','trellis','path','Datasets\trellis\img\','startFrame',1,'endFrame',569,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','fish','path','Datasets\fish\img\','startFrame',1,'endFrame',476,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','mhyang','path','Datasets\mhyang\img\','startFrame',1,'endFrame',1490,'nz',1,'ext','jpg','init_rect', [0,0,0,0])};

seqOther={struct('name','coke','path','Datasets\coke\img\','startFrame',1,'endFrame',291,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','bolt','path','Datasets\bolt\img\','startFrame',1,'endFrame',350,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','boy','path','Datasets\boy\img\','startFrame',1,'endFrame',602,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','dudek','path','Datasets\dudek\img\','startFrame',1,'endFrame',1145,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','crossing','path','Datasets\crossing\img\','startFrame',1,'endFrame',120,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','couple','path','Datasets\couple\img\','startFrame',1,'endFrame',140,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','jogging-1','path','Datasets\jogging-1\img\','startFrame',1,'endFrame',307,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','jogging-2','path','Datasets\jogging-2\img\','startFrame',1,'endFrame',307,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','doll','path','Datasets\doll\img\','startFrame',1,'endFrame',3872,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','girl','path','Datasets\girl\img\','startFrame',1,'endFrame',500,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','walking2','path','Datasets\walking2\img\','startFrame',1,'endFrame',500,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','walking','path','Datasets\walking\img\','startFrame',1,'endFrame',412,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','fleetface','path','Datasets\fleetface\img\','startFrame',1,'endFrame',707,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','freeman1','path','Datasets\freeman1\img\','startFrame',1,'endFrame',326,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','freeman3','path','Datasets\freeman3\img\','startFrame',1,'endFrame',460,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','freeman4','path','Datasets\freeman4\img\','startFrame',1,'endFrame',283,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','david3','path','Datasets\david3\img\','startFrame',1,'endFrame',252,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','jumping','path','Datasets\jumping\img\','startFrame',1,'endFrame',313,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','carScale','path','Datasets\carScale\img\','startFrame',1,'endFrame',252,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','skiing','path','Datasets\skiing\img\','startFrame',1,'endFrame',81,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','dog1','path','Datasets\dog1\img\','startFrame',1,'endFrame',1350,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','suv','path','Datasets\suv\img\','startFrame',1,'endFrame',945,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','motorRolling','path','Datasets\motorRolling\img\','startFrame',1,'endFrame',164,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','mountainBike','path','Datasets\mountainBike\img\','startFrame',1,'endFrame',228,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','lemming','path','Datasets\lemming\img\','startFrame',1,'endFrame',1336,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','liquor','path','Datasets\liquor\img\','startFrame',1,'endFrame',1741,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','woman','path','Datasets\woman\img\','startFrame',1,'endFrame',597,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','faceocc1','path','Datasets\faceocc1\img\','startFrame',1,'endFrame',892,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','faceocc2','path','Datasets\faceocc2\img\','startFrame',1,'endFrame',812,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','basketball','path','Datasets\basketball\img\','startFrame',1,'endFrame',725,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','football','path','Datasets\football\img\','startFrame',1,'endFrame',362,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','subway','path','Datasets\subway\img\','startFrame',1,'endFrame',175,'nz',1,'ext','jpg','init_rect', [0 0 0 0]),...    
    struct('name','tiger1','path','Datasets\tiger1\img\','startFrame',6,'endFrame',354,'nz',1,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','tiger2','path','Datasets\tiger2\img\','startFrame',1,'endFrame',365,'nz',1,'ext','jpg','init_rect', [0,0,0,0])};


  seqs=[seqIVT,seqVTD,seqOther];