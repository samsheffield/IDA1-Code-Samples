float[]x = {20, 60, 200};
int[]y = {-10, -10, -10};

void setup() {
  size(300, 300);
}

void draw() {
  background(0,0,255);
  
  // TIMED RELEASE
  if (frameCount > 100) {
    y[2]++;
  }
  if (frameCount > 300) {
    y[0]++;
  }
  if (frameCount > 500) {
    y[1]++;
  }

  // DRAW ALL SHAPES
  for (int i=0;i<y.length;i++) {
    ellipse(x[i], y[i], 10, 10);
    // RESET
    if (y[i] > height) {
      y[i] =-10;
      x[i] = random(width);
    }
  }
}

