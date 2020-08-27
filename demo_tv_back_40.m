
% close all
% 
cd('/home/mig128gb1/Desktop/Phd Work/PAT/Acceleration/MY CODES/my_new_codes/my_new_new_codes');
load detectors_40_2(100).mat
% cd('/home/mig128gb1/Desktop/Phd Work/PAT/26-oct-2017/Results');


%%
load('tv_2_phantom.mat');

i=4;

%% blood vessel phantom

b=sdn2_v_bv;
BV2=BV2_bv;
x_bv_40=reshape(x1_sd_bv{i+2},201,201);
% r=1;
% eps = 1e-2;
% alpha=0.7;
% betaa=0.1;
% r=1;
% eps = 1e-2;
% alpha=0.7;
% betaa=0.3;
r=1;
eps = 1e-3;
alpha = 1.05;
betaa = 1.05;
[x_bp_lsqr_bv_40, PC_bp_lsqr_bv_40, CNR_bp_lsqr_bv_40]=demo_lanc_tik_back(A_b,b,BV2,x_bv_40,r,eps,alpha,betaa);

%% derenzo phantom

b=sdn2_v_der;
BV2=BV2_der;
x_der_40=reshape(x1_sd_der{i+2},201,201);
% r=2;
% eps = 1e-2;
% alpha=0.4;
% betaa=0.3;
r=1;
eps = 1e-3;
alpha = 1.05;
betaa = 1.05;
[x_bp_lsqr_der_40, PC_bp_lsqr_der_40, CNR_bp_lsqr_der_40]=demo_lanc_tik_back(A_b,b,BV2,x_der_40,r,eps,alpha,betaa);

%% pat phantom

b=sdn2_v_pat;
BV2=BV2_pat;
x_pat_40=reshape(x1_sd_pat{i+2},201,201);
% r=1;
% eps = 1e-1;
% alpha=0.8;
% betaa=0.2;
r=1;
eps = 1e-3;
alpha = 1.05;
betaa = 1.05;
[x_bp_lsqr_pat_40, PC_bp_lsqr_pat_40, CNR_bp_lsqr_pat_40]=demo_lanc_tik_back(A_b,b,BV2,x_pat_40,r,eps,alpha,betaa);

