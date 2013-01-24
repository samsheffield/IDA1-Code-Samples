// BUTTON 1
int x1 = 100;
int y1 = 150;

// BUTTON 2
int x2 = 250;
int y2 = 100;

// BUTTON 3
int x3 = 500;
int y3 = 150;

void setup(){
  size(600,300);
}

void draw(){
  background(0);
  
  //CIRCULAR BUTTON
  if(dist(mouseX, mouseY, x1, y1) < 50){
    if(mousePressed){
      fill(255,0,0);
    }else{
      fill(255,255,0);
    }
  } else{
    fill(255);
  }
  ellipse(x1, y1, 100,100);
  
  // RECT BUTTON
  if(mouseX > x2 && mouseX < x2 + 100 && mouseY > y2 && mouseY < y2 + 100){
    fill(255,255,0);
  }else{
    fill(255);
  }
  rect(x2, y2, 100, 100);
  
  
  // DRAGGABLE BUTTON
    if(dist(mouseX, mouseY, x3, y3) < 50){
    if(mousePressed){
      fill(255,0,0);
      x3 = mouseX;
      y3 = mouseY;
    }else{
      fill(255,255,0);
    }
  } else{
    fill(255);
  }
  ellipse(x3, y3, 100,100);
  
}
