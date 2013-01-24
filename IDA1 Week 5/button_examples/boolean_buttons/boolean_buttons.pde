int x1 = 200;
int y1 = 200;

int x2 = 400;
int y2 = 200;

// BOOLEAN DEFAULTS TO FALSE
boolean button1Pressed;
boolean button2Pressed;

void setup() {
  size(600, 600);
}

void draw() {
  background(0);

  if (dist(mouseX, mouseY, x1, y1) < 100  && button2Pressed == false) {
    if (mousePressed) {
      button1Pressed = true;
      fill(255, 0, 0);
      x1 = mouseX;
      y1 = mouseY;
    }else{
      button1Pressed = false;
    }
  }else{
    fill(255);
  }
  ellipse(x1, y1, 200, 200);

  if (dist(mouseX, mouseY, x2, y2) < 100 && button1Pressed == false) {
    if (mousePressed) {
      button2Pressed = true;
      fill(255, 0, 0);
      x2 = mouseX;
      y2 = mouseY;
    }else{
      button2Pressed = false;
    }
  }else{
    fill(255);
  }
  ellipse(x2, y2, 200, 200);
}

