float rectW = 80; 
float rectH = 20;
float bufferW = .5 * rectW + 5;
float bufferH = .5 * rectH + 5;
float rectX = bufferW;
float rectY = bufferH;
boolean clockwise = true;
color fillColor = color(random(255), random(255), random(255));
void setup() {
  size(400, 400);
  rectMode(CENTER);
}
void draw() {
  background(0);
  fill(fillColor);
  rect(rectX, rectY, rectW, rectH);

  if (clockwise) {
    moveClockwise();
  } else {
    moveCounterClockwise();
  }
}
void moveClockwise() {
  if (rectX < width - bufferW && rectY == bufferH) {
    rectX += 5;
  } else if (rectY < height - bufferH && rectX == width - bufferW) {
    rectY += 5;
  } else if (rectX > bufferW && rectY == height - bufferH) {
    rectX -= 5;
  } else if (rectY > bufferH && rectX == bufferW) {
    rectY -= 5;
  }
}
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
void mousePressed() {
  clockwise = !clockwise;
  fillColor = color(random(255), random(255), random(255));
}