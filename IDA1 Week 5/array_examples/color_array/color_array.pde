color[] colors = {color(255,0,0), color(0,255,0), color(0,0,255)};

void setup() {
  size(400, 400);
  noStroke();
}

void draw() {
  background(0);
  fill(colors[0]);
  ellipse(width/3, height/2, 150, 150);
  fill(colors[1]);
  ellipse(width/2, height/2, 150, 150);
  fill(colors[2]);
  ellipse(width-width/3, height/2, 150, 150);
}

