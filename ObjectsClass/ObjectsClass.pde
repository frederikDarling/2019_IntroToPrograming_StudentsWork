Objects myFlower;  // the first instance of the Flower class
Objects myCar;

PImage bg; //https://doublejj.com/wp-content/uploads/2018/02/grass-free-texture-1.jpg
float x= 0;
float y=0;
int bc= #43AF76;

int score = 0;

void setup() {
  size(1000, 800);
  bg = loadImage("grass.jpg");
  int _r1= 60;
  int _petals=5;
  float _x=width/2;
  float _y=height/2;
  //int _pc=#FFA000;
  int _pc=#FF8000;
  ;
  int changeColor = #FF0000;

  myFlower = new Objects(_r1, _petals, _x, _y, _pc, 3, 4);
  myCar = new Objects(x, y, _r1);   



  //  myFlower2 = new Flower();
  //   myFlower3 = new Flower();
}

void draw() {
  background(bc);
//draws background image
  image(bg, 0, 0, 1000, 800);

  stroke(255);
  fill(255);
  rect(0, 0, 1000, 80);
  rect(0, 650, 1000, 150);

//draws score text
  fill(0);
  textSize(42);
  text("Score:"+score, 50, 50);

//draws text explaining the program
  textSize(32);
  text("Overlap ball with flower to score points!", 150, 710);
  text("Click LEFT for red ball, Click RIGHT for blue ball", 120, 760);
  
  //drawing the objects and their functions
  myFlower.display();
  myFlower.moveBounce();
  myCar.displayBall();
  myCar.useMouse();

  println(myCar.overlaps(myFlower));
  
  //checks whether the objects overlap
  if (myCar.overlaps(myFlower)) {
    score = score + 1;
    fill(255);
  }
}
/*float c1x = 0;      // circle 1 position
 float c1y = 0;      // (controlled by mouse)
 float c1r = 30;     // radius
 
 float c2x = 300;    // circle 2 position
 float c2y = 200;
 float c2r = 100;
 
 
 void setup() {
 size(600,400);
 noStroke();
 }
 
 
 void draw() {
 background(255);
 
 // update position to mouse coordinates
 c1x = mouseX;
 c1y = mouseY;
 
 // check for collision
 // if hit, change color
 boolean hit = circleCircle(c1x,c1y,c1r, c2x,c2y,c2r);
 if (hit) {
 fill(255,150,0);
 }
 else {
 fill(0,150,255);
 }
 ellipse(c2x,c2y, c2r*2,c2r*2);
 
 // other circle, controlled by mouse
 fill(0, 150);
 ellipse(c1x,c1y, c1r*2,c1r*2);
 }
 
 
 // CIRCLE/CIRCLE
 boolean circleCircle(float c1x, float c1y, float c1r, float c2x, float c2y, float c2r) {
 
 // get distance between the circle's centers
 // use the Pythagorean Theorem to compute the distance
 float distX = c1x - c2x;
 float distY = c1y - c2y;
 float distance = sqrt( (distX*distX) + (distY*distY) );
 
 // if the distance is less than the sum of the circle's
 // radii, the circles are touching!
 if (distance <= c1r+c2r) {
 return true;
 }
 return false;
 }*/
