% [ranked_all_Chromosomes_of_all_Iterations all_Chromosomes_of_all_Iterations Bests_of_all_Iterations Global_Best] = Genetic_Algorithm_Manager (     initial_Population, ...                   % A Maxtrix or '' :  Each Column has the results of a Test for All Variables      
%                                                                                                                                                     ...                                      % for ex. :     input_Data = [ Cement       :  1  2  3  4  5 ;
%                                                                                                                                                     ...                                      %                              Lime_Powder  :  6  7  8  9  10;
%                                                                                                                                                     ...                                      %                              Stone_Powder :  11 12 13 14 15;
%                                                                                                                                                     ...                                      %                              ...          :       ...
%                                                                                                                                                     ...                                      %                            ]
%                                                                                                                                                     ...
%                                                                                                                                                     initial_Costs, ...                       % A Vertical Vector or ''
%                                                                                                                                                     ...
%                                                                                                                                                     initial_Parameters, ...                  % Vertical Structure or '' : any Essential parameter for problem (such as u for Cost function)
%                                                                                                                                                     ...
%                                                                                                                                                     number_of_Vars, ...                      % Number of Decision Variables
%                                                                                                                                                     var_Min_Vector, ...                      % Horizontal Vector or '' : Minimum Value of Vars
%                                                                                                                                                     var_Max_Vector, ...                      % Horizontal Vector or '' : Maximum Value of Vars
%                                                                                                                                                     ...
%                                                                                                                                                     draw_the_Convergence_Fig, ...            % 0 or 1 : Draws COnvergence Procedure
%                                                                                                                                                     draw_the_Seperated_Histogram_Figs, ...   % 0 or 1 : Draws Seperated Histogram Figures        
%                                                                                                                                                     draw_the_Integrated_Histogram_Fig, ...   % 0 or 1 : Draws Integrated Histogram Figure       
%                                                                                                                                                     column_Names, ...                        % Column Names for Histogram
%                                                                                                                                                     ...
%                                                                                                                                                     maximum_Iteration, ...
%                                                                                                                                                     population_Size, ...
%                                                                                                                                                     p_CrossOver, ...
%                                                                                                                                                     p_Mutation, ...
%                                                                                                                                                     deviation,...
%                                                                                                                                                     ...
%                                                                                                                                                     the_Num_of_Pops_for_Demonstration, ...   % The Number of populations for Demonstration
%                                                                                                                                                     ...
%                                                                                                                                                     ranking_Policy )                         % 'Descend' or 'Ascend'   : for 'Descend' the 'Global Best' 'increases'
%                                                                                                                                                                                                          %             : for 'Ascend'  the 'Global Best' 'descreases'
%                                                                             
%                                                                             


clc
close all;
warning off MATLAB:namelengthmaxexceeded;

% Adding the Essential Folders       
    AddPath( 'Functions_Folder' );
    AddPath( 'Ga_Folder' ); 
    
% Number of Variables
     n_Var = 7;
     var_Min = 10;
     var_Max = 200;

