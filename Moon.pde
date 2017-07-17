/**
 * The Moon class keeps track of the dimension, coordinates 
 * and color of a moon. It has methods for moving and displaying.
 */

class Moon {
  float orbital_distance;
  float w;
  float theta = 0;
  float rx;
  float ry;
  float x; // x coordinate in solar system
  float y; // y coordinate in solar system
  color c = #FFFFFF;
  
  Moon(float od, float w) {
    orbital_distance = od;
    this.w = w;
  }

  void orbit_planet(Planet p, float v) {
    // Orbit moon around planet with velocity v
    theta = theta + v;
    rx = cos(theta); // Use unit circle representation to represent position and angle.
    ry = sin(theta);
    x = orbital_distance*rx + p.orbital_distance*p.x;
    y = orbital_distance*ry + p.orbital_distance*p.y;
  }

  void display() {
    // Draw moon.
    fill(c);
    ellipse(cx(x), cy(y), w, w);
  }
  

}