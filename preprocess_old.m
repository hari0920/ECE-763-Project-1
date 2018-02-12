% Preprocessing the Data
% Starting with one image first. We need to split the data into faces and non-faces.
load('wider_face_train.mat'); % load the mat file with details of the paths
num_faces=0;
%for i=1:length(file_list)
 paths=file_list{1,1}; % get all the paths
 faces=face_bbx_list{1,1}; % get all faces
 %% loop
 for j=1:length(paths)
    image=imread(char(strcat(paths(j),'.jpg'))); % read the image
    rect=cell2mat(faces(j)); %bounding box coordinates
    num_rows=size(rect,1);
    for k=1:num_rows
        if num_faces>1200
         break;
        end
        cropped_face=imcrop(image,rect(k,:)); % crop the face
        cropped_face=imresize(cropped_face,[60 60]);
        %imshow(cropped_face);
        imwrite(cropped_face,strcat('faces/','face',num2str(num_faces),'.jpg')); %write it to a file
        num_faces=num_faces+1; %increment counter
    end
 end
%end