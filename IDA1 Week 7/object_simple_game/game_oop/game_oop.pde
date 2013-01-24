Car[] cars = new Car[4];
Frog frog;
UI ui;

color bgColor = color(255);
color roadColor = color(0);
boolean won, started;
int level = 1;

void setup() {
  size(200,200);
  for (int i=0;i<cars.length;i++){
    cars[i] = new Car();
  }
  frog = new Frog(100, 180);
  ui = new UI();
}

void draw() {
  fill(bgColor);
  rect(0,0,width,height);
  fill(roadColor);
  rect(0, 50, width, 100);

  for (int i=0;i<cars.length;i++){
    cars[i].drive();
    cars[i].display();

    if(frog.hit(cars[i]) == true){ // CHECK IF FROG WAS HIT BY A CAR
      frog.dead = true; // THIS WILL TRIGGER GAME OVER BELOW
    }
  }

  if(frog.dead == false){ // ONLY SHOW FROG IF YOU ARE ALIVE, OTHERWISE... GAMEOVER
    frog.display();
  }else{
    gameOver();
  }
  
  if (frog.ypos < 40){ // YOU CROSSED THE ROAD
    youWin();
  }

  // DISPLAY UI TEXT
  ui.currentLevel();
  if (frog.dead == true){
    ui.lose();
  }
  if (won == true){
    ui.win();
  }
  if(started == false){
    ui.instructions();
  }
}

void gameOver(){
  bgColor = color(255,0,0, 25);
  roadColor = color(0,0,0, 25);
}

void youWin(){
  bgColor = color(0,0,255, 25);
  roadColor = color(0,0,0, 25);
  won = true;
}

void restart(){ // RESTART GAME ONCE DEAD
  level = 1;
  frog.xpos = 100;
  frog.ypos = 180;
  frog.dead = false; 
  bgColor = color(255);
  roadColor = color(0);

  for (int i=0;i<cars.length;i++){
    cars[i].reset(level);
  }
}

void levelUp(){ // NEXT LEVEL
  level++;
  frog.xpos = 100;
  frog.ypos = 180;
  won = false;
  bgColor = color(255);
  roadColor = color(0);

  for (int i=0;i<cars.length;i++){
    cars[i].reset(level);
  }
}

void keyPressed(){
  if(won == false && frog.dead == false){
    if(key=='w'){
      frog.moveY(-1);
    } else if (key=='s'){
      frog.moveY(1);
    } else if(key=='a'){
      frog.moveX(-1);
    } else if (key=='d'){
      frog.moveX(1);
    }
  }

  if (won == true){
    if(key == ' '){
      levelUp();
    }
  }

  if (frog.dead == true){
    if(key == ' '){
      restart();
    }
  }
  started = true;
}