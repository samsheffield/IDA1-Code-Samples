PFont courier48;
int i;

void setup(){
  size(400,400);
  courier48 = loadFont("Courier-48.vlw");
}

void draw(){
  background(0);
  //textSize(30); // CHANGE SIZE OF TEXT BUT NOT FONT
  textAlign(CENTER); // ALIGNMENT
  fill(#ffff00); // PFont USES fill()
  textFont(courier48); // USES DEFAULT SIZE
  //textFont(courier48, 24); // OPTIONAL SET SIZE
  //text("Hello", width/2, height/2);
  
  text("Count: "+i, width/2, height/2);
  i++;
}
