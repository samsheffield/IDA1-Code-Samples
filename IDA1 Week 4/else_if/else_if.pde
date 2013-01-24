/* 
CHANGE COLOR BASED ON WHAT ZONE WE ARE IN USING ELSE IF AND &&, ||
*/

color bgColor = color(255, 0, 0); // START OUT RED
color ballColor = color(0); // START OUT BLACK

void setup() {
  size(300, 300);
  noStroke();
  smooth();
}

void draw() {
  // BACKGROUND
  if (mouseX < 100) { // ZONE 1
    bgColor = color(255, 0, 0);
  } 
  else if (mouseX > 100 && mouseX < 200) { // ZONE 2
    bgColor = color(0, 255, 0);
  }
  else { // MUST BE ZONE 3
    bgColor = color(0, 0, 255);
  }
  background(bgColor);

  // BALL
  if (mouseY < 100 || mouseY > 200) { // ZONE 2
    ballColor = color(0);
  }
  else { // MUST BE ZONE 3
    ballColor = color(255);
  }
  fill(ballColor);
  ellipse(width/2, height/2, 200, 200);
}

