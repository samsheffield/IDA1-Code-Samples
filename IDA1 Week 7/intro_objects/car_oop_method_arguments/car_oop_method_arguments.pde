Car myCar1;
Car myCar2;

void setup() {
  size(200,200);
  myCar1 = new Car(color(255,0,0),0,100,2); 
  myCar2 = new Car(color(0,0,255),0,10,1);
}

void draw() {
  background(255);
  myCar1.drive();
  myCar1.display();
  myCar2.setSpeed(mouseX/10);
  myCar2.drive();
  myCar2.display();
}

class Car { 
  color c;
  float xpos;
  float ypos;
  float xspeed;

  Car(color tempC, float tempX, float tempY, float tempXspeed) { 
    c = tempC;
    xpos = tempX;
    ypos = tempY;
    xspeed = tempXspeed;
  }

  // NEWLY ADDED METHOD TO CONTROL SPEED
  void setSpeed(float newSpeed){
    xspeed = newSpeed;
  }

  void display() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos,ypos,20,10);
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}