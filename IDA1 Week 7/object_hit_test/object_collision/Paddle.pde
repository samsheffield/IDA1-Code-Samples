class Paddle {
  float xpos, ypos, w, h;

  Paddle(){
    h = 10;
    w = 50;
    xpos = width/2;
    ypos = height-h;
  }

  void move(){
    xpos = mouseX;
  }

  void display(){
    rect(xpos, ypos, w, h);
  }
}