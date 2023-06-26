// Naive implementation of squared colors
void setup() {
  size(800,800);
}

float squareSize = 100;

void draw() {
  background(255);
  for (int i = -100; i < width + 100; i+=squareSize) {
    for (int j = -100; j < height + 100; j+=squareSize) {
      noStroke();
      fill(random(255), random(255),random(255));
      rectMode(CENTER);
      rect(i,j, 200,200);
      pushMatrix();
      translate(i,j);
      for (int k = 0; k < 50; k++) {
        stroke(random(255),random(255),random(255));
        for (int l = 0; l < 360; l++){
          float x = random(0,50);
          float xx = random(50,100);
          pushMatrix();
          rotate(radians(l));
          strokeCap(CORNER);
          strokeWeight(1);
          line(x, 0, xx, 0);
          popMatrix();
        }
      }
      popMatrix();
    }
  }
}
