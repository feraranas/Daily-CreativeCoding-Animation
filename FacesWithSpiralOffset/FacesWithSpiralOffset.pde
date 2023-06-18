void setup()
{
  size(500,500);
  
  smooth(8);
}

int numFrames = 150;

void drawFace(float p) // p : parameter in [0,1]
{
  // face circle
  strokeWeight(2);
  stroke(60); // dark gray
  fill(245); // light gray
  ellipse(0,0,25,25);
  
  // red to green interpolation
  color col = lerpColor(color(220,40,40),color(20,210,20),p);
  stroke(col);
  
  // eyes
  strokeWeight(4);
  point(-4,-3);
  point(4,-3);
  
  // mouth
  strokeWeight(3);
  int n = 10;
  for(int i=0;i<=n;i++)
  {
    float X = map(i,0,n,-6,6);
    float Y = 4 + map(p,0,1,-2.5,2.5)*sin(PI*i/n);
    point(X,Y);
  }
}

void draw()
{
  background(255);
  
  float t = 1.0*(frameCount-1)/numFrames;
  
  int m = 17;
  
  for(int i=0;i<m;i++)
  {
    for(int j=0;j<m;j++)
    {
      float x = map(i,0,m-1,20,width-20);
      float y = map(j,0,m-1,20,height-20);
      
      pushMatrix();
      translate(x,y);
      
      // this offset is the distance from center + the angle from center (gives the spiral shape)
      float offset = 0.003*dist(x,y,width/2,height/2) + atan2(y-width/2,x-width/2)/TWO_PI;
      float changeParameter = map(sin(TWO_PI*(t-offset)),-1,1,0,1);
      drawFace(changeParameter);
      
      popMatrix();
    }
  }
  
  if(frameCount<=numFrames)
  {
    saveFrame("fr###.gif");
  }
  if(frameCount==numFrames)
  {
    println("All frames have been saved");
  }
}
