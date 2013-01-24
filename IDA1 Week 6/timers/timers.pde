float r1, r2;

void setup(){
  size(400,400);
}

void draw(){
  background(#ffff00);
  println(frameCount);
  if(frameCount % 120 == 0){ // EVERY 60 FRAMES, DO THIS...
    r1++;
  }
  if(millis() > 3000){ // IF 3 SECONDS HAVE PASSED...
    r2+=.25;
  }
  
  // ROTATES AT INTERVAL
  pushMatrix();
  translate(100,200);
  rotate(r1);
  rect(0,0,50, 10);
  popMatrix();
  
  // ROTATES AFTER SET TIME HAS PASSED
  pushMatrix();
  translate(300,200);
  rotate(r2);
  rect(0,0,50, 10);
  popMatrix();
  
  // ROTATES ACCORDING TO SECONDS
  pushMatrix();
  translate(200,200);
  rotate(second());
  fill(minute());
  rect(0,0,50, 10);
  popMatrix();
}
