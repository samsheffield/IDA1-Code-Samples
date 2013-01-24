// TWO SHAPES COLLIDING

int x2 = 450;
int y2 = 0;

int x3 = 450;
int y3 = 200;

int x4 = 100;
int y4 = 200;

void setup(){
	size(500, 400);
}

void draw(){
	background(127);

	if (hitTestRect(x2, y2, 20, 20, x3, y3, 40, 40) == true){
		fill(255,255,0);
	}else{
		fill(255);
	}

	rect(x3, y3, 40,40);

	// FALLING RECT
	rect(x2, y2, 20,20);
	if(y2 < height){
		y2 ++;
	} else {
		y2 = 0;
	}
	

	// CHECK IF ELLIPSES HIT
	if (hitTestCircle(mouseX, mouseY, 30, x4, y4, 60) == true){
		fill(255,0,255);
	} else {
		fill(255);
	}
	ellipse(x4, y4, 60,60);
	ellipse(mouseX, mouseY, 30,30);
}

boolean hitTestRect(int ax, int ay, int aw, int ah, int bx, int by, int bw, int bh){
	if ((ax+aw >= bx && ax+aw <= bx + bw || ax >= bx && ax <= bx + bw) && (ay+ah >= by && ay+ah <= by + bh || ay >= by && ay <= by + bh)){
		return true;
	} else {
		return false;
	}	
}

boolean hitTestCircle(int ax, int ay, int ar, int bx, int by, int br){
	if(dist(ax, ay, bx, by) < ar/2+br/2){
		return true;
	}else{
		return false;
	}
}