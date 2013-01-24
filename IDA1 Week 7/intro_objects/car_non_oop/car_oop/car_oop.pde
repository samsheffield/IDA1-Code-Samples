Car myCar; // we can keep all of our variables in the car object

void setup()  {  
  size(200,200);
  myCar = new Car();   // we initialize the car in setup
}    

void draw()  {    
  background(255);   
  myCar.drive();   // we use the car's methods to get it to do something
  myCar.display();   
} 

class Car { 
  color c;
  float xpos;
  float ypos;
  float xspeed;

  // The Constructor is defined with arguments.
  Car() { 
    c = color(255, 0, 0);
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