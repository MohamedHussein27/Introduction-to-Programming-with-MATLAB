function [top_left,top_right,bottom_left,bottom_right]=corners(matrix)
top_left=matrix(1,1);
top_right=matrix(1,end);
bottom_left=matrix(end,1);
bottom_right=matrix(end,end);
end