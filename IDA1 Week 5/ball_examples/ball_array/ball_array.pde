// MANY BOUNCING BALLS

float[] xPosition = {200, 100};
float[] yPosition = {100, 200};
int[] xDirection = {1, -1};
int[] yDirection = {1, 1};
int[] ballSize = {20, 40};
float[] speed = {5, 1};

void setup() {
  size(400, 400);
}

void draw() {
  background(0);

  // BOUNCE OFF RIGHT
  for (int i=0; i< 2; i++) {
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

