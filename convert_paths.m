%convert_paths

clear; clc;

pathname = 'C:\Users\marcb\Desktop\';
foldername = {'Acidovorax','Geobacter','Paenibacellus'};
subfoldername = {'GS40PL10Z20','GS40PL20Z20','GS80PL10Z20','GS80PL20Z10','GS80PL20Z20'};
subsubfoldername = {'1min','5min'};
bact_len = {[1 5],[2 3],[2.5 3.25]}; %cell with range of bacterial lengths for each species
pix_sz = 6.5;

addpath('C:\Users\marcb\Desktop\');
for species_iter=1:3
    for sfol_iter = 1:5
        for ssfol_iter = 1:2
            addpath([pathname foldername{species_iter} '\' subfoldername{sfol_iter} '\' subsubfoldername{ssfol_iter}]) %add folder to path
            
            %find which files are in the folder
            files = fopen('zfiles.txt'); %open text file
            filenames = textscan(files,'%s'); %read text file with filenames
            filenames = filenames{1};
            fclose(files); %close the text file
            for file_iter = 1:length(filenames)
                file_iter
                name = filenames{file_iter}
                if strcmp(name(end),'x') %only read video files
                    continue
                elseif strcmp(name,'zfiles.txt') %only read video files
                    break
                end
                V = VideoReader('C:\Users\marcb\Desktop\PTsim_512x512_resize_multigrain_72particles.avi');
                n_frames = 12600;
                C = textscan(filenames{file_iter},'%s%s%s%s%s%s%s%s%s%s%s','Delimiter','_','EmptyValue',-Inf); %read filename
                str = char(C{2}); %convert magnification to string
                len = length(str); %find length of string
                m = 1%str2double(str(1:len-1)); %magnification
                filename = 'PTsim_512x512_random_grain_51particles'%filenames{file_iter}; filename = [foldername{species_iter} '_' int2str(sfol_iter) '_' int2str(ssfol_iter) '_' filename(1:length(filename)-4)];
                x = []; y = [];
                for i = 1:10
                    %if exist(['C:\Users\marcb\Desktop\' filename '_paths_' int2str(i) '_jpg_3sigma.mat'],'file')==0
                     %   break
                    %end
                    load(['C:\Users\marcb\Desktop\PTsim_512x512_random_grain_51particles_paths_1_jpg_3sigma.mat']);
                    t = [0 cumsum(dt_vec)];
                    x_paths = x_paths*pix_sz/m;
                    y_paths = y_paths*pix_sz/m;
                    sz = size(x_paths)
                    if sz(1)<length(t)
%                     if exist(['E:\Microbial_Project\NewData\' filename '_paths_' int2str(i+1) '.mat'],'file')==2
%                         display('yep')
                        y_paths(:,~isnan(x_paths(sz(1),:))) = [];
                        x_paths(:,~isnan(x_paths(sz(1),:))) = [];
                    else
                        x_paths(end,:) = [];
                        y_paths(end,:) = [];
                    end
                    sz = size(x_paths)
                    num_add = length(t)-sz(1);
                    x_paths(isnan(x_paths)) = -1000;
                    for num_paths = 1:sz(2)
                        if length(unique(x_paths(:,num_paths)))<10
                            x_paths(:,num_paths) = NaN;
                        end
                    end
                    x_paths(x_paths == -1000) = NaN;
                    x = [x [x_paths; NaN(num_add,sz(2))]];
                    y = [y [y_paths; NaN(num_add,sz(2))]];
                    size(x)
                    a = sum(isnan(x));
                    y(:,a==length(t)) = [];
                    x(:,a==length(t)) = [];
                    size(x)
                    if sz(1)==length(t)
%                     if exist(['E:\Microbial_Project\NewData\' filename '_paths_' int2str(i+1) '.mat'],'file')==0
                        save(['C:\Users\marcb\Desktop\' filename '_paths'],'t','x','y');
                        break
                    end
                end
                 %save(['E:\Microbial_Project\NewData\' filename '_paths'],'t','x','y');
            end
        end
    end
end