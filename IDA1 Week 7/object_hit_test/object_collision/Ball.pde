class Ball {
  float xpos, ypos, xspeed, yspeed, w, h;
  int xdirection, ydirection;

  Ball(){
    xpos = width/2;
    ypos = 0;
    xspeed = .5;
    yspeed = 2;
    w = 10;
    h = 10;
    xdirection = 1;
    ydirection = 1;
  }

  void move(){
    xpos += xspeed * xdirection;
    ypos += yspeed * ydirection;
  }

  void display(){
    noStroke();
    fill(0,255,0);
    rect(xpos, ypos, w, h);
  }

  void reverse(){
    ydirection *= -1;
  }

  boolean hit(Paddle paddle){
    if ((xpos+w >= paddle.xpos && xpos+w <= paddle.xpos + paddle.w || xpos >= paddle.xpos && xpos <= paddle.xpos + paddle.w) && (ypos+h >= paddle.ypos && ypos+h <= paddle.ypos + paddle.h || ypos >= paddle.ypos && ypos <= paddle.ypos + paddle.h)){
      return true;
    } else {
      return false;
    }
  }

}