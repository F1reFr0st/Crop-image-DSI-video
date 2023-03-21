clc
close all 
clear   

folder = "G:\Camera quality\From Smartphone 1920x1080\";
folder_output = "G:\Camera quality\Croped\From Smartphone 1920x1080\";

counter = 1;
for n = 68:1067
    img = imread(folder + int2str(n) + ".bmp");
    %imshow(img);
    %h = imrect;
    img2 = img(295:1198, 104:989, 1);
    imshow(img2);
    imwrite(img2, folder_output + int2str(counter) + ".bmp");
    disp(int2str(n) + ".bmp")
    counter = counter + 1;
end
disp("Finished");
load handel
sound(y,Fs)
