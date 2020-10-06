# Room Allocation using Particle Swarm Optimization Algorithm (PSO)

Background: Assume 40 rooms (24 single rooms & 16 double rooms) and 56 students (28 girls & 28 boys) that needs to be accomodated. The excel file ('preference_list.xlsx') contains the information about the preferences of each student (1 being the highest preference & 40 being the lowest). 

Objective: To allot the rooms to the students such that the preference of all the students is maximised. The algorithm to be used to solve this problem should be - Particle Swarm Optimization (PSO).

Constraints to be satisfied: 
  1. A double occupancy room should only be allotted to 2 boys or 2 girls.
  2. Everybody gets a room after every iteration (of PSO).
  3. The preferences should not go beyond 25 or maximum students should be satisfied with the allotment. [loose constraint]
  
This is an optimization problem and I have tried using PSO to solve this. 
The cost function chosen is the summation of all the preferences of the rooms that have been allotted to the students (boys/girls). 

'Assignment2_ShreyaPamecha.py'

Initially, take 100 particles with position and velocity vector both of size (100,1) and then randomly assigned rooms for all the students ('positions' in terms of PSO) for all the particles such that everybody gets a room. Initialize the velocities and decipher the fitness value/cost function for all the particles. Now, sort the particles in ascending order on the basis of their cost function. Also, Initialize Pbest (Personal Best), Gbest (Group Best) and Gbest_list.
Then, in every iteration (according to the algorithm):
  1. Update the velocities (POS)
  2. Update the positions (POS)
  3. Room Allocation (Double room - Girls)
  4. Room Allocation (Double room - Boys)
  5. Room Allocation (Single room - Boys)
  6. Room Allocation (Single room - Girls)
  7. Miscellaneous (such that the constraints are satisfied)
  8. Fill rest of the double rooms 
  9. Fill rest of the single rooms
  10. Calculate the fitness value
  11. Update Pbest, Gbest and Gbest_list
  
In every epoch/iteration, save the Gbest and store it in an excel sheet at the end. This excel sheet can be imported in MATLAB workspace and an animated video (Animated_Video.m) can be formed displaying the best room allotment at every iteration. 

Edited Video Link: https://www.youtube.com/watch?v=cKugrU2OMSQ&feature=youtu.be

