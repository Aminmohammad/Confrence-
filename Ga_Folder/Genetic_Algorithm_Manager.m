
function [ ranked_Temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ] = Genetic_Algorithm_Manager (     initial_Population, ...                  % A Matrix or '' :  Each Column has the results of a Test for All Variables      
                                                                                                                                    ...                                      % for ex. :     input_Data = [ Cement       :  1  2  3  4  5 ;
                                                                                                                                    ...                                      %                              Lime_Powder  :  6  7  8  9  10;
                                                                                                                                    ...                                      %                              Stone_Powder :  11 12 13 14 15;
                                                                                                                                    ...                                      %                              ...          :       ...
                                                                                                                                    ...                                      %                            ]
                                                                                                                                    ...
                                                                                                                                    initial_Costs, ...                       % A Vertical Vector or ''
                                                                                                                                    ...
                                                                                                                                    initial_Parameters, ...                  % Vertical Structure or '' : any Essential parameter for problem (such as u for Cost function)
                                                                                                                                    ...
                                                                                                                                    number_of_Vars, ...                      % Number of Decision Variables
                                                                                                                                    var_Min_Vector, ...                      % Horizontal Vector or '' : Minimum Value of Vars
                                                                                                                                    var_Max_Vector, ...                      % Horizontal Vector or '' : Maximum Value of Vars
                                                                                                                                    ...
                                                                                                                                    draw_the_Convergence_Fig, ...            % 0 or 1 : Draws COnvergence Procedure
                                                                                                                                    draw_the_Seperated_Histogram_Figs, ...   % 0 or 1 : Draws Seperated Histogram Figures        
                                                                                                                                    draw_the_Integrated_Histogram_Fig, ...   % 0 or 1 : Draws Integrated Histogram Figure       
                                                                                                                                    column_Names, ...                        % Column Names for Histogram
                                                                                                                                    ...
                                                                                                                                    maximum_Iteration, ...
                                                                                                                                    population_Size, ...
                                                                                                                                    p_CrossOver, ...
                                                                                                                                    p_Mutation, ...
                                                                                                                                    deviation,...
                                                                                                                                    ...
                                                                                                                                    codeRate_Best_Value, ...                 % Baest Value that is Assigned to 'CodeRate' : No Limitation
                                                                                                                                    codeRate_Deviation, ...                  % 0 <= codeRate_Deviation <= codeRate_Best_Value
                                                                                                                                    ...
                                                                                                                                    the_Num_of_Pops_for_Demonstration, ...   % The Number of populations for Demonstration
                                                                                                                                    ...                                                                                                                                                            
                                                                                                                                    ranking_Policy )                         % 'Descend' or 'Ascend'   : for 'Descend' the 'Global Best' 'increases'
                                                                                                                                                                                         %             : for 'Ascend'  the 'Global Best' 'descreases'


    %% Phase 1: Determination of initial Conditions    
        % if initial_Population is 'not' empty, we Should check the 'population_Size' with 'size(initial_Population, 2)'
        %    if these values are 'not' the same, we should replace 'size(initial_Population, 2)' instead of 'population_Size'
            if isempty(initial_Population) == 0
                if ( size(initial_Population, 2) >= population_Size )
                    initial_Population = initial_Population (:, 1 : population_Size);   % Elimination of Additional Columns ( Tests)
                    fprintf('Because that "size(initial_Population, 2) >= population_Size " >>> additional Columns (Tests) of "initial_Population" were eliminated.\n');
                    
                else
                    population_Size = size(initial_Population, 2);
                    fprintf('Because that "size(initial_Population, 2) < population_Size " >>> population_Size = size(initial_Population, 2).\n');
                    
                end
            end
        
        % Generic Algorithm Conditions ( Even Numbers for n_Crossover & n_Mutation )
            if ( floor(p_CrossOver * population_Size)/2 ) ==  floor( floor(p_CrossOver * population_Size)/2 )
                n_Crossover = floor(p_CrossOver * population_Size);
            else
                n_Crossover = floor(p_CrossOver * population_Size) - 1 ;
            end
            
            if ( floor(p_Mutation * population_Size)/2 ) ==  floor( floor(p_Mutation * population_Size)/2 )
                n_Mutation = floor(p_Mutation * population_Size);
            else
                n_Mutation = floor(p_Mutation * population_Size) - 1 ;
            end     

    %% Phase 2: Determination of Initial Population 
    
        for loop_Index=1 : population_Size

            % Saving each Chromosome Value in Chromosome_Population(i).value
                if ( isempty (initial_Population) == 1)   % In this Case, we have No 'Initial Population'
                    temp_Random_Vector = Real_Random_Values ( var_Min_Vector, var_Max_Vector, 1, number_of_Vars ); % Horizontal vector
                    chromosome_Population(loop_Index, 1).value = temp_Random_Vector / sum ( temp_Random_Vector );
                    
                elseif ( isempty (initial_Population) == 0)   % In this Case, we have 'Initial Population'
                    chromosome_Population(loop_Index, 1).value = initial_Population (:, loop_Index)' ; % Horizontal vector
                end

            % Cost Function of Initial Population          
                if ( isempty (initial_Costs) == 1)   % In this Case, we have No 'Initial Costs'           
                    chromosome_Population(loop_Index, 1).Total_Cost = Primary_Lambda_Cost_Function_Manager ( [chromosome_Population(loop_Index).value] );
                    % chromosome_Population(loop_Index, 1).Total_Cost : Vertical Structure
                    
                elseif ( isempty (initial_Costs) == 0)   % In this Case, we have 'Initial Costs'
                    chromosome_Population(loop_Index, 1).Total_Cost = initial_Costs (loop_Index, 1) ; 
                    % chromosome_Population(loop_Index, 1).Total_Cost : Vertical Structure
                end

        end

        % Saving Best Cost Function of Initial Population
            total_Cost_Vector = [chromosome_Population(:, 1).Total_Cost];
                               % chromosome_Population(:, 1).Total_Cost : Vertical Structure
                               % total_Cost_Vector : Horizontal Vector
                               
            if ( strcmp (ranking_Policy, 'Ascend' ) == 1 )
                [~, Index_Vector] = sort(total_Cost_Vector, 'ascend');

            elseif ( strcmp (ranking_Policy, 'Descend' ) == 1 )
                [~, Index_Vector] = sort(total_Cost_Vector, 'descend');
            end            

            best_Total_Cost(1, 1).value = chromosome_Population(Index_Vector(1,1)).value;
            best_Total_Cost(1, 1).Total_Cost = chromosome_Population(Index_Vector(1,1)).Total_Cost;
            
        % Saving All Initial Chromosome Population
            for index = 1 : size ( chromosome_Population, 1 )
                all_Chromosomes_of_all_Iterations ( index, 1). value = [chromosome_Population( index, 1).value];
                all_Chromosomes_of_all_Iterations ( index, 1). Total_Cost = [chromosome_Population( index, 1).Total_Cost];
            end
        
    %%  Phase 3 : Updating Chromosomes by Crossover and Mutation  
         for iteration_Index = 1: maximum_Iteration  
              fprintf('Loop is in the %d-th Iteration out of %d possible iterations ( Phase 3 : Crossover and Mutation ).\n', iteration_Index, maximum_Iteration);

            %% Part 1: Crossovering population
                % Selection of Parents for Crossover
                    Selected_Parents_for_Crossover = Crossover_Parents_Selector(chromosome_Population, n_Crossover, 'Minimum_TotalCost', ranking_Policy); %% Methods: 'Minimum_TotalCost' or 'RoulleteWheel'
                                                                                                                                                           % ranking_Policy: 'Ascend' or 'Descend'
                %Crossovering Parents
                    for crossover_Index = 1 : 2 : n_Crossover

                        % Calculation of 'Crossovered_parents'
                            alpha = rand;
                            [crossovered_parent_1, crossovered_parent_2] = Parents_Crosoverer( Selected_Parents_for_Crossover(crossover_Index).value, Selected_Parents_for_Crossover(crossover_Index + 1).value, var_Min_Vector, var_Max_Vector, alpha);

                            crossovered_parents(crossover_Index, 1).value = crossovered_parent_1;
                            crossovered_parents(crossover_Index + 1, 1).value = crossovered_parent_2;

                        % Cost Function of crossovered_parents(i)                    
                            crossovered_parents(crossover_Index, 1).Total_Cost = Primary_Lambda_Cost_Function_Manager ( crossovered_parent_1 );

                        % Cost Function of crossovered_parents(i+1)                    
                            crossovered_parents(crossover_Index + 1 , 1).Total_Cost = Primary_Lambda_Cost_Function_Manager ( crossovered_parent_2 );

                    end


           %% Part 2: Mutating population 
                for mutation_Index = 1 : n_Mutation

                    % Mutating the Pupulation
                        selected_Poulation_Index_for_Mutation = randsample(1 : size ( chromosome_Population, 1), 1);
                        mutated_Population = Population_Mutator( chromosome_Population( selected_Poulation_Index_for_Mutation ).value, deviation, var_Min_Vector, var_Max_Vector);                    
                        mutated_Populations( mutation_Index, 1 ).value = mutated_Population;

                    % Cost Function of crossovered_parents(i+1)                    
                        mutated_Populations( mutation_Index, 1 ).Total_Cost = Primary_Lambda_Cost_Function_Manager ( mutated_Population );
                        
                end

            %% Part 3 : Acumulation of Chromosome_Population && Crossovered_parents && Mutated_Population
                total_Population = [chromosome_Population; crossovered_parents; mutated_Populations];                
                chromosome_Population = Total_Population_Selector ( total_Population, population_Size, 'Minimum_TotalCost', ranking_Policy); %% Methods: 'Minimum_TotalCost' or 'RoulleteWheel'                

                best_Total_Cost(iteration_Index + 1, 1).value = chromosome_Population(1,1).value;
                best_Total_Cost(iteration_Index + 1, 1).Total_Cost = chromosome_Population(1,1).Total_Cost;

                % Saving All Chromosomes from all Iterations
                    total_Chromosomes_of_each_Iteration = [crossovered_parents; mutated_Populations];
                    priliminary_Size_of_All_Chromosomes_of_all_Iterations = size( all_Chromosomes_of_all_Iterations, 1);
                    for index = 1 : size (total_Chromosomes_of_each_Iteration, 1)
                        all_Chromosomes_of_all_Iterations ( priliminary_Size_of_All_Chromosomes_of_all_Iterations + index, 1). value = [total_Chromosomes_of_each_Iteration( index, 1).value];
                        all_Chromosomes_of_all_Iterations ( priliminary_Size_of_All_Chromosomes_of_all_Iterations + index, 1). Total_Cost = [total_Chromosomes_of_each_Iteration( index, 1).Total_Cost];
                    end

         end 

    %% phase 5 : Returning the Output
        % Sorting the 'all_Chromosomes_of_all_Iterations'
            total_Costs_of_all_Chromosomes_of_all_Iterations = [all_Chromosomes_of_all_Iterations(:,1).Total_Cost];

            if ( strcmp (ranking_Policy, 'Ascend' ) == 1 )
                [~, Index_Vector] = sort(total_Costs_of_all_Chromosomes_of_all_Iterations, 'ascend');

            elseif ( strcmp (ranking_Policy, 'Descend' ) == 1 )
                [~, Index_Vector] = sort(total_Costs_of_all_Chromosomes_of_all_Iterations, 'descend');
            end 

            for index = 1 : size ( all_Chromosomes_of_all_Iterations, 1 )
                ranked_all_Chromosomes_of_all_Iterations ( index, 1). value = [all_Chromosomes_of_all_Iterations(Index_Vector( 1, index), 1).value];
                ranked_all_Chromosomes_of_all_Iterations ( index, 1). Total_Cost = [all_Chromosomes_of_all_Iterations(Index_Vector( 1, index), 1).Total_Cost];
            end

    %% phase 4 : Attaching ( Lambda-Populations && CodeRate && SimgaLambda && F && FINT ) Together  
        number_of_all_Members_of_all_Populations_from_all_Iterations = size (ranked_all_Chromosomes_of_all_Iterations , 1);
        
        if ( size ( initial_Parameters, 2 ) == 3 || size ( initial_Parameters, 2 ) == 5 )  %% In this case, " User Selection Mode" is chosen for RHO.
            
            for index = 1 : number_of_all_Members_of_all_Populations_from_all_Iterations
                temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( index , 1 : number_of_Vars ) = [ranked_all_Chromosomes_of_all_Iterations( index, 1). value];
                code_Rate_Output = Code_Rate_Calculator ( temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( index , 1 : number_of_Vars ), initial_Parameters );
                code_Rate_Value   = code_Rate_Output ( 1, 1 );
                code_Rate_Rho_Int = code_Rate_Output ( 1, 2 );
                
                temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( index , number_of_Vars + 1 ) = code_Rate_Rho_Int;
                temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( index , number_of_Vars + 2 ) = code_Rate_Value;
                temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( index , number_of_Vars + 3 ) = [ranked_all_Chromosomes_of_all_Iterations( index, 1). Total_Cost];

                fprintf('Loop is in the %d-th Iteration out of %d possible iterations ( Phase 4 : Attaching ( Lambda-Populations && CodeRate && SimgaLambda for "User Selection Algorithm") Together ).\n', index, number_of_all_Members_of_all_Populations_from_all_Iterations );            

            end
            
        elseif  ( size ( initial_Parameters, 2 ) == 4 )  %% In this case, " LP Mode" is chosen for RHO.
                number_of_all_Possible_CodeRates_for_each_Member_of_each_Population = size ( [ initial_Parameters( 1, 2 ) : initial_Parameters( 1, 3 ) : initial_Parameters( 1, 4) ], 2 );
                temp = number_of_all_Possible_CodeRates_for_each_Member_of_each_Population;
                for index = 1 : number_of_all_Members_of_all_Populations_from_all_Iterations   

                    temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( ( index - 1 ) * temp + 1 : ( index ) * temp , 1 : number_of_Vars     ) = repmat([ranked_all_Chromosomes_of_all_Iterations( index, 1). value], temp, 1 );
                    
                    code_Rate_Output = Code_Rate_Calculator ( temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( index , 1 : number_of_Vars ), initial_Parameters );
                    code_Rate_Values = code_Rate_Output ( :, 1 );
                    code_Rate_Rho_Int = code_Rate_Output ( :, 2 );
                    code_Rate_r_AVGs = code_Rate_Output ( :, 3 );
                    code_Rate_Coeff1 = code_Rate_Output ( :, 4 );
                    code_Rate_Coeff2 = code_Rate_Output ( :, 5 );
                    
                    
                    temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( ( index - 1 ) * temp + 1 : ( index ) * temp ,     number_of_Vars + 1 ) = code_Rate_r_AVGs;
                    temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( ( index - 1 ) * temp + 1 : ( index ) * temp ,     number_of_Vars + 2 ) = code_Rate_Coeff1;
                    temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( ( index - 1 ) * temp + 1 : ( index ) * temp ,     number_of_Vars + 3 ) = code_Rate_Coeff2;
                    temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( ( index - 1 ) * temp + 1 : ( index ) * temp ,     number_of_Vars + 4 ) = code_Rate_Rho_Int;
                    temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( ( index - 1 ) * temp + 1 : ( index ) * temp ,     number_of_Vars + 5 ) = code_Rate_Values;
                    
                    temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( ( index - 1 ) * temp + 1 : ( index ) * temp  ,    number_of_Vars + 6 ) = repmat([ranked_all_Chromosomes_of_all_Iterations( index, 1). Total_Cost], temp, 1 );
                    
                    fprintf('Loop is in the %d-th Iteration out of %d possible iterations ( Phase 4 : Attaching ( Lambda-Populations && CodeRate && SimgaLambda for "LP Selection Algorithm") Together ).\n', index, number_of_all_Members_of_all_Populations_from_all_Iterations );            
                end
        end
        
    %% phase 5 : Ranking the 'temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma'
        if ( strcmp (ranking_Policy, 'Ascend' ) == 1 )
                [~, Index_Vector] = sort( temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( :, end - 1 ), 'ascend');

        elseif ( strcmp (ranking_Policy, 'Descend' ) == 1 )
                [~, Index_Vector] = sort( temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( :, end - 1 ), 'descend');
        end 
        
        for index = 1 : size ( Index_Vector, 1 )
            ranked_Temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( index, :) = temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma(Index_Vector( index, 1 ), : );
            ranked_Temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( index, :) = temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma(Index_Vector( index, 1 ), : );
        end

    %% phase 6 : Printing Top Generations   
