float arcSize = 400;
float sw, alpha;
float yStep = 10;
void setup() {
  size(800, 800);
}

void draw() {
  background(#eeeeee);
  noFill();
  stroke(20);
  strokeWeight(5);
  
  mouseX = constrain(mouseX, 10, width);
  mouseY = constrain(mouseY, 10, height);
  
  yStep = mouseY;
  arcSize = mouseX;
  
for (int x = 0; x < width + arcSize; x += arcSize) {  
    for (int y = 0; y < height; y += yStep /2) {  
        arc(x, y, arcSize / 2, arcSize / 2, 0, PI);
        arc(x + arcSize/2, y, arcSize / 2, arcSize / 2, PI, TWO_PI);
    }
  }
}

/*
void draw() {
  background(#eeeeee);
  noFill();
  stroke(20);
  strokeWeight(70);
  float arcL = map(mouseX, 0, width, 0, TWO_PI);
  arc(width/2, height/2, arcSize, arcSize, 0, arcL);
}
*/
