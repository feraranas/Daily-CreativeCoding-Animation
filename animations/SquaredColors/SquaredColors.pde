// The overall effect of this code is to draw a grid of randomly colored rectangles 
// with a size of 200x200 pixels. Each rectangle is positioned at regular intervals 
// on the screen and scaled down to 28% of its original size. The result is a pattern 
// of smaller rectangles with random colors.

void setup() {
  size(800,800);
  background(#eeeeee);
}

int numFrames = 60;

void draw() {
  // background(#eeeeee);: This line sets the background color of the sketch 
  // to a light gray color.
  background(#eeeeee);
  
  // The nested for loops iterate over the x and y coordinates of the screen 
  // in steps of 200 pixels. It starts at -100 and continues until it reaches 
  // width + 100 for the x-axis and height + 100 for the y-axis.
  // These values ensure that there is some overlap with the edges of the screen.
  for (int i = -100; i < width + 100; i+=200) {
    for (int j = -100; j < height + 100; j+=200) {
      
      // noStroke(); disables drawing outlines for subsequent shapes.
      noStroke();
      
      // fill(random(255), random(255), random(255)); sets the fill color for
      // subsequent shapes to a random RGB color. The random() function generates 
      // a random value between 0 and 255 for each color channel (red, green, blue).
      fill(random(255),random(255),random(255));
      
      // rectMode(CENTER); changes the coordinate mode for drawing rectangles. 
      // By setting it to CENTER, the rect() function will use the provided x and y 
      // coordinates as the center point of the rectangle.
      rectMode(CENTER);
      
      // rect(i, j, 200, 200); draws a rectangle at the current x and y 
      // coordinates (i, j) with a width and height of 200 pixels.
      rect(i,j,200,200);
      
      // pushMatrix(); saves the current transformation matrix. 
      // This allows for transformations such as translation, rotation, and scaling 
      // to be applied to subsequent shapes.
      pushMatrix();
      
      // translate(i, j); translates the coordinate system to the current x and y 
      // coordinates (i, j). This effectively moves the origin of the coordinate system 
      // to the center of the rectangle that was previously drawn.
      translate(i,j);
      
      // scale(0.28); scales the subsequent shapes down to 28% of their original size. 
      // Since this line is after the translation, the scaling is applied relative 
      // to the translated origin.
      scale(0.28);
      
      // popMatrix(); restores the previously saved transformation matrix. 
      // This ensures that subsequent shapes are not affected by the translation 
      // and scaling applied earlier.
      popMatrix();
    }
  }
  if(frameCount <= numFrames) {
    saveFrame("fr###.gif");
  }
}
