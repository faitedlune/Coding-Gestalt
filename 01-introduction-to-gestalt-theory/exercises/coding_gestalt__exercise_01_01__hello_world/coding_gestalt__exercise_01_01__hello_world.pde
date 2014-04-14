
///////////////////////////////////////////////////
//                                               //
//      CODING GESTALT  -   GESTALTING CODE      //
//      Lecture 01      -   Excercise 01         //
//                                               //
///////////////////////////////////////////////////

// (c) ADRIANA_ROMAN at Bauhaus-Uni Weimar ( 2014 )

PFont arial;

void setup() {
  size(400, 400); 
  arial = loadFont("Arial-BoldMT-12.vlw");
  textFont(arial);
  println("Hello World here too");
}

void draw() {
  background(255);
  fill(0);
  textAlign(CENTER);
  text("Hello World", width/2, height/2);

}
