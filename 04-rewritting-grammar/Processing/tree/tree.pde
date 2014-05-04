int width=640;
int height=360;
float x=width/2;
float y=height/1.15;
float rad=30;
void setup() {
  size(width,height);
}
 
void draw() {
  background(255);
  A(x,y,rad);
  tree();
}

void tree(){
A(x-15,y+15,rad);
}

void A(float cx, float cy, float crad){
    fill(0);
  noStroke();
  ellipse(cx,cy,crad,crad);
  if(crad>2){
    A(cx,cy-crad,crad*.85);
  }
}

/*shape TREE 
rule 20 {
CIRCLE [ s .25  h 30 sat 1 b .3 ]
TREE [ y .1 s .97 ]
}
rule 1.5{
BRANCH [ ]
BRANCH [ flip 90 ]
}
shape BRANCH 
{TREE [ r 20 ]}
HPJAS
shape A{
CIRCLE[ h 80 sat 1 b .4 ]
A[x -.5 y 1 s.9 r -10 ]
B[x .5 y 1 s.5 r 10 b .5]
}
shape B{A[]}*/
