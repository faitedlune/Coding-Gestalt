
// These are just dummy functions. 
// Please implement them.

// Hint:
// Use copy_pixels_easy and copy_pixels_fast for inspiration


PImage grayscale(PImage img) {
  Filter.begin(img);
  for(int i = 0; i < Filter.source.length; i++) {
    Filter.target[i] = color(brightness(Filter.source[i]));
  }
  return Filter.end();
}

PImage threshold(PImage img, int threshold) {
  Filter.begin(img);
  for(int i = 0; i < Filter.source.length; i++) {
    Filter.target[i] = color(brightness(Filter.source[i]) > threshold ? 255 : 0);
  }
  return Filter.end();
}

PImage dilate(PImage img, int steps) {
  //get a copy of the image
 PImage out=in.get(); 
  
  int w=img.width;
  int h=img.height;
  
  for(int s = 0; s<steps; s++){ //steps is the intesity of filter
    Filter.begin(out);

  for(int i = 0; i < Filter.source.length; i++) {
    
    int x = i % w; // modulo gives the rest of the division
    int y = i / w ;
    
    int xmin=max(0, x-1);//to constrain value
    int xmax=min(w-1,x+1);
    
    int ymin=max(0, y-1);
    int ymax=min(h-1,y+1);
    //start with the smallest possible value
    float maxval=0;
    
    for(int y2=ymin; y2<ymax; y2++){
     for(int x2=xmin; x2<xmax; x2++){
      maxval=max(maxval, int(brightness(Filter.source[y2*w+x2])));
     } 
    }
    
    Filter.target[i] = color(maxval);
    out=Filter.end();
 
  }
  }
      return out;
}

PImage erode(PImage img, int steps) {
  return img;
}









