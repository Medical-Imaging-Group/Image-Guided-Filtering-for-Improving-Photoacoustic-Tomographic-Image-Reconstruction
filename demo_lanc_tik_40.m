
% cd('/home/mig128gb1/Desktop/Phd Work/PAT/Acceleration/MY CODES/my_new_codes');
% load('system_narrow_100.mat')
cd('/home/mig128gb1/Desktop/Phd Work/PAT/Acceleration/MY CODES/my_new_codes/my_new_new_codes');
load detectors_40_2(100).mat
cd('/home/mig128gb1/Desktop/Phd Work/PAT/26-oct-2017');
estype = 2;		% estimate type
kmax = 500;		% max number of Lanczos iterations
reorth = 1;		% reorthogonalization on
debug = 0;		% for a clean run

%% derenzo phantom

b=sdn2_v_der; 
xtrue=BV2_der(:); % PAT parameters

tic
[x_der_40,lamopt_der_40,k_der_40,eta_der_40,lamv_der_40] = lbdtikm(A_b,b,estype,[1e-8,1],kmax,reorth,[],debug);
toc
figure;imshow(reshape(x_der_40,201,201),[]);

[PC_der_40,CNR_der_40] = my_pc_cnr(xtrue,x_der_40);

%% pat phantom

b=sdn2_v_pat; 
xtrue=BV2_pat(:); % PAT parameters

tic
[x_pat_40,lamopt_pat_40,k_pat_40,eta_pat_40,lamv_pat_40] = lbdtikm(A_b,b,estype,[1e-8,1],kmax,reorth,[],debug);
toc
figure;imshow(reshape(x_pat_40,201,201),[]);

[PC_pat_40,CNR_pat_40] = my_pc_cnr(xtrue,x_pat_40);


%% bv phantom

b=sdn2_v_bv; 
xtrue=BV2_bv(:); % bv parameters

tic
[x_bv_40,lamopt_bv_40,k_bv_40,eta_bv_40,lamv_bv_40] = lbdtikm(A_b,b,estype,[1e-8,1],kmax,reorth,[],debug);
toc
figure;imshow(reshape(x_bv_40,201,201),[]);

[PC_bv_40,CNR_bv_40] = my_pc_cnr(xtrue,x_bv_40);
