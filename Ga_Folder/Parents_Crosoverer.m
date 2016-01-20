function [crossovered_parent_1, crossovered_parent_2] = Parents_Crosoverer ( Parent_1, Parent_2, var_Min_Vector, var_Max_Vector, alpha )

% Parent_1 : Horizontal Vector
% Parent_2 : Horizontal Vector
% crossovered_parent_1 : Horizontal Vector
% crossovered_parent_2 : Horizontal Vector

    if ( isempty(var_Min_Vector)==0 && isempty(var_Max_Vector)==0 )
        
        for col_Index = 1 : size (Parent_1, 2)
           temp = alpha * Parent_1(1, col_Index) + (1 - alpha) * Parent_2(1, col_Index);
           
           if ( var_Min_Vector(1, col_Index ) > temp ) || ( var_Max_Vector(1, col_Index ) < temp )  
               temp = unifrnd (var_Min_Vector(1, col_Index ), var_Max_Vector(1, col_Index ) );
           end
           
           crossovered_parent_1(1, col_Index) = temp;
           
           temp = alpha * Parent_2(1, col_Index) + (1 - alpha) * Parent_1(1, col_Index);
           
           if ( var_Min_Vector(1, col_Index ) > temp ) || ( var_Max_Vector(1, col_Index ) < temp )  
               temp = unifrnd (var_Min_Vector(1, col_Index ), var_Max_Vector(1, col_Index ) );
           end
                      
           crossovered_parent_2(1, col_Index) = temp;
        end
       
    else
       crossovered_parent_1 = alpha * Parent_1 + (1 - alpha) * Parent_2;
       crossovered_parent_2 = alpha * Parent_2 + (1 - alpha) * Parent_1;
    end
    
    crossovered_parent_1 = crossovered_parent_1 / sum ( crossovered_parent_1 );
    crossovered_parent_2 = crossovered_parent_2 / sum ( crossovered_parent_2 );
    
end