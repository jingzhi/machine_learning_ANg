t=[0:0.001:0.98];
y1=sin(2*pi*4*t);
plot(t,y1)
y2=cos(2*pi*4*t);
hold on;
plot(t,y2,'r')
xlabel('time')
ylabel('value')
legend('sin','cos') %the legend labels in the order of plotting
title('my plot')
print -dpng 'myplot.png'
close
help plot
figure(1);plot(t,y1);
figure(2);plot(t,y2);
subplot(1,2,1) %divide the plot into 1x2 grid, access the first element
axis([0.5 1 -1 1])
alf %clear figure
imagesc(A); %visualize matrix
colorbar
colorbar, colormap gray;
colormap default;