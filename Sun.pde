/**
 * The Sun class represents the star in the center of the system 
 */
class Sun {
  float radius; // The radius of the sun.
  float x = 0; // The x coordinate.
  float y = 0; // The y coordinate.
  color c = #FFF755; // Yellow in hex representation.

  Sun(float radius) {
    this.radius = radius;
  }

  void display() {
    fill(this.c); // Color the sun yellow.
    noStroke(); // Indicate drawing will not have a border.
    ellipse(cx(0), cy(0), this.radius, this.radius); // Draw a yellow circle at (x,y).
  }
} 