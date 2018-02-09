% Preprocessing the Data
% Starting with one image first. We need to split the data into faces and non-faces.
load('wider_face_train.mat'); % load the mat file with details of the paths
num_training_images=0;
%for i=1:length(file_list)
 path=file_list{1,1}; % get all the paths
 face=face_bbx_list{1,1}; % get all faces
 %% loop
 for j=1:length(path)
    image=imread(char(strcat(path(j),'.jpg'))); % read the image
    rect=face(j); %bounding box coordinates
    face=imcrop(image,rect); % crop the face
    imshow(face);
    %imwrite(face,char(strcat(path(j),'face','.jpg'))); %write it to a file
 end
%end