
% cd('/home/mig128gb1/Desktop/Phd Work/PAT/Acceleration/MY CODES/my_new_codes');
% load('system_narrow_100.mat')
cd('/home/mig128gb1/Desktop/Phd Work/PAT/Acceleration/MY CODES/my_new_codes/my_new_new_codes');
load detectors_40_2(100).mat
cd('/home/mig128gb1/Desktop/Phd Work/PAT/26-oct-2017');

%% derenzo phantom

b=sdn2_v_der; 
xtrue=BV2_der(:); % der parameters
BV2=xtrue;

tic
[IM4_LSQR_der_40,I_Lsqr_der_40] = bpd_lsqr(A_b,b);
toc
 
figure;imshow(imcomplement(IM4_LSQR_der_40 ),[]);colorbar;
[PC_IM4_LSQR_der_40,CNR_IM4_LSQR_der_40] = my_pc_cnr(BV2,IM4_LSQR_der_40);
figure;imshow(imcomplement(reshape(I_Lsqr_der_40,201,201) ),[]);colorbar;
[PC_I_Lsqr_der_40,CNR_I_Lsqr_der_40] = my_pc_cnr(BV2,I_Lsqr_der_40);




%% pat phantom
b=sdn2_v_pat; 
xtrue=BV2_pat(:); % pat parameters
BV2=xtrue;

tic
[IM4_LSQR_pat_40,I_Lsqr_pat_40] = bpd_lsqr(A_b,b);
toc
 
figure;imshow(imcomplement(IM4_LSQR_pat_40 ),[]);colorbar;
[PC_IM4_LSQR_pat_40,CNR_IM4_LSQR_pat_40] = my_pc_cnr(BV2,IM4_LSQR_pat_40);
figure;imshow(imcomplement(reshape(I_Lsqr_pat_40,201,201) ),[]);colorbar;
[PC_I_Lsqr_pat_40,CNR_I_Lsqr_pat_40] = my_pc_cnr(BV2,I_Lsqr_pat_40);


%% bv phantom
b=sdn2_v_bv; 
xtrue=BV2_bv(:); % bv parameters
BV2=xtrue;

tic
[IM4_LSQR_bv_40,I_Lsqr_bv_40] = bpd_lsqr(A_b,b);
toc
 
figure;imshow(imcomplement(IM4_LSQR_bv_40 ),[]);colorbar;
[PC_IM4_LSQR_bv_40,CNR_IM4_LSQR_bv_40] = my_pc_cnr(BV2,IM4_LSQR_bv_40);
figure;imshow(imcomplement(reshape(I_Lsqr_bv_40,201,201) ),[]);colorbar;
[PC_I_Lsqr_bv_40,CNR_I_Lsqr_bv_40] = my_pc_cnr(BV2,I_Lsqr_bv_40);
