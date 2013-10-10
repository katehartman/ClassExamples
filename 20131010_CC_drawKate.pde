void setup() {
  size(100, 200);
}

void draw() {
  drawKate();
}

void drawKate() {

  int headX = 50;
  int headY = 25;
  int headSize = 50;
  int leftElbowX = 25;
  int leftElbowY = 70;
  int rightElbowX = 75;
  int rightElbowY = 70;
  int leftHandX = 10;
  int leftHandY = 50;
  int rightHandX = 90;
  int rightHandY = 50;
  int torsoTopX = 50;
  int torsoTopY = 50;
  int torsoBottomX = 50;
  int torsoBottomY = 90;
  int skirtWidth = 50;
  int skirtLength = 50;
  int shoeWidth = 25;
  int shoeHeight = 10;

  strokeWeight(2);

  //head
  fill(255);
  ellipse(headX, headY, headSize, headSize);

  //torso
  line(torsoTopX, torsoTopY, torsoBottomX, torsoBottomY);

  //arm
  line(leftElbowX, leftElbowY, rightElbowX, rightElbowY);

  //left hand
  line(leftElbowX, leftElbowY, leftHandX, leftHandY);

  //right hand
  line(rightElbowX, rightElbowY, rightHandX, rightHandY);

  fill(0);
  //skirt
  triangle(torsoBottomX, torsoBottomY, torsoBottomX+(skirtWidth/2), torsoBottomY + skirtLength, torsoBottomX-(skirtWidth/2), torsoBottomY + skirtLength);

  //legs
  line(headX - headSize/4, torsoBottomY + skirtLength, headX - headSize/4, height);
  line(headX + headSize/4, torsoBottomY + skirtLength, headX + headSize/4, height);

  //shoes
  fill(307, 96, 96);


  rect(headX - headSize/4 - shoeWidth, height-shoeHeight, shoeWidth, shoeHeight);
  rect(headX + headSize/4, height-shoeHeight, shoeWidth, shoeHeight);
}
