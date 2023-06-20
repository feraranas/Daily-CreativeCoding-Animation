// Naive implementation of squared colors
void setup() {
  size(800,800);
}

void draw() {
  background(255);
  for (int i = 0; i < width + 1; i+=200) {
    for (int j = 0; j < height + 1; j+=200) {
      noStroke();
      fill(random(255), random(255),random(255));
      rect(j,i,200,200);
    }
  }
}
