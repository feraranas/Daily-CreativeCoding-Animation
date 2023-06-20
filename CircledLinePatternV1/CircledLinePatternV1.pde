void setup() {
  size(800,800);
  background(#eeeeee);
}

int numFrames = 60;

void draw() {
  background(#eeeeee);
  translate(width/2,height/2);
  for (int n = 0; n < 10; n++) {
    stroke(random(255),random(255),random(255));
    for (int i = 0; i < 360; i++) {
      float x = random(50,150);
      float xx = random(150,300);
      pushMatrix();
      rotate(radians(i));
      line(x,0,xx,0);
      popMatrix();
    }
  }
    if (frameCount<=numFrames) {
    saveFrame("fr###.gif");
  }
  if (frameCount == numFrames){
    println("Saved frames");
  }
}
