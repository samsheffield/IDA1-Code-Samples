Drop[] drops = new Drop[3];

void setup() {
  size(300, 300);
  drops[0] = new Drop(20, random(-100,-10));
  drops[1] = new Drop(60, random(-100,-10));
  drops[2] = new Drop(200, random(-100,-10));
}

void draw() {
  background(0,0,255);
  for (int i = 0; i < drops.length; i++){
    drops[i].fall();
    drops[i].display();
  }
}

class Drop {
  float xpos, ypos;

  Drop(float tempx, float tempy){
    xpos = tempx;
    ypos = tempy;
  }

  void fall(){
    if(ypos > height){
      ypos = random(-100,-10);
      xpos = random(width);
    }
    ypos++;
  }

  void display(){
    ellipse(xpos, ypos, 10, 10);
  }
}