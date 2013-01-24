// USING IMAGES

PImage egg;
PImage pikachu;

float r; // USED TO ROTATE IMAGE

void setup(){
  size(400,400);
  egg = loadImage("egg.png");
  pikachu = loadImage("pikachu.png");
  imageMode(CENTER);
}

void draw(){
  background(255);
  image(egg, width/2, height/2);
  
  //ROTATE AN IMAGE
  pushMatrix();
  translate(width/2, height/2);
  rotate(r);
  image(pikachu, 0, 0);
  popMatrix();
  r += 0.015;
}
