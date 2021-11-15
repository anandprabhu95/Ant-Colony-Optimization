clear all
clc;

cityLocation = LoadCityLocations();
nearestNeighbourPathLength = GetNearestNeighbourPathLength(cityLocation);
disp(sprintf('Nearest Neighbour Pathlength: %0.2f',nearestNeighbourPathLength))