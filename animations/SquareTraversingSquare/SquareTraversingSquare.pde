float rectX;
float rectY;
float rectSize = 50;
float rectSpeedX = 2;
float rectSpeedY;
int numFrames = 1000;
void setup() {
  size(600, 600);
  rectX = 0;
  rectY = 0;
  rectSpeedY = 0;
}

void draw() {
  background(255);
  fill(0);
  if (rectX < width - rectSize && rectY < height - rectSize) {
    rectX += rectSpeedX;
    rectY += rectSpeedY;
  }

  // Check if the rectangle has reached the end of the top row
  if (rectX >= width - rectSize && rectY < height - rectSize) {
    rectX = width - rectSize - 1;
    rectSpeedY = 2;
    rectY += rectSpeedY;
  }

  // Check if the rectange has reached the end of the bottom row
  if (rectY >= height - rectSize && rectX >= 0) {
    rectY = height - rectSize;
    rectSpeedX = -2;
    rectX += rectSpeedX;
  }

  // Check if the rectangle has reached the beginning of the bottom row
  if (rectX <= 0 && rectY >= height - rectSize) {
    rectX = 0;
    rectSpeedX = 0;
    rectSpeedY = -2;
    rectY += rectSpeedY;
  }

  // Check if the rectangle has reached the beginning of the top row
  if (rectY <= 0) {
    rectY = 0;
    rectSpeedY = 0;
    rectSpeedX = 2;
    rectX += rectSpeedX;
  }

  rect(rectX, rectY, rectSize, rectSize);

  if (frameCount <= numFrames) {
    saveFrame("fr###.gif");
  }
}


/*
float rectX;
float rectY;
float rectSize = 50;
float rectSpeed = 2;

void setup() {
  size(800, 600);
  rectX = width / 2;
  rectY = height / 2;
}

void draw() {
  background(255);

  // Update the position of the rectangle
  rectX += rectSpeed;

  // Check if the rectangle has reached the window border
  if (rectX > width + rectSize / 2) {
    rectX = -rectSize / 2;
  }

  // Draw the rectangle
  rectMode(CENTER);
  rect(rectX, rectY, rectSize, rectSize);
}
*/
