void setup()
{
  size(400,400);
}

int numFrames = 100;

void draw()
{
  background(255);
  
  float t = 1.0*(frameCount-1)/numFrames;
  
  float r = 100;
  float x = width/2 + r*cos(TWO_PI*t);
  float y = height/2 + r*sin(TWO_PI*t);
  
  stroke(0);
  strokeWeight(9.0); // size of black dot
  
  point(x,y);
  
  if(frameCount<=numFrames)
  {
    saveFrame("fr###.gif");
  }
  if(frameCount==numFrames)
  {
    println("All frames have been saved");
  }
}

/* 
Another way of doing this trace:::

void setup() {
  size(500,500);
  smooth(8);
}

int numFrames = 100;

void draw() {
  background(255);
  
  float t = 1.0*(frameCount - 1) / numFrames;
  point(width/2, height/2);
  
  float r = 100.0;
  
  float x = map(cos(TWO_PI), -1, 1, -r, r);
  float y = map(sin(TWO_PI), -1, 1, -r, r);
  
  strokeWeight(20);
  point(width/2 + x, height/2 + y);
 
*/
