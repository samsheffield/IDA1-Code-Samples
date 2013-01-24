PImage pikachu;

int x1 = 200;
int y1 = 200;

int x2 = 400;
int y2 = 200;

void setup() {
  size(600, 600);
  pikachu = loadImage("pikachu.png");
  imageMode(CENTER);
}

void draw() {
  background(0);

  // DRAGGABLE RECT IMAGE BUTTON. USE IMAGE WIDTH/2 TO CENTER IMAGE
  if (mouseX > x1-pikachu.width/2 && mouseX < x1 + pikachu.width/2 && mouseY > y1-pikachu.height/2 && mouseY < y1 + pikachu.height/2) {
    if (mousePressed) {
      tint(255, 0, 0);
      x1 = mouseX;
      y1 = mouseY;
    }
  }
  image(pikachu, x1, y1);
  noTint();


  // DRAGGABLE CIRCULAR IMAGE BUTTON
  if (dist(mouseX, mouseY, x2, y2) < 100) {
    cursor(HAND); // HAND CURSOR ON ROLLOVER
    if (mousePressed) {
      tint(255, 0, 0);
      x2 = mouseX;
      y2 = mouseY;
    }
  }else{
    cursor(ARROW); // RETURN TO NORMAL CURSOR
  }
  image(pikachu, x2, y2);
  noTint();
  
  //ellipse(x2, y2, 200, 200);
}

