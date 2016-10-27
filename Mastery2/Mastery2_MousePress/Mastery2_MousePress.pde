// Rectangle width
float rectW = 50;
// Rectangle height
float rectH = 50;
// Don't edit this it is for the 5 pixel border
float bufferW = .5 * rectW + 5;
float bufferH = .5 * rectH + 5;
float rectX = bufferW;
float rectY = bufferH;
// Don't edit this it establishes a starting direction
boolean clockwise = true;
// Starting color is set to random
color fillColor = color(255, 0, 0);
// This is the speed at which the box should move
int speed = 5;
void setup() {
  // Size of the canvas
  size(400, 400);
  // Sets rectangle mode to center for easier use
  rectMode(CENTER);
}
void draw() {
  background(0);
  // Draw the rectangle
  fill(fillColor);
  rect(rectX, rectY, rectW, rectH);

  // Calls either moveClockwise() or moveCounterClockwise depending on the clockwise boolean variable
  if (clockwise) {
    moveClockwise();
  } else {
    moveCounterClockwise();
  }
}
// Function to move clockwise
void moveClockwise() {
  if (rectX < width - bufferW && rectY == bufferH) {
    rectX += speed;
  } else if (rectY < height - bufferH && rectX == width - bufferW) {
    rectY += speed;
  } else if (rectX > bufferW && rectY == height - bufferH) {
    rectX -= speed;
  } else if (rectY > bufferH && rectX == bufferW) {
    rectY -= speed;
  }
}
// Function to move counter-clockwise
void moveCounterClockwise() {
  if (rectX > bufferW && rectY == bufferH) {
    rectX -= 5;
  } else if (rectY < height - bufferH && rectX == bufferW) {
    rectY += 5;
  } else if (rectX < width - bufferW && rectY == height - bufferH) {
    rectX += 5;
  } else if (rectY <= height - bufferH && rectX == width - bufferW) {
    rectY -= 5;
  }
}
// Change colors and go other direction on mouse press
void mousePressed() {
  clockwise = !clockwise;
  if (fillColor == color(0, 255, 0)) {
    fillColor = color(255, 0, 0);
  } else {
    fillColor = color(0, 255, 0);
  }
}