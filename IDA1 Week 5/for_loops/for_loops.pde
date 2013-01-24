void setup(){
  size(400,400);
  frameRate(2);
}

void draw(){
  background(0);
  for(int i =0;i<10;i++){
    fill(random(255));
    ellipse(random(width), random(height), 100,100);
  }
}
