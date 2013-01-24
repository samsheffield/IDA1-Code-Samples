Ball ball;
Paddle paddle1;

void setup(){
  size(400,400);
  ball = new Ball();
  paddle1 = new Paddle();
  noCursor();
}

void draw(){
  background(0);
  if(ball.hit(paddle1) == true){
    ball.reverse();
  }
  ball.move();
  ball.display();
  paddle1.move();
  paddle1.display();
}