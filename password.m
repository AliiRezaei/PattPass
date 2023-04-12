clc
clear
close all

for x=2:2:6
    for y=2:2:6
        plot(x,y,'o','MarkerSize',30)
        hold on
        grid on
    end
end
set(gcf,'Name','Pattern Password')
axis([0,8,0,8])
m1=[2;2;4;6];
m2=[4;2;4;6];
[xp,yp]=ginput(4);
plot(xp,yp);
for i=1:4
    if abs(xp(i,1)-m1(i,1))<=0.5 && abs(yp(i,1)-m2(i,1))<=0.5
        plot(m1,m2,'g');
    else
        disp('*** Password is not correct ***')
        plot(xp,yp,'r');
        break
    end
end