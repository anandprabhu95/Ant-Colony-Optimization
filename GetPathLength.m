function pathLength = GetPathLength(path,cityLocation)
    
    nCities = size(cityLocation,1);
    pathLength = 0;

    for i = 1:nCities
        pathLength = pathLength + pdist([cityLocation(path(i),:) ; cityLocation(path(i+1),:)], 'euclidean');
    end

end

