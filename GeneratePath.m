function path = GeneratePath(pheromoneLevel, visibility, alpha, beta)

    nCities = size(visibility,2);
    firstNode = 1 + fix(rand*nCities);
    tabuList = [];  % Contains the list of all visited nodes 
    
    tabuList(1) = firstNode;
    
    for i = 1:nCities-1
        nonVisitedNodes = [];
        probability = [];
        currentNode = [];
        probabilityNonVisited = [];
                
        nonVisitedNodes = find(~ismember(1:nCities,tabuList));        
        currentNode = tabuList(i);
                
        for j = 1:length(nonVisitedNodes)    
            nonVisitedTemp = nonVisitedNodes(j);     % Temporary variable: non visited node for which the probability is being found
            probabilityNonVisited(j) = pheromoneLevel(currentNode,nonVisitedTemp)^alpha * visibility(currentNode,nonVisitedTemp)^beta;
        end 
                
        if i < nCities-1
            probability = probabilityNonVisited / sum(probabilityNonVisited);
            tabuList(i+1) = GetNode(probability, nonVisitedNodes) ;
        else        % Last node
            tabuList(i+1) = nonVisitedNodes;
        end                
    end   
    path = [tabuList firstNode];
        
end

