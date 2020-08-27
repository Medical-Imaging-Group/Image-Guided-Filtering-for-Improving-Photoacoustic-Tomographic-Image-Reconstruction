
close all

% cd('/home/mig128gb1/Desktop/Phd Work/PAT/Acceleration/MY CODES/my_new_codes/my_new_new_codes');
load detectors_40_2(100).mat
cd('/home/mig128gb1/Desktop/Phd Work/PAT/26-oct-2017/Results');

%% blood vessel phantom

b=sdn2_v_bv;
BV2=BV2_bv;
x_bv_40=I_Lsqr_bv_40;
% r=3;
% eps = 1e-1;
% alpha=0.5;
% betaa=0.3;
r=1;
eps = 1e-3;
alpha = 1.05;
betaa = 1.05;
[x_bp_lsqr_bv_40, PC_bp_lsqr_bv_40, CNR_bp_lsqr_bv_40]=demo_lanc_tik_back(A_b,b,BV2,x_bv_40,r,eps,alpha,betaa);

%% derenzo phantom

b=sdn2_v_der;
BV2=BV2_der;
x_der_40=I_Lsqr_der_40;
% r=3;
% eps = 1e-1;
% alpha=0.6;
% betaa=0.6;
r=1;
eps = 1e-3;
alpha = 1.05;
betaa = 1.05;
[x_bp_lsqr_der_40, PC_bp_lsqr_der_40, CNR_bp_lsqr_der_40]=demo_lanc_tik_back(A_b,b,BV2,x_der_40,r,eps,alpha,betaa);

%% pat phantom

b=sdn2_v_pat;
BV2=BV2_pat;
x_pat_40=I_Lsqr_pat_40;
% r=3;
% eps = 1e-1;
% alpha=0.8;
% betaa=0.5;
r=1;
eps = 1e-3;
alpha = 1.05;
betaa = 1.05;
[x_bp_lsqr_pat_40, PC_bp_lsqr_pat_40, CNR_bp_lsqr_pat_40]=demo_lanc_tik_back(A_b,b,BV2,x_pat_40,r,eps,alpha,betaa);

