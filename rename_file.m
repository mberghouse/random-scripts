folder = 'C:\Users\marcb\Desktop\PT simulation\PTSimFrames_multi_grain_51particles\';
prefix = 'Fig_';

for k=1:12000
 file1=[folder, prefix, sprintf('resize%d.jpg ',k)]
 file2=[folder, prefix, sprintf('resize%06d.jpg',k)]
 movefile(file1 ,file2) 
end