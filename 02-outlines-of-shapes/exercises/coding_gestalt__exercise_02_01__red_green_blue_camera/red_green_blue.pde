
// These are just dummy functions. 
// Please implement them.

// Hint:
// * Use copy_pixels_easy and copy_pixels_fast for inspiration
// * Use red() green() and blue() functions to get the pixel color components

PImage red(PImage img) {
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
      img2.pixels[y * w + x] = img.pixels[y * w + x];
      img2.pixels[y * w + x] = color(255,int(green(img.pixels[y * w + x])),int(blue(img.pixels[y * w + x])));

  }


  }
  
  // tell the target image you are done writing pixels 
  img2.updatePixels();
  
  Timer.stop("copy pixels fast");
  
  return img2;
}

PImage green(PImage img) {
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
      img3.pixels[y * w + x] = img.pixels[y * w + x];
      img3.pixels[y * w + x] = color(int(red(img.pixels[y * w + x])),255,int(blue(img.pixels[y * w + x])));

  }


  }
  
  // tell the target image you are done writing pixels 
  img3.updatePixels();
  
  Timer.stop("copy pixels fast");
  
  return img3;
}

PImage blue(PImage img) {
    Timer.start();
  
  // get image dimensions
  int w = img.width, h = img.height;
  
  // create a target image
  PImage img4 = createImage(w, h, RGB);
  
  // tell the source image you are about to read pixels
  img.loadPixels();
        
  // let the pixel pushing begin!
  for(int y = 0; y < h; y++) {
    for(int x = 0; x < w; x++) {
      
      // just copy the pixel from the source to the target
      // this is where you do all the crazy per pixel operations
      img4.pixels[y * w + x] = img.pixels[y * w + x];
      img4.pixels[y * w + x] = color(int(red(img.pixels[y * w + x])),int(green(img.pixels[y * w + x])),255);

  }


  }
  
  // tell the target image you are done writing pixels 
  img4.updatePixels();
  
  Timer.stop("copy pixels fast");
  
  return img4;
}






