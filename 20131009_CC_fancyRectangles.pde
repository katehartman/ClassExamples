/*
Kate Hartman
 Creation & Computation
 Fall 2013
 Fancy Rectangles
 
 This example draws two rectangles - 1 dynamic, 1 static.
 */


int rectX;
int rectY;

void setup() {
  size(400, 400);
  background(255);
}

void draw() {
  //Refresh the background so we don't see previous rectangles. Comment this out if you want to see the trails or use it as a painting tool.
  background(255);

  //Draw Rectangle 1. This one will stay put.

  fill(255, 0, 0);
  rectMode(CENTER);
  rect(100, 100, 70, 50);

  //Draw Rectangle 2. This one will move with the mouse when the mouse is pressed and will change color when a key is pressed.

  if (keyPressed == true) {
    fill(0, 255, 0);
  } 
  else {
    fill(0, 0, 255);
  }

  rectMode(CORNER);

  if (mousePressed == true) {
    rectX=mouseX;
  } 

  if (mousePressed == true) {
    rectY=mouseY;
  } 

  rect(rectX, rectY, 70, 50);
}
