// Overall, this code generates an animation of rotating and scaling ellipses
// in a decreasing size pattern, with the ellipses forming a line horizontally
// across the center of the canvas.

float angle;
void setup() {
  size(800,800);
  noStroke();
  fill(0,15,30);

}

void draw() {
  background(255);
  // float x = width; declares a variable x and assigns it the value of the canvas width.
  // This will be used to position the ellipses horizontally.
  float x = width;
  
  // float dia = 500; declares a variable dia and assigns it a value of 500. 
  // This will be used as the diameter for the ellipses.
  float dia = 100;
  
  // int num = 100; declares an integer variable num and assigns it a value of 100. 
  // This represents the number of ellipses that will be drawn.
  int num = 100;
  
  /// translate(width/2, height/2); translates the coordinate system origin to the 
  // center of the canvas. This ensures that the ellipses are drawn relative to the center.
  translate(width/2, height/2);
  
  // The subsequent for loop executes num times, creating a series of ellipses.
  for (int i = 0; i < num; i++) {
    
    // scale(0.95); scales down the size of each subsequent ellipse by a factor of 0.95.
    // This creates a decreasing size effect.
    scale(0.95);
    
    // rotate(radians(angle)); rotates the coordinate system by the value of angle in 
    // radians. This causes the ellipses to rotate around the center.
    rotate(radians(angle));
    
    // ellipse(x, 0, dia, dia); draws an ellipse at the position (x, 0) with a diameter 
    // of dia. This creates a horizontal line of ellipses.
    ellipse(x,0,dia,dia);
  }
  
  // angle += 0.01; increments the angle variable by 0.01 on each iteration of the
  // draw() function. This gradually changes the rotation angle of the ellipses over
  // time, producing an animated effect.
  angle+=0.01;
}
