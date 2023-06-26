Rec r1, r2, r3, r4;

void setup(){
  size(200,200);
  r1 = new Rec(20,20);
  r2 = new Rec(50,20);
  r3 = new Rec(80,20);
  r4 = new Rec(110,20);
}

void draw(){
  background(128);
  r1.draw();
  r2.draw();
  r3.draw();
  r4.draw();
}

class Rec{
  color c;
  int x, y;
  int time;
  Rec( int ix, int iy ){
    time = -1;
    newColor();
    x = ix;
    y = iy;
  }
  void draw(){
    newColor();
    fill(c);
    rect(x,y,20,20);
  }
  void newColor(){
    if( millis() > time ){
      time = millis() + x; // x is also delay in ms.
      c = color(random(255),random(255),random(255));
    }
  }
}