%         digits ( 7 );
%         number_of_Population_for_Demonstration = the_Num_of_Pops_for_Demonstration;
%         fprintf ( '\n\n The %d Best populations are : \n', number_of_Population_for_Demonstration );
%         disp ( vpa ( [ (1: number_of_Population_for_Demonstration)' ranked_Temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma( 1: number_of_Population_for_Demonstration , : ) ] ) );
       
    %% phase 7 : Extracting Best Group Based on 'CodeRate'   
%         best_Ranked_Population_based_on_SigmaLambda_and_Selected_Based_on_CodeRate = [];
%         for index = 1 : size ( temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma, 1 ) 
%             if ranked_Temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( index, 10 ) >= ( codeRate_Best_Value - codeRate_Deviation ) &&  temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( index, 10 ) <= ( codeRate_Best_Value + codeRate_Deviation )
%                 best_Ranked_Population_based_on_SigmaLambda_and_Selected_Based_on_CodeRate = temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( index, : );                
%                 break;
%             end
%         end      
%         
%         if isempty ( best_Ranked_Population_based_on_SigmaLambda_and_Selected_Based_on_CodeRate ) == 0
%             fprintf ( '\n\n The Best Population Ranked Based on "SigmaLambda" and Selected Based on "CodeRate" in the range of [ codeRate_Best_Value - codeRate_Deviation, codeRate_Best_Value + codeRate_Deviation ] = [ %d, %d ] is : \n ', codeRate_Best_Value - codeRate_Deviation, codeRate_Best_Value + codeRate_Deviation );        
%             disp ( best_Ranked_Population_based_on_SigmaLambda_and_Selected_Based_on_CodeRate );
%                 
%         else
%             fprintf ( '\n\n No Population Ranked Based on "SigmaLambda" and Selected Based on "CodeRate" in the range of [ codeRate_Best_Value - codeRate_Deviation, codeRate_Best_Value + codeRate_Deviation ] = [ %d, %d ] was Selected. \n ', codeRate_Best_Value - codeRate_Deviation, codeRate_Best_Value + codeRate_Deviation );        
%                 
%         end                          
            
    %% phase 18 : Drawing BestFittness
        if (draw_the_Convergence_Fig == 1)
            
            % Bests of all Iterations
                best_Iterations_Figure = figure;                
                plot([Bests_of_all_Iterations(:, 1).Total_Cost], '*')

                xlabel('Iteration');
                ylabel('Best Cost');
                legend('Total Cost');
                Title = sprintf('Genetic Algorithm Optimization (Bests of all Iterations).\n\n');
                title(Title);
            
            % ranked all Chromosomes of all Iterations ( all CodeRates of all Iterations )                 
                all_Iterations_Figure = figure;
                x_Label = 1 : size ( ranked_Temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma, 1 ); 
                plot( x_Label, ranked_Temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( :, end - 1 ), '*r', 'DisplayName', 'Code-Rate' );

                xlabel('Iteration');
                Title = sprintf('Genetic Algorithm Optimization (Ranked all Chromosomes of all Iterations).\n\n');
                title(Title); 
                
            % ranked all Chromosomes of all Iterations ( all SigmaLambdas of all Iterations ) 
                hold all;
                plot( x_Label, ranked_Temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( :, end ), '--b', 'DisplayName','Total Cost (  SigmaLambda )');
               
            % ranked all Chromosomes of all Iterations ( all SigmaLambdas of all Iterations ) 
                hold all;
                plot( x_Label, ranked_Temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( :, end - 2 ), '-*g', 'DisplayName','Total Cost (  RHO_Int )');

                legend('-DynamicLegend');      
                hold off
        end            
end