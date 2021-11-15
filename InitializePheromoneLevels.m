function pheromoneLevel = InitializePheromoneLevels(numberOfCities, tau0)

     pheromoneLevel = zeros(numberOfCities,numberOfCities);

     for i=1:numberOfCities-1
         for j=i+1:numberOfCities
             pheromoneLevel(i,j) = tau0;
             pheromoneLevel(j,i) = pheromoneLevel(i,j);
         end
     end


end

