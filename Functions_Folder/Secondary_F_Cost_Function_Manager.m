function  output = Secondary_F_Cost_Function_Manager ( input_Vector, initial_Parameters, phase_Number )

    % input_Vector : Horizontal Vector
%         lambda_2 = input_Vector (1, 1);
%         lambda_3 = input_Vector (1, 2);
%         lambda_4 = input_Vector (1, 3);
%         lambda_5 = input_Vector (1, 4);
%         lambda_6 = input_Vector (1, 5);
%         lambda_7 = input_Vector (1, 6);
%         lambda_8 = input_Vector (1, 7);
%                     
%         epsilon      = input_Vector (1, 8);
%         power_of_Row = input_Vector (1, 9);
       
    % Extraction of Initial Parameters
        epsilon      = initial_Parameters (1, 1);
        syms x;  
        if ( size ( initial_Parameters ( 1, 2 : end ) , 2 ) == 2 )
            first_Coefficient_of_Row = initial_Parameters (1, 2); 
            first_Power_of_Row = initial_Parameters (1, 3);                
            RHO = first_Coefficient_of_Row * ( x ^ first_Power_of_Row );
            
        elseif ( size ( initial_Parameters ( 1, 2 : end ) , 2 ) == 4 )
            first_Coefficient_of_Row = initial_Parameters (1, 2);
            first_Power_of_Row = initial_Parameters (1, 3);                
            second_Coefficient_of_Row = initial_Parameters (1, 4);            
            second_Power_of_Row = initial_Parameters (1, 5);   
            
            RHO = first_Coefficient_of_Row * ( x^first_Power_of_Row ) + second_Coefficient_of_Row * ( x^second_Power_of_Row ) ;
        end
    
        iteration_UpperBountd = size ( input_Vector, 1);
    for loop_Index = 1 : iteration_UpperBountd
        
        % Extraction of Input Chromosome for each Iteration
            lambda_Vector = input_Vector (loop_Index, 1);                          
        
        % Calculation of int(F)    
            temp_F =0;
            for index = 1 : size ( lambda_Vector, 2 )
                temp_F = temp_F + lambda_Vector( 1, index ) * ( 1 - subs(RHO,1-x) )^ (index) ;
            end
            F_Function = epsilon * temp_F-x;
            F_Integral_Vector ( loop_Index, 1 ) = int(F_Function,0,1);

        % Calculation of Max(F)
            Maximum_of_cost_Function ( loop_Index, 1 ) = fminbnd( inline ( -F_Function ) , 0, 1 );
            
        % Displayint the Iteration Index
            fprintf ( ' Loop is in %d-th iteration out of %d possible iteration ( Phase %d : Secondary_F_Cost_Function_Manager ). \n', loop_Index, iteration_UpperBountd, phase_Number );
        
    end
          
        output = [ Maximum_of_cost_Function F_Integral_Vector ];
end
