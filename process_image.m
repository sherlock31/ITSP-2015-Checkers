function resized_image = process_image(str)

global r;
global c;

img1 = imread(str);                     %reading  the image

image1 = imresize(img1,[200 200]);      % resizing the image to 200x2000

image2 = rgb2gray(image1);              %converting rgb to grayscale
image3 = im2bw(image2);                 %converting grayscale image to binary

lap1=fspecial('laplacian',0.4);         %creating laplacian filter
lapimage1=filter2(lap1,image3);         %Applying Laplacian filter

level1 = graythresh(lapimage1);         %Finding global threshold value using otsu's method
resized_image = im2bw(lapimage1,level1); %thresholding

[r,c] = size(resized_image);            %storing size of our image into r and c
columns_with_one = zeros(1,200);        %initially allocating array which will store column numbers of columns having atleast one

for j=1:c                            %Searching through image matrix column by column
    for i=1:r
        if(resized_image(i,j) == 1)
            columns_with_one(j) = 1;    %this checks which all columns have one in it
            break;
        end
    end
end

for j=1:c
    if(columns_with_one(j) ~= 1)
        resized_image(:,1) = [];
    else
        break;
    end
end

for k=1:3
    resized_image = cat(2, zeros(size(resized_image,1),1), resized_image);    %adding zeros in the end of image amtrix
end

end
