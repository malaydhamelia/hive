import processing.video.*;
import com.hamoid.*;

VideoExport videoExport;
// 640×360
// 320×240
// 640×480
Capture cam;
PImage[] buffer_1; PImage[] buffer_2; PImage[] buffer_3; PImage[] buffer_4;
//PImage[] buffer2_1; PImage[] buffer2_2; PImage[] buffer2_3; PImage[] buffer2_4;
//PImage[] buffer3_1; PImage[] buffer3_2; PImage[] buffer3_3; PImage[] buffer3_4;
//PImage[] buffer4_1; PImage[] buffer4_2; PImage[] buffer4_3; PImage[] buffer4_4;

 int camW=320;
 int camH=240;
 int i=0; 
 int nFrames_1 = 0;
 int nFrames_2 = 4;
 int nFrames_3 = 8;
 int nFrames_4 = 12;
 //int nFrames2_1 = 16;
 //int nFrames2_2 = 20;
 //int nFrames2_3 = 24;
 //int nFrames2_4 = 28;
 //int nFrames3_1 = 32;
 //int nFrames3_2 = 36;
 //int nFrames3_3 = 40;
 //int nFrames3_4 = 44;
 //int nFrames4_1 = 48;
 //int nFrames4_2 = 52;
 //int nFrames4_3 = 56;
 //int nFrames4_4 = 60; 
 int iWrite = 0, iRead = 1;
void setup() {
  size(1280, 960);
 
  cam = new Capture(this, camW, camH, 30);
  cam.start();
  buffer_1 = new PImage[nFrames_1];
  buffer_2 = new PImage[nFrames_2];
  buffer_3 = new PImage[nFrames_3];
  buffer_4 = new PImage[nFrames_4];
  buffer2_1 = new PImage[nFrames2_1];
  buffer2_2 = new PImage[nFrames2_2];
  buffer2_3 = new PImage[nFrames2_3];
  buffer2_4 = new PImage[nFrames2_4];
  buffer3_1 = new PImage[nFrames3_1];
  buffer3_2 = new PImage[nFrames3_2];
  buffer3_3 = new PImage[nFrames3_3];
  buffer3_4 = new PImage[nFrames3_4];
  buffer4_1 = new PImage[nFrames4_1];
  buffer4_2 = new PImage[nFrames4_2];
  buffer4_3 = new PImage[nFrames4_3];
  buffer4_4 = new PImage[nFrames4_4];
  
  videoExport = new VideoExport(this);
  videoExport.startMovie();
  
}

void draw() {
  background(255);
  fill(255, 0,0, 120);
  noStroke();
  ellipse(mouseX, mouseY, 10, 10);
  if(cam.available()) {
    cam.read();
  }
  if(keyPressed){
  if(key=='1'){
    background(255);
  rendMode_1();
  }
  if(key=='2'){
    background(255);
  rendMode_2();
  }
  if(key=='q'){
    videoExport.endMovie();
    exit();
   }
  
  }
  videoExport.saveFrame();
}
void rendMode_1(){
  cam.read();
  image(cam,  0,  0);
  image(cam, 0, camH);
  image(cam, camW, 0);
  image(cam, camW, camH/2);
}


void rendMode_2(){
 cam.read();
  image(cam, i, mouseY);
i=i+4;
if (i>width){
i=0;
}
}
