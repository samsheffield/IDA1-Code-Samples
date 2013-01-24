// ONE BOUNCING BALL
float xPosition;
float yPosition;
int xDirection = 1;
int yDirection = 1;
int ballSize = 20;
float speed = 2;

void setup() {
  size(400, 400);
}

void draw() {
  background(0);

  // BOUNCE OFF RIGHT
  if (xPosition > width-ballSize/2) {
    xDirection = -1;
  } 
  else if (xPosition < ballSize/2) {
    xDirection = 1;
  } 
  else if (yPosition > height-ballSize/2) {
    yDirection = -1;
  } 
  else if (yPosition < ballSize/2) {
    yDirection = 1;
  }

  xPosition += speed * xDirection;
  yPosition += speed * yDirection;

  ellipse(xPosition, yPosition, ballSize, ballSize);
}

