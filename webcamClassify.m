clear; clc;

cam=webcam;
net=alexnet;

while true
    img=snapshot(cam);
    img=imresize(img,[227,227]);
    %classify
    TITLE=classify(net,img); %search on alexnet
    image(img);
    title(char(TITLE));
    drawnow;
end
