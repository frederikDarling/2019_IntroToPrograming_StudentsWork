class Objects {
  
 // Variables
 
 float r;       // radius of the flower petal
 int n_petals;  // number of petals 
 float x;       // x-position of the center of the flower
 float y;       // y-position of the center of the flower
  float x1;       // x-position of the center of the flower
 float y1; 
 int petalColor;//hexadecimal number for the color of petals
 float xS;
 float yS;
 int red=#ff0000;
 int c1=#ff4040;
 int c2=#ff9A9A;
 
Objects (float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor, float temp_xS, float temp_yS) {
  r=temp_r;
  n_petals = temp_n_petals;
  x=temp_x;
  y=temp_y;
  petalColor=temp_petalColor;
  xS=temp_xS;
  yS=temp_yS;
}

//new contructor for the ball
Objects (float temp_x, float temp_y, float temp_r) {
  x1=temp_x;
  y1=temp_y;
r=temp_r;
}

void display () {
  stroke(0);
  float ballX;
  float ballY;
  
  fill(petalColor);
  for (float i=0;i<PI*2;i+=2*PI/n_petals) {
//  ballX=width/2 + r*cos(i);
//  ballY=height/2 + r*sin(i);
  ballX=x + r*cos(i);
  ballY=y + r*sin(i);
  ellipse(ballX,ballY,r,r); 
  }
  fill(200,0,0);
  ellipse(x,y,r,r);
}

//display function of ball
void displayBall () {
  
  fill(red);
  stroke(red);
  ellipse(x1,y1,r,r);
  fill(c1);
  stroke(c1);
   ellipse(x1+r/6,y1-r/6,r/3,r/3);
    stroke(c2);
    fill(c2);
   ellipse(x1+r/6,y1-r/6,r/8,r/8);
   stroke(0);
  
}
//function that makes the flower bounce
void moveBounce(){
  
    x = x+xS;
  y = y+yS;

  if (x < 0 || x> width-90) {
    xS *= -1;
    yS *= -1;
    println(x, y);
  }


  // if-statement that makes the flower bounce along the sides
  if (x < 0 +r + r*1.2/2|| x > width -r - r*1.2/2) {

    xS *= -1;
  }
  // if-statement that makes the flower bounce along the top and bottom
  if (y < 0 +r + r*1.2/2 +80|| y > height-r - r*1.2/2-150) {

    yS *= -1;
}

}

//function that allows the use of the mouse
//features if-statements that make the color of the ball change with mouse clicks
void useMouse(){

x1 = mouseX;
y1 = mouseY;


if(mousePressed && (mouseButton == LEFT)){

red = #ff0000;
c1=#ff4040;
c2=#ff9A9A;
stroke(0);
ellipse(mouseX,mouseY,r,r);

}

if(mousePressed && (mouseButton == RIGHT) ){

  red=#0000ff;
  c1=#4040ff;
c2=#9A9Aff;
ellipse(mouseX,mouseY,r,r);

}


}

//function with return-type boolean which returns whether the objects overlap or not
boolean overlaps(Objects other) {

  // get distance between the circle's centers
  // use the Pythagorean Theorem to compute the distance

  float d = dist(mouseX,mouseY,other.x,other.y);
println(other.x,other.y);
  // if the distance is less than the sum of the circle's
  // radii, the circles are touching!
  if (d <= r*2) {
    return true;
  } else{
  
return false;

  }



}
}
