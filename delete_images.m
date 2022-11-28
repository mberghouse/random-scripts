myFolder='C:\Users\marcb\Desktop\PT Simulation\PTSimFrames_multi_grain_51particles\';
% Check to make sure that folder actually exists.  Warn user if it doesn't.
if ~isdir(myFolder)
  errorMessage = sprintf('Error: The following folder does not exist:\n%s', myFolder);
  uiwait(warndlg(errorMessage));
  return;
end
% Get a list of all files in the folder with the desired file name pattern.
prefix='Fig_'

filePattern = fullfile(myFolder,'Fig_*.jpg'); % Change to whatever pattern you need.
theFiles = dir(filePattern);
theFiles = theFiles(~endsWith({theFiles.name}, 'resize.jpg'));
for k = 1 : length(theFiles)
  baseFileName = theFiles(k).name;
  fullFileName = fullfile(myFolder, baseFileName);
  fprintf(1, 'Now deleting %s\n', fullFileName);
  delete(fullFileName);
end
  %im = double(imread([folder,prefix,sprintf('%d.jpg',k)])) ./ level;
