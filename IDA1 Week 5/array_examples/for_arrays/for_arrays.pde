int[] x = {50, 100, 300, 50, 10};
int i; // COUNTER

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  for (int i = 0; i < x.length; i++) {
    ellipse(x[i], height/2, 50, 50);
    //x[i]++;
    x[i] += i;

    if (x[i] > width) {
      x[i] = 0;
    }
  }
}

