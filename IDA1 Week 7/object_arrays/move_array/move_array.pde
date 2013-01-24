float[]x = {20, 60, 200};
float[]y = {random(-100,-10), random(-100,-10), random(-100,-10)};

void setup() {
  size(300, 300);
}

void draw() {
  background(0,0,255);

  for (int i=0;i<y.length;i++) {
    y[i]++;
    ellipse(x[i], y[i], 10, 10);
    if (y[i] > height) {
      y[i] = random(-100,-10);
      x[i] = random(width);
    }
  }
}
