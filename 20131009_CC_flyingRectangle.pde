/*
Kate Hartman
 Creation & Computation
 Fall 2013
 Flying Rectangle
 
 This example draws a rectangle that moves back and forth
 */


int rectX = 0;
int rectY = 200;
int direction = 1;

void setup() {
  size(400, 400);
  background(255);
  //play with the frameRate to see the animation play out in slow motion
  frameRate(30);
}

void draw() {
  //Refresh the background so we don't see previous rectangles. Comment this out if you want to see the trails or use it as a painting tool.
  background(255);


  fill(0, 0, 255);
  rect(rectX, rectY, 70, 50);

  if (rectX >= width) {
    //increase number to increase speed
    direction = -5;
  }

  if (rectX <= 0) {
    //increase number to increase speed
    direction = 10;
  }

  rectX = rectX + direction;
}
