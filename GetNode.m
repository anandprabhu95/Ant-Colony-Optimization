function node = GetNode(probability, nonVisitedNodes)    
    
    %Roulette Wheel
    r = rand;
    cumulativeProbability = cumsum(probability);

    for i = 1:length(probability)
        if (cumulativeProbability(i) >= r)
            node = nonVisitedNodes(i);
            break;
        end
    end
    
end

