void setup() {
size(400,200);
}
void draw() {
background(255);
stroke(0);
branch(width/2,height,100);
}
void branch(float x, float y, float h) {
line(x,y,x-h,h);
line(x,y,x+h,h);
if (h>2) {
branch(x+h,y+h,h/2);
branch(x-h,y+h,h/2);
}
}
