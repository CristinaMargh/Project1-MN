
function Labyrinth = parse_labyrinth (file_path)
  % file_path -> the relative path to a file that needs to
  %              be loaded_graphics_toolkits
  
  % Labyrinth -> the matrix of all encodings for the labyrinth's walls
  
  % TODO: parse_labyrinth implementation

in = fopen(file_path, 'r');
% we read the size of the matrix ,then each element separately
m = fscanf(in, '%d', 1);
n = fscanf(in, '%d', 1);
for i = 1:m
  for j = 1:n
    Labyrinth(i,j) = fscanf(in, '%d', 1);
  endfor
endfor
fclose(in);
endfunction
