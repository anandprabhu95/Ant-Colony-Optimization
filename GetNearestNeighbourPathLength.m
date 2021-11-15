function nearestNeighbourPathLength = GetNearestNeighbourPathLength(cityLocation)

    nCities = length(cityLocation);
    firstNode = 1 + fix(rand*nCities);
    visitedList = [];
    visitedList(1) = firstNode; 
    
    
    for i=1:nCities-1
        distance = [];
        nonVisitedNodes = [];
        nonVisitedNodes = find(~ismember(1:nCities,visitedList));
        currentNode = visitedList(end);
        
        for j = 1:length(nonVisitedNodes)
            nonVisitedTemp = nonVisitedNodes(j);
            distance(j) = pdist([cityLocation(currentNode,:);cityLocation(nonVisitedTemp,:)],'euclidean');
        end  
        
        [nearestNeighbourDistance(i) index]= min(distance);
        visitedList(end+1) = nonVisitedNodes(index);
    end
    
    endNode = visitedList(end);
    
    returnDistance = pdist([cityLocation(firstNode,:);cityLocation(endNode,:)],'euclidean');
    nearestNeighbourPathLength = sum(nearestNeighbourDistance) + returnDistance;
end

