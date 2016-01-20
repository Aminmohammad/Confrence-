function  Selected_Parents_for_Crossover = Total_Population_Selector(Total_Population, Population_Size, Method, ranking_Policy)
    if(strcmp(Method,'Minimum_TotalCost')==1)
        Population_Total_Costs=[Total_Population.Total_Cost];
        
        if ( strcmp (ranking_Policy, 'Ascend' ) == 1 )
            [~,Population_Best_Total_Costs_Indices] = sort(Population_Total_Costs, 'descend');
            
        elseif ( strcmp (ranking_Policy, 'Descend' ) == 1 )
            [~,Population_Best_Total_Costs_Indices] = sort(Population_Total_Costs, 'ascend');
        end
                
        Selected_Parents_for_Crossover = Total_Population( Population_Best_Total_Costs_Indices ( 1 : Population_Size ) , 1 );

    end
end