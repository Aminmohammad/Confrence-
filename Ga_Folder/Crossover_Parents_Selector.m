function Selected_Parents_for_Crossover = Crossover_Parents_Selector (Population, N_Crossover, Method, ranking_Policy)
    if(strcmp(Method,'Minimum_TotalCost') == 1 )
        Population_Total_Costs = [Population.Total_Cost];
        
        if ( strcmp (ranking_Policy, 'Ascend' ) == 1 )
            [~,Population_Best_Total_Costs_Indices] = sort(Population_Total_Costs, 'ascend');
            
        elseif ( strcmp (ranking_Policy, 'Descend' ) == 1 )
            [~,Population_Best_Total_Costs_Indices] = sort(Population_Total_Costs, 'descend');
        end
        
        Population = Population(Population_Best_Total_Costs_Indices);
        Selected_Parents_for_Crossover = Population(1:N_Crossover);
    end
    if(strcmp(Method,'RoulleteWheel')==1)
        F = [Population.fitness];
        P = (1./F)./sum(1./F);
        Cump = cumsum(P);
        for i = 1:N_Crossover
            R = rand;
            C = find(Cump>=R,1);
            Selected_Parents_for_Crossover(i) = Population(C);
        end
        Selected_Parents_for_Crossover = Selected_Parents_for_Crossover';
    end
end