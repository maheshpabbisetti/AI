% Define the planets and their characteristics
planet(mercury).
planet(venus).
planet(earth).
planet(mars).
planet(jupiter).
planet(saturn).
planet(uranus).
planet(neptune).

% Define the planet's diameter in kilometers
diameter(mercury, 4879).
diameter(venus, 12104).
diameter(earth, 12756).
diameter(mars, 6792).
diameter(jupiter, 139000).
diameter(saturn, 116000).
diameter(uranus, 50724).
diameter(neptune, 49244).

% Define the planet's distance from the sun in million kilometers
distance(mercury, 57.91).
distance(venus, 108.2).
distance(earth, 149.6).
distance(mars, 227.9).
distance(jupiter, 778.5).
distance(saturn, 1433.5).
distance(uranus, 2872.5).
distance(neptune, 4495.1).

% Define the planet's number of moons
moons(mercury, 0).
moons(venus, 0).
moons(earth, 1).
moons(mars, 2).
moons(jupiter, 79).
moons(saturn, 82).
moons(uranus, 27).
moons(neptune, 14).

% Query to find the diameter of a given planet
find_diameter(Planet, Diameter) :- planet(Planet), diameter(Planet, Diameter).

% Query to find the distance of a given planet from the sun
find_distance(Planet, Distance) :- planet(Planet), distance(Planet, Distance).

% Query to find the number of moons of a given planet
find_moons(Planet, Moons) :- planet(Planet), moons(Planet, Moons).

% Query to find all the planets in the solar system
find_planets(Planets) :- findall(Planet, planet(Planet), Planets).
