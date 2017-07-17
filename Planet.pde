/**
 * The Planet class keeps track of the dimension, coordinates 
 * and color of a planet. It has methods for moving and displaying.
 */

class Planet {
  float orbital_distance;
  float w;
  float theta = 0;
  float x;
  float y;
  float v; //orbital velocity
  color c;

  Planet(float od, float w, float v, color c) {
    orbital_distance = od;
    this.w = w;
    this.v = v;
    this.c = c;
  }

  void orbit() {
    // Orbit planet around the sun with velocity v
    theta = theta + v;
    x = cos(theta);
    y = sin(theta);
  }

  void display() {
    // Draw planet.
    fill(this.c);
    ellipse(cx(orbital_distance*x), cy(orbital_distance*y), w, w);
  }
}