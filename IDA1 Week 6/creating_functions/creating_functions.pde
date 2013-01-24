void setup() {
  size(400, 400);
  frameRate(10); // ONLY SLOWED TO SHOW EFFECT
}

void draw() {
  background(0);
  rotatedRect();
  rotatedRect();
  rotatedRect();
  rotatedRect2(50, 100, 30, 60, 45); 
  rotatedRect2(150, 100, 90, 90, 15);
  
  println(cube(3)); 
}

// NO ARGUMENTS
void rotatedRect() {
  rectMode(CENTER);
  pushMatrix();
  translate(width/2, height/2);
  rotate(random(radians(360)));
  fill(random(255));
  rect(0, 0, random(200), random(200));
  popMatrix();
}

// ARGUMENTS
void rotatedRect2(float x, float y, float w, float h, float rot) {
  rectMode(CENTER);
  pushMatrix();
  translate(x, y);
  rotate(rot);
  fill(255);
  rect(0, 0, w, h);
  popMatrix();
}

// RETURN A VALUE (FLOAT)
float cube(float num){
  float result = num * num * num; // result IS CREATED EACH TIME THE FUNCTION IS RUN
  return result;
}
