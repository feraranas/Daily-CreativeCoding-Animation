int numFrames = 120;
int grid = 100;
int margin= 150;
color[] colorArray = {
  color(255,255,255), // white
  color(200,5,20), // red
  color(55,188,25), // green
  color(15,35,250), // blue
  color(125,235,250), // light-blue
  color(240,245,15), // yellow
  color(160,60,235), // purple
};

void setup() {
  size(800, 800);
}

void draw() {
  background(15,28,30);
 
  noFill();
  strokeWeight(1);
  stroke(255);
  float d = grid * 0.6;
  
  rectMode(CENTER);
  for (int i = margin; i <= width - margin; i+= grid) {
    for (int j = margin; j <= height - margin; j+= grid) {
      
      int colArrayNum = (int)random(7);
      stroke(colorArray[colArrayNum]);
      
      for (int num = 0; num < 7; num++) {
        
        float x = -random(d);
        float y = -random(d);
        float x1 = random(d);
        float y1 = -random(d);
        float x2 = random(d);
        float y2 = random(d);
        float x3 = -random(d);
        float y3 = random(d);
        
        strokeWeight(3);
        pushMatrix();
        translate(i, j);
        quad(x,y,x1,y1,x2,y2,x3,y3);
        popMatrix();
      }
    }
  }
  if (frameCount <= numFrames) {
    saveFrame("fr###.gif");
  }
}
