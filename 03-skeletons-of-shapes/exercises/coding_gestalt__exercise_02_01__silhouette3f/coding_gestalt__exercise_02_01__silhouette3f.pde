// Declaring a variable of type PImage
 PImage img; 
 PImage sceleton;
 int inc = 5;  
 
 void setup() {
   size(800,400);
   // Make a new instance of a PImage by loading an image file
   img = loadImage("silhoutte.png");
   sceleton = createSceleton();
   
 }
 
 
 void draw() {
   background(255);
   // Draw the image to the screen at coordinate (0,0)
   image(img,0,0);
   
   image(sceleton, 401, 0);

 }
 
 PImage createSceleton() {
   int w = img.width, h = img.height;
  
  // create a target image
  PImage img3 = createImage(400,400, RGB);

  // tell the source image you are about to read pixels

  img.loadPixels();
  // Copy the image
  for(int x = 0; x < w; x++) {
    for(int y = 0; y < h; y++) {
      img3.pixels[y * w + x] = img.pixels[y * w + x];
    }
  }
  img3.updatePixels();
 
  // Starting the Grassfire Transform
  img3.loadPixels();
  // First loop over all pixels 
  for(int y = 0; y < h; y++) {
    for(int x = 0; x < w; x++) {
    
      // new_p stores the new value that the pixel should have
      int new_p;
      
      // This checks whether the current pixel is in the region. 
      // It checks whether the value of the pixel in the ORIGINAL image is -1 (white)
      if(img.pixels[y * w + x] != -1) {
           
        // set pixel to 1 + minimum value of the north and west neighbours
        int g_new = inc + min(int(blue(img3.pixels[(y - 1) * w + x])), int(blue(img3.pixels[w * y + (x-1)])));
        new_p = color(g_new, g_new, g_new);  
       
      }
      else{
        new_p = 0;
      }
        
      // Set the pixel in the image to new_p  
      img3.pixels[y * w + x] = new_p;

    }
  }
   
  img3.updatePixels();
  
  img3.loadPixels();
  //Second loop over all pixels. This time we go backwards over the image.
  for(int x = w-1; x >= 0; x--) {
    for(int y = h-1; y >= 0; y--) {
      
      // new_p stores the new value that the pixel should have
      int new_p;
      
      // This checks whether the current pixel is in the region. 
      // It checks whether the value of the pixel in the ORIGINAL image is -1 (white)
      if(img.pixels[y * w + x] != -1) {
        //If the south or east neighbour would be out of bounds, we just keep the pixel as is.
        /*if(y == h-1 || x == w-1){
          continue;
        }*/
        // set pixel to the minimum of: (the curent value and
        //    1 + minimum value of the south and east neighbours)
        int g_new = min(int(blue(img3.pixels[y*w+x])) , inc+ min(int(blue(img3.pixels[(y + 1) * w + x])), int(blue(img3.pixels[w * y + (x+1)]))));
        new_p = color(g_new, g_new, g_new);  
        
          println(g_new);
      }
      else{
        new_p = 0;
      }
      // Set the pixel in the image to new_p 
      img3.pixels[y * w + x] = new_p;
    }
  }
  
  img3.updatePixels();
  return img3;
   
 }
 
