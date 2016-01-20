function  output = Primary_Lambda_Cost_Function_Manager ( lambda_Vector )
    
    % Calculation of Cost Function    
        syms x;
        temp_Lambda_Sigma =0;
        for index = 1 : size ( lambda_Vector, 2 )
            temp_Lambda_Sigma = temp_Lambda_Sigma + lambda_Vector( 1, index ) / ( index + 1 ) ;
        end
        cost_Function = temp_Lambda_Sigma;
          
        output = cost_Function;
end
