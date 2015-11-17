//declare variables
float diam;
PVector loc, vel;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  loc= new PVector(width/2, height/2);
  diam = 80;
  vel= PVector.random2D(); 
  vel.mult(5);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(loc.x, loc.y, diam, diam);

  //add velocity to position
  loc.x += vel.x;
  loc.y += vel.y;

  //wrap the ball's position
  if (loc.x + diam/2 >= width) {
    loc.x = -diam/2;     
  } else if (loc.x - diam/2 <= 0) {
    loc.x = width + diam/2;
  }
  if (loc.y + diam/2 >= height) {
    loc.y = -diam/2;
  } else if (loc.y - diam/2 <= 0) {
    loc.y = height + diam/2;
  }
}