PImage[] images = new PImage[2];

void setup() {
  size(400, 400);
  images[0] =loadImage("egg.png");
  images[1] =loadImage("pikachu.png");
  imageMode(CENTER);
}

void draw() {
  background(0);

  if (dist(mouseX, mouseY, width/2, height/2) < 100) {
    image(images[0], width/2, height/2);
  }
  else {
    image(images[1], width/2, height/2);
  }
}

