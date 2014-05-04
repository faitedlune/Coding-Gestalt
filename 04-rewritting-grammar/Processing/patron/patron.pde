int vy;
int vx;
int rad;
int t;
void setup() {
  size(640,360);
  smooth();
}
 
void draw() {
  background(255);
       rad=width/3;
       t=height/(rad/2);
  for(int i=0; i<10; i++){
     for(int j=0; j<t; j++){
         vy=j*height/2;
       println(t);
  drawCircle(i*width/3,vy,rad);
  }
  }
}
 
void drawCircle(float x, float y, float radius) {
  int nbr_circles = 24;
  float lg_diam = radius/1.6 * .85;
  float lg_rad = lg_diam / 2;
  float lg_circ = PI * lg_diam;
  float sm_diam = (lg_circ / nbr_circles/2);
  float cx = x;
  float cy = y;
  fill(0);
  ellipseMode(CENTER);
  ellipse(x, y, radius, radius/4);
  fill(255);
  stroke(0);
  strokeWeight(1);
  ellipse(x,y,radius/2,radius/2);
  for (int i = 1; i <= nbr_circles; ++i) {
    float angle = i * TWO_PI / nbr_circles;
    float x2 = cx + cos(angle) * lg_rad;
    float y2 = cy + sin(angle) * lg_rad;
   noStroke();
  fill(0);
    ellipse(x2, y2, sm_diam, sm_diam);
  }

  if(radius > 2) {
//drawCircle() calls itself twice, creating a branching effect
    drawCircle(x + radius/3, y+(radius/4), radius/3);
    drawCircle(x - radius/3, y+(radius/4), radius/3);
    drawCircle(x + radius/3, y-(radius/4), radius/3);
    drawCircle(x - radius/3, y-(radius/4), radius/3);
  }
}
