/**  
* A Simple Solar System Animation
* @author Charles (Qiwei) Jin
* @version 1.0 
* Copyright 2016
*/ 

float screen_height = 1000;
float screen_width = 1000;

SolarSystem ssystem = new SolarSystem();
void setup() {
  size(1000, 1000); // Set window dimensions.
  pixelDensity(2); // Turn on retina mode for retina screens.
}

void draw() {
  //background(#000000);
  //fill(#FFF755);
  //ellipse(cx(0), cy(0), 50, 50);
  ssystem.run();
}