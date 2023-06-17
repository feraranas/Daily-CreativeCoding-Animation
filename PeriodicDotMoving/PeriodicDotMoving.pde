void setup()
{
  size(500,500);
}

// Reference for calculating the passage of time in animation
int numFrames = 60;

// This function is used later to determine the size of each point drawn on the canvas.
float periodicFunction(float p)
{
  return map(sin(TWO_PI*p),-1,1,2,8);
}

// dist() is a built-in function that calculates the Euclidean distance between two points.

// offset returns the distance between the point (x,y) and the point at the center
// of the processing window, which is (width/2, height/2).

// the distance is scaled by a factor of 0.01. This is done to reduce the magnitude
// of the distance. This could be used for many things, such as modulating an object's speed,
// size, color, or other properties based on its distance from the center of the screen.
float offset(float x,float y)
{
  return 0.01*dist(x,y,width/2,height/2);
}

void draw()
{
  background(255);
  
  float t = 1.0*(frameCount-1)/numFrames;
  
  // Code to draw the black dots ...
  int m = 20;
  
  stroke(0);
  
  // A nested loop is then used to draw a grid of points on the screen. 
  // The number of points is determined by the value of m, which is set to 40
  // This results in a grid of 40x40 = 1600 points.
  for(int i=0;i<m;i++)
  {
    for(int j=0;j<m;j++)
    {
      // In each iteration of the nested loop, the variables x and y
      // are calculated using the map() function to transform the loop indices
      // i and j into positions on the canvas.
      float x = map(i,0,m-1,0,width);
      float y = map(j,0,m-1,0,height);
      
      // The size of each point is then calculated by calling periodicFunction()
      // with t - offset(x,y) as its argument. 
      // The value of t - offset(x,y) will be different for each point, 
      // resulting in different sizes for the points.
      float size = periodicFunction(t-offset(x,y));
      
      // The strokeWeight(size) function sets the thickness of the points,
      // using the size value we just calculated.
      strokeWeight(size);
      
      // point(x,y) is called to draw a point at the calculated x and y coordinates.
      point(x,y);
    }
  }
}
