void setup() {
  size(800,800);
  background(#eeeeee);
}

int numFrames = 60;

void draw() {
  background(#eeeeee);
  for (int j = -100; j < width+100; j+=200) {
    for (int k = -100; k < height+100; k+=200) {
      noStroke();
      fill(random(255),random(255),random(255));
      rectMode(CENTER);
      rect(j, k, 200, 200);
      pushMatrix();
      translate(j,k);
      scale(0.28);
      //translate(width/2,height/2);
      for (int n = 0; n < 50; n++) {
        stroke(random(255),random(255),random(255));
        for (int i = 0; i < 360; i+=1) {
          float x = random(50,150);
          float xx = random(150,300);
          pushMatrix();
          rotate(radians(i));
          strokeCap(CORNER);
          strokeWeight(4);
          line(x,0,xx,0);
          popMatrix();
        }
      }
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
