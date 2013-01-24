int[] x = {50, 100, 300, 50, 10};
int i; // COUNTER

void setup(){
  size(400, 400);
  frameRate(2);
}

void draw(){
   background(0);
   ellipse(x[i], height/2, 50,50);
   
  /* if(i < 2){
     i++;
   }else{
     i=0;
   }*/
   
   // SMARTER
   if(i < x.length-1){
     i++;
   }else{
     i=0;
   }
}
