function AddPath(destination)
    %PATHSETTING Summary of this function goes here
    %   Detailed explanation goes here
        current_path=pwd;        
        indices = strfind(current_path,'/');
        if ( isempty ( indices) == 1 )
            indices = strfind(current_path,'\');
        end
        c=current_path(:,1:indices(:,end));
        destination_path=sprintf('%s%s',c,destination);
        addpath(destination_path);
    end

