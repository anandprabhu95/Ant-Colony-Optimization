function visibility = GetVisibility(cityLocation)
    
    nCities = length(cityLocation);
    visibility =zeros(nCities,nCities);
    
    for i=1:nCities-1
        for j=i+1:nCities
            distance(i,j) = pdist([cityLocation(i,:);cityLocation(j,:)],'euclidean');
            visibility(i,j) = 1/distance(i,j);
            visibility(j,i) = visibility(i,j);
        end
    end

end

