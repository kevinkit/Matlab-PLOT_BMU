function [ ring ] = create_discrete_ring( IM_size_X,IM_size_Y,x,y,r )
%CREATE_DISCRETE_RING Summary of this function goes here
%   Creates a discrete ring
    

    ring(1:IM_size_X,1:IM_size_Y) = 0;


    start_x = x -r
    start_y = y -1

    for i=1:r 
   
        ring(start_x + i,start_y + i) = 10;
        
        ring(start_x + i,start_y +2 - i) = 10;
        
        ring(start_x + r + i -1, start_y + 2 - r + i -1) = 10;
        
      
           
        ring(start_x + r + i -1, start_y + r - i +1) = 10;
        
        
    end

    





end

