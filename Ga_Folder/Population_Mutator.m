function mutated_Population = Population_Mutator ( selected_Population, Deviation, var_Min_Vector, var_Max_Vector)           

% selected_Population : Horizontal Vector
% mutated_Population  : Horizontal Vector

     if ( isempty(var_Min_Vector)==0 && isempty(var_Max_Vector)==0 )
        
        for col_Index = 1 : size (selected_Population, 2)
           temp = unifrnd ( selected_Population(1, col_Index) - Deviation, selected_Population(1, col_Index) + Deviation);
           
           if ( var_Min_Vector(1, col_Index ) > temp ) || ( var_Max_Vector(1, col_Index ) < temp )  
               temp = unifrnd (var_Min_Vector(1, col_Index ), var_Max_Vector(1, col_Index ) );
           end
           
           mutated_Population(1, col_Index) = temp;
        end
       
     else
        for col_Index = 1 : size (selected_Population, 2)
            mutated_Population = unifrnd ( selected_Population(1, col_Index) - Deviation, selected_Population(1, col_Index) + Deviation);
        end
    end
    
    mutated_Population = mutated_Population / sum ( mutated_Population );
    
end
