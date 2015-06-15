function image3 = process_image_sketcher(str)
%resized_image = 
img1 = imread(str);

image1 = imresize(img1,[400 400]);

image2 = rgb2gray(image1);
image3 = im2bw(image2);      %final selection

for i = 1:400
    for j = 1:400
        if image3(i,j) == 0
            image3(i,j) = 1;
        else
            image3(i,j) = 0;
        end
    end
end

% lap1=fspecial('laplacian',0.4);
% lapimage1=filter2(lap1,image3);
% 
% level1 = graythresh(lapimage1);
% resized_image = im2bw(lapimage1,level1);

% figure(1)
% imshow(image1);
% 
% figure(2)
% imshow(image2);
% 
% figure(3)
% imshow(image3);
% 
% figure(4)
% imshow(lapimage1);
% 
% figure(5)
% imshow(level1);
% 
% figure(6)
% imshow(resized_image);