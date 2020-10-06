figure('units','normalized','outerposition',[0 0 1 1]);

x = linspace(1,56,56);
y = 25*ones(56,1);
plot(x,y,'r')
hold on;
grid on;


set(gca,'XLim',[1 56],'YLim',[1 40]);
%ax = gca();

title('Room Allocation using PSO');
xlabel('Nth Student');
ylabel('Preferences');
%zlabel('Levi Function');
pause(0.01);
grid on;
grid minor;
hold on;
X = linspace(1,56,56);
video = VideoWriter('Gbest3.avi','Uncompressed AVI');
video.FrameRate = 10;
open(video)

for i=1:458
   fit_value = Gbest_list(i,57);
   iter = Gbest_list(i,58);
   a = 'Iteration ' + string(iter) + ' ' + 'Fitness Value: ' + string(fit_value);
   title(a);
   xlabel('Nth Student');
   ylabel('Preferences');
   Y = Gbest_list(i,1:56);
   %addpoints(curve,Gbest_list(i,1),Gbest_list(i,2),Gbest_list(i,3));
   %head = scatter2(Gbest_list(i,1),Gbest_list(i,2),Gbest_list(i,3),'filled','MarkerFaceColor','b','MarkerEdgeColor','b');
   head = scatter(X,Y, 'filled', 'MarkerFaceColor', 'b','MarkerEdgeColor','b');
   drawnow();
   
   %F(i) = getframe(gcf);
   myFrame = getframe(gcf);
   size(myFrame.cdata)
   writeVideo(video,myFrame)
   
   pause(0.001);
   delete(head);
end

%close(gca)
close(video)

%video = VideoWriter('Gbest2.avi','Uncompressed AVI');
%video.FrameRate = 1;
%open(video)
%writeVideo(video,F);
%close(video)
