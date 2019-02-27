function result = knn(trainX, trainclassY,testZ, k, type) 
 
% Classify using the Nearest neighbor algorithm 
% Inputs: 
% 	trainX	       - Train sample matrix, n*d, n points, each d dimentions 
%	trainclassY	   - class of trainX, n*1 
%   testZ          - Test sample matrix , N*d 
%	k		       - Number of nearest neighbors  
%   type           - specified measure distance: 2norm, 1norm  etc. 
% Outputs: 
%	result	       - class of testZ, N*1 
if size(trainX,2) ~= size(testZ,2)                                       
    error ('trainX and testZ must have same column dimensions !')        
end    
n = length(trainclassY);                                         
if ( n < k)                                 
   error('You specified more neighbors than existed points.') 
end                                                                     
 
class = unique(trainclassY);                                
N = size(testZ, 1);                                     
result = zeros(N, 1);                                       
 
if nargin < 5   % no of input args                                                          
    type = '2norm';                                                       
end    
 
switch type                                                               
     case '2norm'                                                               
    for i = 1:N 
        dist            = sqrt(sum((trainX - ones(n,1)*testZ(i,:)).^2,2));       
        [m, indices]    = sort(dist);                                        
        histclass       = hist(trainclassY(indices(1:k)), class);          
        [c, best]       = max(histclass);                                
        result(i)       = class(best);                                     
    end 
     case '1norm'                                                              
    for i = 1:N 
        dist            = sum(abs(trainX - ones(n,1)*testZ(i,:)),2);       
        [m, indices]    = sort(dist);    
        histclass       = hist(trainclassY(indices(1:k)), class); 
        [c, best]       = max(histclass); 
        result(i)       = class(best); 
    end 
     otherwise 
    error('Unknown measure function'); 
end 