tic
[ranked_Temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ] = Genetic_Algorithm_Manager (   [], ...                                  % A Maxtrix or '' :  Each Column has the results of a Test for All Variables      
                                                                                                                        ...                                      % for ex. :     input_Data = [ Cement       :  1  2  3  4  5 ;
                                                                                                                        ...                                      %                              Lime_Powder  :  6  7  8  9  10;
                                                                                                                        ...                                      %                              Stone_Powder :  11 12 13 14 15;
                                                                                                                        ...                                      %                              ...          :       ...
                                                                                                                        ...                                      %                            ]
                                                                                                                        ...
                                                                                                                        [], ...                                  % A Vertical Vector or ''
                                                                                                                        ...
                                                                                                                        [ .5  3 .1 10 ], ...                     % Vertical Structure or '' : any Essential parameter for problem (such as [ epsilon power_of_Row ] for Cost function)
                                                                                                                        ...                                      % [ epsilon coeff1 pow1 ]                      : "User Selection Mode" for "RHO" with " 1 Sentence"
                                                                                                                        ...                                                                                     :  [ Lambda_Vars Rho_Int code_Rate lambda_Int ]
                                                                                                                        ...
                                                                                                                        ...                                      % [ epsilon coeff1 pow1 coeff2 pow2 ]          : "User Selection Mode" for "RHO" with " 2 Sentences"
                                                                                                                        ...                                                                                     :  [ Lambda_Vars Rho_Int code_Rate lambda_Int ]
                                                                                                                        ...
                                                                                                                        ...                                      % [ epsilon r_AVG_Start r_AVG_Step r_AVG_End ] : "LP Mode" for "RHO"
                                                                                                                        ...                                                                                     :  [ Lambda_Vars r_AVG coeff_1 coeff_2 Rho_Int code_Rate lambda_Int ]
                                                                                                                        ...
                                                                                                                        ...
                                                                                                                        n_Var, ...                               % Number of Decision Variables
                                                                                                                        var_Min * ones ( 1, n_Var ), ...         % Horizontal Vector or '' : Minimum Value of Vars
                                                                                                                        var_Max * ones ( 1, n_Var ), ...         % Horizontal Vector or '' : Maximum Value of Vars
                                                                                                                        ...
                                                                                                                        0, ...                                   % 0 or 1 : Draws COnvergence Procedure
                                                                                                                        0, ...                                   % 0 or 1 : Draws Seperated Histogram Figures        
                                                                                                                        0, ...                                   % 0 or 1 : Draws Integrated Histogram Figure       
                                                                                                                        [], ...                                  % Column Names for Histogram
                                                                                                                        ...
                                                                                                                        1, ...
                                                                                                                        20, ...
                                                                                                                        .8, ...
                                                                                                                        .1, ...
                                                                                                                        10,...
                                                                                                                        ...
                                                                                                                        .5, ...                                 % Baest Value that is Assigned to 'CodeRate' : No Limitation
                                                                                                                        .0004, ...                              % 0 <= codeRate_Deviation <= codeRate_Best_Value
                                                                                                                        ...
                                                                                                                        100, ...                                % The Number of populations for Demonstration
                                                                                                                        ...
                                                                                                                        'Ascend' );                             % 'Descend' or 'Ascend'   : for 'Descend' the 'Global Best' 'increases'
                                                                                                                                                                %                         : for 'Ascend'  the 'Global Best' 'descreases'
                                                                                                                                                                                                                                                                                                                            
temp = ranked_Temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma;
end_Time = toc;
fprintf ( 'The Total Simulation Time : %d (Seconds) && %d (Minutes) && %d (Hours)', end_Time, end_Time/60, end_Time/3600);

save( 'ranked_Temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma.mat', 'temp' );

% %% Drawing Output
%     all_Iterations_Figure = figure;
%     x_Label = 1 : size ( ranked_Temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma, 1 ); 
%     plot( x_Label, ranked_Temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( :, end - 1 ), '*r', 'DisplayName', 'Code-Rate' );
% 
%     xlabel('Iteration');
%     Title = sprintf('Genetic Algorithm Optimization (Ranked all Chromosomes of all Iterations).\n\n');
%     title(Title); 
% 
% % ranked all Chromosomes of all Iterations ( all SigmaLambdas of all Iterations ) 
%     hold all;
%     plot( x_Label, ranked_Temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( :, end ), '--b', 'DisplayName','Total Cost (  SigmaLambda )');
% 
% % ranked all Chromosomes of all Iterations ( all SigmaLambdas of all Iterations ) 
%     hold all;
%     plot( x_Label, ranked_Temp_Matrix_of_all_Chromosomes_of_all_Iterations_and_CodeRate_and_LambdaSigma ( :, end - 2 ), '-*g', 'DisplayName','Total Cost (  RHO_Int )');
% 
%     legend('-DynamicLegend');      
%     hold off
