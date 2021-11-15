function deltaPheromoneLevel = ComputeDeltaPheromoneLevels(pathCollection,pathLengthCollection)

    nAnts = size(pathCollection,1);
    nCities = size(pathCollection,2)-1;
    
    deltaPheromoneLevel = zeros(nCities,nCities);
    for k = 1:nAnts
        for i = 1:nCities
            startCity = pathCollection(k,i);
            
            if i < nCities
                nextCity = pathCollection(k,i+1);
            else
                nextCity = pathCollection(k,1);
            end
            
            deltaPheromoneLevel(startCity,nextCity) = deltaPheromoneLevel(startCity,nextCity) + 1/pathLengthCollection(k);
            deltaPheromoneLevel(nextCity,startCity) = deltaPheromoneLevel(startCity,nextCity);
        end
    end

end

