function qbshOpt=qbshOptSet
% qbshOptSet: Set up options for QBSH
%	Usage: qbshOpt=qbshOptSet

%	Roger Jang, 20130425

%% ====== Add toolbox paths
%addpath /users/jang/matlab/toolbox/utility
%addpath /users/jang/matlab/toolbox/sap
%% ====== Fixed options
qbshOpt.songDb='childSong';
qbshOpt.anchorPos='songStart';		% 'songStart', 'sentenceStart', or 'noteStart' [����m]
qbshOpt.matchFun='myQbsh';		% Function for matching the query pitch
qbshOpt.usePv=1;			% Use human-labeled pitch vector instead of doing pitch tracking on wave files
qbshOpt.ptOpt=ptOptSet(8000, 8);	% For pitch tracking
qbshOpt.matchType='wave2midi';		% Match type: wave against midi
%% ====== Modifiable options
qbshOpt.method='ls';		% Match method, used in myQbsh.m [����k�A�Ш� myQbsh.m]
qbshOpt.useRest=1;		% Use rest (1: extend previous nonzero note, 0: delete rest) [�O�_�ϥΥ��š]1�G�ϥΫe�@�ӫD�s���ŨӨ��N�A0�G�屼���š^]
%% === LS options
qbshOpt.lowerRatio=0.5;
qbshOpt.upperRatio=2.0;
qbshOpt.resolution=101;		% Resolution of LS [�u�ʦ��Y������]
qbshOpt.lsDistanceType=1;
%% === DTW options
qbshOpt.beginCorner=1;		% Anchored beginning [�Y�T�w]
qbshOpt.endCorner=0;		% Free end [���B��]
qbshOpt.dtwCount=5;		% No of key transposition [�C�����ݶi��X�� DTW]