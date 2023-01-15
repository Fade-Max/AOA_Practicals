using AntColony
distance_matrix = rand(10, 10)
# note that distance_matrix[3, 5] = travel distance from node 5 to node 3 
aco(distance_matrix, is_tour = true)
aco(distance_matrix, start_node = 3, end_node = 5)