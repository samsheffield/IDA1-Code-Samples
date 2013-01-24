class Frog {
  float xpos, ypos, speed, w, h;
  boolean dead;

  Frog(float tempX, float tempY){
    xpos = tempX;
    ypos = tempY;
    speed = 5;
    w = 10;
    h = 10;
  }

  boolean hit(Car car){
    if ((xpos+w >= car.xpos && xpos+w <= car.xpos + car.w || xpos >= car.xpos && xpos <= car.xpos + car.w) && (ypos+h >= car.ypos && ypos+h <= car.ypos + car.h || ypos >= car.ypos && ypos <= car.ypos + car.h)){
      return true;
    } else {
      return false;
    }
  }

  void moveX(float xstep){
    xpos += xstep * speed;
  }

  void moveY(float ystep){
    ypos += ystep * speed;
  }

  void display(){
    noStroke();
    fill(0,255,0);
    rect(xpos, ypos, w, h);
  }
}