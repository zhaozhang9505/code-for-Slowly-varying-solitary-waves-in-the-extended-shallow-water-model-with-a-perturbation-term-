clc
clear 
close all
x0=-40;
x1=40;
t=0:0.0005:0.001*7000;
N=128*2; %128 0.12 [0,1]



xx=linspace(x0,x1,N+1);
x=xx(1:N);
K=2*pi/(x1-x0)*[-N/2:N/2-1];
k=fftshift(K)';

%u0=6*sech(sqrt(3)*x-10).^2+2*sech(x+5).^2;
u0=2*sech(x+5).^2;


uf=fft(u0);

[t,ufsol]=ode45('eKdV',t,uf,[],k);
usol=ifft(ufsol,[],2,'symmetric');


[X,T]=meshgrid(x,t);

surf(X,T,(usol))
colormap(jet);
shading interp;
xlabel('\it x','FontSize',25,'FontWeight','bold');
ylabel('\it t','FontSize',25,'FontWeight','bold');
set(gca,'FontSize',15,'Fontname', 'Times New Roman');
colorbar
set(gcf,'color','w');
title('Numerical solution');

%% 


ii2=4001;
ii3=8001;
ii4=12001;


figure
subplot(2,2,1)
set(gcf,'color','w');
plot(X(1,:),usol(1,:),'r','LineWidth',1.5)
title([' t = ' num2str(t(1))],'FontSize',15);
axis([min(x),max(x),min(min(usol))-0.1,max(max ...
    (usol))+0.1])
set(gca,'FontSize',15,'Fontname', 'Times New Roman')

subplot(2,2,2)
plot(X(ii2,:),usol(ii2,:),'r','LineWidth',1.5)
title(['t = ' num2str(t(ii2))],'FontSize',15);
axis([min(x),max(x),min(min(usol))-0.1,max(max ...
    (usol))+0.1])
set(gca,'FontSize',15,'Fontname', 'Times New Roman')

subplot(2,2,3)
plot(X(ii3,:),usol(ii3,:),'r','LineWidth',1.5)
title(['t = ' num2str(t(ii3))],'FontSize',15);

axis([min(x),max(x),min(min(usol))-0.1,max(max ...
    (usol))+0.1])
set(gca,'FontSize',15,'Fontname', 'Times New Roman')

subplot(2,2,4)
plot(X(ii4,:),usol(ii4,:),'r','LineWidth',1.5)
title(['t = ' num2str(t(ii4))],'FontSize',15);

axis([min(x),max(x),min(min(usol))-0.1,max(max ...
    (usol))+0.1])
set(gca,'FontSize',15,'Fontname', 'Times New Roman')























%% 
clc
clear 
close all
x0=-100;
x1=100;
t=0:0.0005:0.001*1000;
N=128*2*4; %128 0.12 [0,1]



xx=linspace(x0,x1,N+1);
x=xx(1:N);
K=2*pi/(x1-x0)*[-N/2:N/2-1];
k=fftshift(K)';

u0=6*sech(sqrt(3)*x-10).^2+2*sech(x+5).^2;
%u0=2*sech(x+5).^2;


uf=fft(u0);

[t,ufsol]=ode45('eKdV',t,uf,[],k);
usol=ifft(ufsol,[],2,'symmetric');

%% 


[X,T]=meshgrid(x,t);



surf(X,T,(usol))
colormap(jet);
shading interp;
xlabel('\it x','FontSize',25,'FontWeight','bold');
ylabel('\it t','FontSize',25,'FontWeight','bold');
set(gca,'FontSize',15,'Fontname', 'Times New Roman');
colorbar
set(gcf,'color','w');
title('Numerical solution');
xlim([-20,20]);

%% 
ii2=901;
ii3=961;
ii4=2001;


figure
subplot(2,2,1)
set(gcf,'color','w');
plot(X(1,:),usol(1,:),'r','LineWidth',1.5)
title([' t = ' num2str(t(1))],'FontSize',15);
axis([min(x),max(x),min(min(usol))-0.1,max(max ...
    (usol))+0.1])
set(gca,'FontSize',15,'Fontname', 'Times New Roman')

subplot(2,2,2)
plot(X(ii2,:),usol(ii2,:),'r','LineWidth',1.5)
title(['t = ' num2str(t(ii2))],'FontSize',15);
axis([min(x),max(x),min(min(usol))-0.1,max(max ...
    (usol))+0.1])
set(gca,'FontSize',15,'Fontname', 'Times New Roman')

subplot(2,2,3)
plot(X(ii3,:),usol(ii3,:),'r','LineWidth',1.5)
title(['t = ' num2str(t(ii3))],'FontSize',15);

axis([min(x),max(x),min(min(usol))-0.1,max(max ...
    (usol))+0.1])
set(gca,'FontSize',15,'Fontname', 'Times New Roman')

subplot(2,2,4)
plot(X(ii4,:),usol(ii4,:),'r','LineWidth',1.5)
title(['t = ' num2str(t(ii4))],'FontSize',15);

axis([min(x),max(x),min(min(usol))-0.1,max(max ...
    (usol))+0.1])
set(gca,'FontSize',15,'Fontname', 'Times New Roman')


%% 
%% 
ii2=801;
ii3=961;
ii4=2001;


figure
subplot(2,2,1)
set(gcf,'color','w');
plot(X(1,:),usol(1,:),'r','LineWidth',1.5)
title([' t = ' num2str(t(1))],'FontSize',15);
axis([-30,30,min(min(usol))-0.1,max(max ...
    (usol))+0.1])
set(gca,'FontSize',15,'Fontname', 'Times New Roman')

subplot(2,2,2)
plot(X(ii2,:),usol(ii2,:),'r','LineWidth',1.5)
title(['t = ' num2str(t(ii2))],'FontSize',15);
axis([-30,30,min(min(usol))-0.1,max(max ...
    (usol))+0.1])
set(gca,'FontSize',15,'Fontname', 'Times New Roman')

subplot(2,2,3)
plot(X(ii3,:),usol(ii3,:),'r','LineWidth',1.5)
title(['t = ' num2str(t(ii3))],'FontSize',15);

axis([-30,30,min(min(usol))-0.1,max(max ...
    (usol))+0.1])
set(gca,'FontSize',15,'Fontname', 'Times New Roman')

subplot(2,2,4)
plot(X(ii4,:),usol(ii4,:),'r','LineWidth',1.5)
title(['t = ' num2str(t(ii4))],'FontSize',15);

axis([-30,30,min(min(usol))-0.1,max(max ...
    (usol))+0.1])
set(gca,'FontSize',15,'Fontname', 'Times New Roman')

