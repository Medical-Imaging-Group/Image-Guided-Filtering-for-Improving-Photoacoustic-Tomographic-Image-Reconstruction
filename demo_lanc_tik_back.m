
function [x_bp_lsqr, PC, CNR] = demo_lanc_tik_back(A_b,b,BV2,x_ls_qr,r,eps,alpha,betaa)


% back-projected image
x =A_b'*b;
x_bp = reshape(x,201,201);
figure;imshow(imcomplement(x_bp),[]);colorbar;title('back-projected image');
% x_img = x_bp;
% imgmax = max(x_img(:));
% imgmin = min(x_img(:));
% nse = std(x_img(:));
% snr = 20*log((imgmax)/nse)


x_lsqr=reshape(x_ls_qr,201,201);
figure;imshow(imcomplement(x_lsqr),[]);colorbar;title('lsqr image');
tic
x_bp_lsqr = my_filter_guidedfilter(x_bp, x_lsqr, r,eps, alpha, betaa);
toc
figure;imshow(imcomplement(x_bp_lsqr ),[]);colorbar;
[PC1,CNR1] = my_pc_cnr(BV2,x_bp);
[PC2,CNR2] = my_pc_cnr(BV2,x_lsqr);
[PC3,CNR3] = my_pc_cnr(BV2,x_bp_lsqr);
real(PC1),real(PC2),real(PC3)
real(CNR1),real(CNR2),real(CNR3)

PC = real(PC3);
CNR = real(CNR3);

figure;
subplot(131);imshow(imcomplement(x_bp),[]);colorbar;title('back-projected image');
subplot(132);imshow(imcomplement(x_lsqr),[]);colorbar;title('lsqr image');
subplot(133);imshow(imcomplement(x_bp_lsqr),[]);colorbar;title('combined image');


