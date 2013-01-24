class UI{
  color textColor;
  UI(){
    textColor = color(255,255,0);
  }

  void lose(){
    fill(textColor);
    text("ashes to ashes, etc.\nclick space to restart" , width/2, height/2);
  }

  void win(){
    fill(textColor);
    text("the world is mine!\nclick space to continue" , width/2, height/2);
  }

  void currentLevel(){
    fill(0);
    textAlign(CENTER);
    text("Level " + level, width/2, 20);
  }

  void instructions(){
    fill(textColor);
    textAlign(CENTER);
    text("WASD to move" , width/2, height/2);
  }
}
