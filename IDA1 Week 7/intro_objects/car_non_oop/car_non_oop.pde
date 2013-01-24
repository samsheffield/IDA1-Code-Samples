// INITIALIZATION
color c = color(0);
float x = 0;
float y = 100;
float speed = 1;

void setup() {
  size(200,200);
}

void draw() {
  background(255);

  // USE FUNCTIONS
  move(); 
  display();
}

// OUR CAR'S FUNCTIONALITY
void move() {
  x = x + speed;
  if (x > width) {
    x = 0; 
  }
}

void display() {
  fill(c);
  rect(x,y,30,10);
}