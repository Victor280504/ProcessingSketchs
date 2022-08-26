float x = 100;
float y = 100;
float xspeed = 2;
float yspeed = 5;
void setup() {
  size(200, 200);
  background(255);
}

void draw() {
  noStroke();
  fill(255, 10);
  rect(0, 0, width, height);
  x = x + xspeed;
  y = y + yspeed;
  if (x > width || x < 0) {
    xspeed = (xspeed *-1);
  }
  if ((y > height) || (y < 0)) {
    yspeed = (yspeed *-1);
  }
  fill(175);
  rect(0, 0, width, height);
  fill(0);
  ellipse(x, y, 16, 16);
}
