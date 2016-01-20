function output = Code_Rate_Calculator ( lambda_Vector, initial_Parameters )

    syms x;
    lambda_Polynomial = 0;
    for index = 1 : size ( lambda_Vector, 2 )
        lambda_Polynomial = lambda_Polynomial + lambda_Vector ( 1, index ) * x^index;
    end
%     RHO = x ^ power_of_X;

        if ( size ( initial_Parameters ( 1, 2 : end ) , 2 ) == 2 ) %% "User Selection Mode" for "RHO" with " 1 Sentence"
            first_Coefficient_of_Row = initial_Parameters (1, 2); 
            first_Power_of_Row = initial_Parameters (1, 3);                
            RHO = first_Coefficient_of_Row * ( x ^ first_Power_of_Row );
            
            rate ( 1, 1 ) = 1 - ( int ( RHO, 0 , 1 ) / int ( lambda_Polynomial, 0 , 1 ) );
            rate ( 1, 2 ) = int ( RHO, 0 , 1 );
            
        elseif ( size ( initial_Parameters ( 1, 2 : end ) , 2 ) == 4 ) %% "User Selection Mode" for "RHO" with " 2 Sentences"
            first_Coefficient_of_Row = initial_Parameters (1, 2);
            first_Power_of_Row = initial_Parameters (1, 3);                
            second_Coefficient_of_Row = initial_Parameters (1, 4);            
            second_Power_of_Row = initial_Parameters (1, 5);   
            
            RHO = first_Coefficient_of_Row * ( x^first_Power_of_Row ) + second_Coefficient_of_Row * ( x^second_Power_of_Row ) ;
            
            rate ( 1, 1) = 1 - ( int ( RHO, 0 , 1 ) / int ( lambda_Polynomial, 0 , 1 ) );
            rate ( 1, 2) = int ( RHO, 0 , 1 );
                        
        elseif ( size ( initial_Parameters ( 1, 2 : end ) , 2 ) == 3 ) %% "LP Mode" for "RHO"
            
            Vector_of_all_Possible_RAVGs_for_each_Member_of_each_Population = [ initial_Parameters( 1, 2 ) : initial_Parameters( 1, 3 ) : initial_Parameters( 1, 4) ];
            number_of_all_Possible_CodeRates_for_each_Member_of_each_Population = size ( Vector_of_all_Possible_RAVGs_for_each_Member_of_each_Population, 2 );
            temp = number_of_all_Possible_CodeRates_for_each_Member_of_each_Population;
            
            for index = 1 : temp
                r_AVG = Vector_of_all_Possible_RAVGs_for_each_Member_of_each_Population ( 1,  index );
                r = floor ( r_AVG );
                
                first_Coefficient_of_Row = ( r * ( r + 1 - r_AVG ) )   /  r_AVG;
                first_Power_of_Row = r - 1;               
                second_Coefficient_of_Row = ( r_AVG - r * ( r + 1 - r_AVG ) )   /  r_AVG;      
                second_Power_of_Row = r;

                RHO  = first_Coefficient_of_Row * ( x^first_Power_of_Row ) + second_Coefficient_of_Row * ( x^second_Power_of_Row ) ;
                       
                rate ( index, 1 ) = 1 - ( int ( RHO, 0 , 1 ) / int ( lambda_Polynomial, 0 , 1 ) );
                rate ( index, 2 ) = int ( RHO, 0 , 1 );
                rate ( index, 3 ) = r_AVG;
                rate ( index, 4 ) = first_Coefficient_of_Row;
                rate ( index, 5 ) = second_Coefficient_of_Row;
                
            end
                
        end

    
    
    output = double(vpa(rate));
end