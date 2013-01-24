float[] x = new float[5];
int i; // COUNTER

void setup() {
  size(400, 400);
  
  for (int i = 0; i < x.length; i++) {
    x[i] = random(width);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < x.length; i++) {
    ellipse(x[i], height/2, 50, 50);
  }
}

