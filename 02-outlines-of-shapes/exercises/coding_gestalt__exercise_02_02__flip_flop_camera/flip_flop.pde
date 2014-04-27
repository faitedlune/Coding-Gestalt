
// These are just dummy functions. 
// Please implement them.

// Hint:
// Use copy_pixels_easy and copy_pixels_fast for inspiration

PImage flip(PImage img) {
  
  Timer.start();
  
  // get image dimensions
  int w = img.width, h = img.height;
  
  // create a target image
  PImage img2 = createImage(w, h, RGB);
  
  // tell the source image you are about to read pixels
  img.loadPixels();
  
  // let the pixel pushing begin!
  for(int y = 0; y < h; y++) {
    for(int x = 0; x < w; x++) {
      
      // just copy the pixel from the source to the target
      // this is where you do all the crazy per pixel operations
      img2.pixels[y * w + x] = img.pixels[y * w + w -x-1];
      
    }
  }
  
  // tell the target image you are done writing pixels 
  img2.updatePixels();
  
  Timer.stop("copy pixels fast");
  
  return img2;
}

PImage flop(PImage img) {
  
  Timer.start();
  
  // get image dimensions
  int w = img.width, h = img.height;
  
  // create a target image
  PImage img3 = createImage(w, h, RGB);
  
  // tell the source image you are about to read pixels
  img.loadPixels();
  
  // let the pixel pushing begin!
  for(int y = 0; y < h; y++) {
    for(int x = 0; x < w; x++) {
      
      // just copy the pixel from the source to the target
      // this is where you do all the crazy per pixel operations
      int yfrontthetop=(h-y-1);
      img3.pixels[y * w + x] = img.pixels[/*(w*h)-(y * w + x+1)*/yfrontthetop * w + x]; // x*h+h-x; x*h+h-y-1;y * h + h - y-1
      
    }
  }
  
  // tell the target image you are done writing pixels 
  img3.updatePixels();
  
  Timer.stop("copy pixels fast");
  
  return img3;
}

int calIndex(int x, int y, int w){
 return y*w+x; 
}






