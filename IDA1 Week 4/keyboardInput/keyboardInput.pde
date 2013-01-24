int x;
int y;
color ballColor1 = color(255);

void setup() {
  size(400, 400);
  x = width/2;
  y = height/2;
  smooth();
}

void draw() {
  background(128);

  // CHECK FOR NON-ALPHANUMERIC KEYPRESSES. CHECKED EVERY LOOP OF draw()
  if (keyPressed) {
    if (keyCode == UP) {
      y--;
    }
    else if (keyCode == DOWN) {
      y++;
    } 
    else if (keyCode == LEFT) {
      x--;
    }
    else if (keyCode == RIGHT) {
      x++;
    }
  }
  else {
    //  LIKE keyReleased() EXCEPT IT IS CHECKED EVERY LOOP OF draw()
  }
  
  fill(ballColor1);
  ellipse(x, y, 200,200);
}

// CHECK FOR KEY PRESSES. ONLY RUN WHEN COMPUTER SIGNALS A NEW KEY HAS BEEN PRESSED
void keyPressed() {
  if (key == 'w') {
    y--;
  }
  else if (key == 's') {
    y++;
  }
  else if (key == 'a') {
    x--;
  }
  else if (key == 'd') {
    x++;
  }
}

// CHECK FOR KEY RELEASES. ONLY RUN WHEN COMPUTER SIGNALS A NEW KEY HAS BEEN PRESSED
void keyReleased() {
  if (key == 'w') {
    ballColor1 = color(255, 0, 0);
  }
  else if (key == 's') {
    ballColor1 = color(255, 255, 0);
  }
  else if (key == 'a') {
    ballColor1 = color(0, 255, 255);
  }
  else if (key == 'd') {
    ballColor1 = color(255, 0, 255);
  }
}

