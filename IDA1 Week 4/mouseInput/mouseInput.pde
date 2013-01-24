// MOUSE INPUT FUNCTIONS

int x = 200; // RECT X
int y = 100; // RECT Y

void setup(){
  size(400, 400);
  rectMode(CENTER);
}

void draw(){
  background(128);
  rect(x, y, 50, 50);
}

void mousePressed(){ // MOUSE DOWN
  fill(255,0,0); 
}

void mouseReleased(){ // MOUSE UP
  fill(255); 
}

void mouseClicked(){ // OVERRIDES mouseReleased
  fill(255,255,0); 
}

void mouseMoved(){ // WHEN MOUSE IS MOVED IN FRONT OF WINDOW
  fill(255,0,255);
  x = mouseX;
}

void mouseDragged(){ // OVERRIDES mouseMoved
  fill(0,255,255);
  y = mouseY;
}
