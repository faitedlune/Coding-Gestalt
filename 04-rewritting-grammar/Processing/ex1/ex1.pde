void setup() {
  size(640,360);
}
 
void draw() {
  background(255);
  drawCircle(width/2,height/4,300);
}
 
void drawCircle(float x, float y, float radius) {
  stroke(0);
  noFill();
  rectMode(CENTER);
  rect(x, y, radius, radius/4);
  if(radius > 2) {
    drawCircle(x + radius/3, y+(radius/4), radius/3);
    drawCircle(x - radius/3, y+(radius/4), radius/3);
 
  }
}
