/**
 * The SolarSystem class keeps track of all the objects in the system
 * and has methods for moving and displaying them.
 */
class SolarSystem {
  Sun sun = new Sun(50);  
  Moon moon1 = new Moon(40, 15);
  Moon moon2 = new Moon(50, 10);
  float[] planet_orbital_dists = {100, 150, 225, 400};
  float[] planet_widths = {10, 20, 30, 20};
  float[] planet_velocities = {0.09, 0.05, 0.04, 0.02};
  color[] planet_colors = {#AA4C39, #D4A26A, #6D92A0, #7BB992};
  ArrayList <Planet> planets = new ArrayList();

  SolarSystem() {
    // Initialize all the planet objects and store them in an Arraylist. 
    for (int i = 0; i < planet_widths.length; i++) {
      this.planets.add(new Planet(planet_orbital_dists[i], planet_widths[i], planet_velocities[i], planet_colors[i]));
    }
  }

  void run() {
    // Animate the solar system.
    background(#000000);
    sun.display();
    move_and_display_planets();
    move_and_draw_moons();
  }

  void move_and_display_planets() {
    // Move and draw the planets in the solar system.
    for (int i = 0; i < planet_widths.length; i++) {
      //Planet p = Planet(planet_widths[i], planet_orbital_dists[i])
      this.planets.get(i).display();
      this.planets.get(i).orbit();
    }
  }

  void move_and_draw_moons() {
    // Move and draw the moons in the solar system.
    moon1.orbit_planet(this.planets.get(2), 0.1);
    moon1.display();
    moon2.orbit_planet(this.planets.get(3), 0.05);
    moon2.display();
  }
}