int count;
boolean alreadyHit;

void setup() {
  size(400, 400);
}

void draw() {
  background(0);

  if (dist(mouseX, mouseY, width/2, height/2) < 100) {

    if ( alreadyHit == false) { // WON'T HAPPEN UNTIL FLAG IS RESET
      count++;
      alreadyHit = true; // THE FLAG IS SET
    }

    fill(255, 0, 0);
  } 
  else {

    alreadyHit = false; // NEED TO RESET THE FLAG

    fill(255);
  }

  ellipse(width/2, height/2, 200, 200);
  textAlign(CENTER);
  textSize(50);
  fill(0);
  text(count, width/2, height/2);
}

