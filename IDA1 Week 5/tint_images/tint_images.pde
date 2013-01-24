PImage pikachu;
PImage egg;

void setup(){
  size(400,400);
  pikachu = loadImage("pikachu.png");
  egg = loadImage("egg.png");
  imageMode(CENTER);
}

void draw(){
  background(0);
  image(egg, width/2, height/2);
  if(mousePressed){
    //tint(255,0,0);
    tint(255, 100);
  }
  image(pikachu, width/2, height/2);
  noTint();
}
