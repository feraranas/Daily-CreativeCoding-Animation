float arcSize = 200;
float sw;
void setup() {
  size(500, 500);
}

int numFrames = 300;

void draw() {
  background(#eeeeee);
  
  int yStep = 150;
  arcSize = 250;
  
  noFill();
  stroke(20);
  
  for (float y =- arcSize; y < height + arcSize; y += yStep) {    
    sw = map(sin(radians(y + frameCount)),-1,1,2,yStep-100);
    strokeWeight(sw);
    for (float x1 = arcSize/2; x1 < width + arcSize; x1 += arcSize) {
        arc(x1, y, arcSize / 2, arcSize / 2, 0, PI);
    }
    sw = map(sin(radians(y - frameCount)),-1,1,2,yStep-100);
    strokeWeight(sw);
    for (float x2 = 0; x2 < width + arcSize; x2 += arcSize) {
      arc(x2, y, arcSize / 2, arcSize / 2, PI, TWO_PI);
    }
  }
  
  /*
  if (frameCount <= numFrames) {
    saveFrame("fr###.gif");
  }
  */
}
