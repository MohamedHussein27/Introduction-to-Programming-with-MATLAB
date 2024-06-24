function [x,y]= minimax(A)
q=max(max(A));
w=min(min(A));
y=q-w;
x=[max(A.')-min(A.')];