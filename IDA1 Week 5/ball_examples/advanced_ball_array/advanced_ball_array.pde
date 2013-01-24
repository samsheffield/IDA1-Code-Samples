// MANY BOUNCING BALLS
int ballCount = 50;
float[] xPosition = new float[ballCount];
float[] yPosition = new float[ballCount];
float[] ballSize = new float[ballCount];
float[] speed = new float[ballCount];
int[] xDirection = new int[ballCount];
int[] yDirection = new int[ballCount];


void setup() {
  size(400, 400);
  for (int i=0; i< ballCount; i++) {
    xPosition[i] = random(width);
    yPosition[i] = random(height);
    ballSize[i] = random(5, 100);
    speed[i] = random(5)+.5;
    xDirection[i] = 1;
    yDirection[i] = 1;
  }
}

void draw() {
  background(0);

  // BOUNCE OFF RIGHT
  for (int i=0; i< ballCount; i++) {
    if (xPosition[i] > width-ballSize[i]/2) {
      xDirection[i] = -1;
    } 
    else if (xPosition[i] < ballSize[i]/2) {
      xDirection[i] = 1;
    } 
    else if (yPosition[i] > height-ballSize[i]/2) {
      yDirection[i] = -1;
    } 
    else if (yPosition[i] < ballSize[i]/2) {
      yDirection[i] = 1;
    }

    xPosition[i] += speed[i] * xDirection[i];
    yPosition[i] += speed[i] * yDirection[i];

    ellipse(xPosition[i], yPosition[i], ballSize[i], ballSize[i]);
  }
}

