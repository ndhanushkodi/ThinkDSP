C = 10^-7;
L = 10^-2;
R1 = 400;
R2 = 50;

%atan imag/real

%mag 1
w = 1:1:100000;
Hmag=(1./((w.^2*R1.^2*C.^2)+(1-w.^2*L*C).^2));
subplot(4,1,1);
loglog(w,Hmag);
title('Magnitude part i');
xlabel('omega (frequency in Hz)');
ylabel('Magnitude');


%phase 1
w = 1:1:100000;
% real = 1./(1-(w.^2*L*C));
% imag = 1./(w*R1*C);

% imag = (w*R1*C)./(-(w.^2*R1^2*C^2) + -(w.^4*L^2*C^2) + 2*w.^2*L*C-1);
% real = (w.^2*L*C-1)./(-w.^2*R1^2*C^2 + -w.^4*L^2*C^2 + 2*w.^2*L*C-1);
% Hphase=atan(imag./real);
Hphase = angle(1./(j*w*R1*C-w.^2*L*C+1));
subplot(4,1,2);
semilogx(w,Hphase);
title('Phase part i');
xlabel('omega (frequency in Hz)');
ylabel('Phase');



%mag 2
w = 1:1:100000;
Hmag2=(1./((w.^2*R2.^2*C.^2)+(1-w.^2*L*C).^2));
subplot(4,1,3);
loglog(w,Hmag2);
title('Magnitude part ii');
xlabel('omega (frequency in Hz)');
ylabel('Magnitude');

%phase 2
w = 1:1:100000;
% real = 1./(1-(w.^2*L*C));
% imag = 1./(w*R2*C);
% imag = (w*R2*C)./(-(w.^2*R2^2*C^2) + -(w.^4*L^2*C^2) + 2*w.^2*L*C-1);
% real = (w.^2*L*C-1)./(-w.^2*R2^2*C^2 + -w.^4*L^2*C^2 + 2*w.^2*L*C-1);
% 
% Hphase=atan(imag./real);
Hphase2 = angle(1./(j*w*R2*C-w.^2*L*C+1));
subplot(4,1,4);
semilogx(w,Hphase2);
title('Phase part ii');
xlabel('omega (frequency in Hz)');
ylabel('Phase');