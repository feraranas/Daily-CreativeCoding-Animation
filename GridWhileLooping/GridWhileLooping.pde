float x, y;
float xStep = 40;
float yStep = 200;
float a, a_;
int num = 320;

void setup() {
  size(800,800);
  //num = int((width/xStep) * (height/yStep));
}

void draw() {
  background(15,20,30);
  strokeCap(CORNER);
  strokeWeight(xStep/2);
  int n = 0;
  
  while (n < num){
    stroke(255-255*cos(radians(a)),255*cos(radians(a)),255-255*sin(radians(a)),255-255*sin(radians(a)));
    //stroke(255,255-255*sin(radians(a)));
    line(x,y,x,y+yStep);
    x+=xStep;
    if(x>width){
      x=xStep/2;
      y+=yStep; 
    }
    if(y>=height){
      y=0;
      a=0;
    }
    n++;
    a+=a_;
  }
  a_+=0.1;
  
 if (frameCount <= 300) {
   saveFrame("fr###.gif");}
}
