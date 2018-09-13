int x=0;
int y=0;

void setup (){
  size (800,500);
}

void draw (){
  background(66,134,244);
  waves();
  frontLegs();
  turtle();
  backLegs();
}

void turtle(){
  fill(39,214,148);
  stroke(214,135,50);
  ellipse(100+x,400+y,130,90);
  ellipse(100+65+x,395+y,50,50);
  triangle(50+x,425+y,15+x,425+y,35+x,400+y);
  fill(0,0,0);
  noStroke();
  ellipse(180+x,390+y,5,5);
}

void backLegs(){
   int xleg = 35 + x;
   int yleg = 425 + y;
   fill(39,214,148);
   stroke(214,135,50);
   ellipse(xleg+15,yleg,30,30);
   rect(xleg,yleg,30,30);
   ellipse(xleg+115,yleg,30,30); 
   rect(xleg+100,yleg,30,30);
}

void frontLegs(){
   int xleg = 25+x;
   int yleg = 415+y;
   fill(39,214,148);
   stroke(214,135,50);
   ellipse(xleg+15,yleg,30,30);
   rect(xleg,yleg,30,30);
   ellipse(xleg+115,yleg,30,30); 
   rect(xleg+100,yleg,30,30);
}

void keyPressed() {
	if (keyCode == UP) y-=10;
	if (keyCode == DOWN) y+=10;
	if (keyCode == LEFT) x-=10;
	if (keyCode == RIGHT) x+=10;

}

void waves() {
	int x=-100;
	fill(#7CCEFF);
	noStroke();
	while (x < 801) {
		x = x + 100;
		ellipse(x,0,100,100);
	}
}