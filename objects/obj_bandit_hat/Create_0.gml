/// @description Initialize Variables
image_angle = random_range(-2, 2); // randomize starting angle
distance_to_fall = y + 28; // falling distance
fall_rate = 0.25; // value per step that the object advances downward
max_angle = 40; // maximum angle the object will rotate to the left or right
rotation = 2 * choose(-1, 1); // randomly start with a positive or negative direction
