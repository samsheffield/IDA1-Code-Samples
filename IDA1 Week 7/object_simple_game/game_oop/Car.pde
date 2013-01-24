class Car { 
  color c;
  float xpos;
  float ypos;
  float xspeed;
  float w;
  float h;

  Car() { 
    c = color(random(150, 255));
    xpos = 0;
    ypos = random(height-120)+60;
    xspeed = random(3) + .5;
    w = 20;
    h = 10;
  }

  void display() {
    noStroke();
    fill(c);
    rect(xpos,ypos, w, h);
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }

  void reset(float velocity) {
    xspeed = random(3) + velocity/2;
    ypos = random(height-120)+60;
    xpos = 0;
  }
}