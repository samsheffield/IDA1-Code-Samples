Car car;

void setup() {
  size(200,200);
  car = new Car();
}

void draw() {
  background(255);
  car.drive();
  car.display();
}

class Car { 
  color c;
  float xpos;
  float ypos;
  float xspeed;

  Car() { 
    c = color(255,0,0);
    xpos = 0;
    ypos = 100;
    xspeed = 2;
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