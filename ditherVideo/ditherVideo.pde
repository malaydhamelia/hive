import processing.video.*;
import com.hamoid.*;

VideoExport videoExport;


// Size of each cell in the grid
int videoScale = 10;
// Number of columns and rows in the system
int cols, rows;
// Variable for capture device
Capture video;

void setup() { 
  size(1280, 960);  
  // Initialize columns and rows  
  cols = width / videoScale;  
  rows = height / videoScale;  
  // Construct the Capture object  
  video = new Capture(this, 160, 120);  
  video.start();
  videoExport = new VideoExport(this);
  videoExport.startMovie();

}

void captureEvent(Capture video) {  
  video.read();
}

void draw() {  
  background(0);
  video.loadPixels();  
  // Begin loop for columns  
  for (int i = 0; i < cols; i++) {    
    // Begin loop for rows    
    for (int j = 0; j < rows; j++) {      
      // Where are you, pixel-wise?      
      int x = i*videoScale;      
      int y = j*videoScale;    
      
      // Reverse the column to mirro the image.
      int loc = (video.width - i - 1) + j * video.width;       
      
      color c = video.pixels[loc];
      // A rectangle's size is calculated as a function of the pixel’s brightness. 
      // A bright pixel is a large rectangle, and a dark pixel is a small one.
      float sz = (brightness(c)/255) * videoScale;       
      
      rectMode(CENTER);      
      fill(255);      
      noStroke();      
      rect(x + videoScale/2, y + videoScale/2, sz, sz);    
    }  
  }
    videoExport.saveFrame();

}   
