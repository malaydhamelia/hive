import processing.video.*;
import com.hamoid.*;

VideoExport videoExport;
Capture cam;
PImage[] buffer_1, buffer_2, buffer_3, buffer_4, buffer_5, buffer_6, buffer_7, buffer_8, buffer_9, buffer_10, buffer_11, buffer_12, buffer_13, buffer_14, buffer_15, buffer_16;
int w = 320;
int h = 240;
//variables
int nFrames_1 = 2;
int iWrite_1 = 0, iRead_1 = 1;

int nFrames_2 = 4 ;
int iWrite_2 = 0, iRead_2 = 1;

int nFrames_3 = 8;
int iWrite_3 = 0, iRead_3 = 1;

int nFrames_4 = 12 ;
int iWrite_4 = 0, iRead_4 = 1;

int nFrames_5 = 16;
int iWrite_5 = 0, iRead_5 = 1;

int nFrames_6 = 20 ;
int iWrite_6 = 0, iRead_6 = 1;

int nFrames_7 = 24;
int iWrite_7 = 0, iRead_7 = 1;

int nFrames_8 = 28 ;
int iWrite_8 = 0, iRead_8 = 1;

int nFrames_9 = 33;
int iWrite_9 = 0, iRead_9 = 1;

int nFrames_10 = 36 ;
int iWrite_10 = 0, iRead_10 = 1;

int nFrames_11 = 40;
int iWrite_11 = 0, iRead_11 = 1;

int nFrames_12 = 44 ;
int iWrite_12 = 0, iRead_12 = 1;

int nFrames_13 = 48;
int iWrite_13 = 0, iRead_13 = 1;

int nFrames_14 = 52 ;
int iWrite_14 = 0, iRead_14 = 1;

int nFrames_15 = 56;
int iWrite_15 = 0, iRead_15 = 1;

int nFrames_16 = 60 ;
int iWrite_16 = 0, iRead_16 = 1;

void setup(){
  size(1280, 640);
  cam = new Capture(this, w, h);
  cam.start();
  buffer_1 = new PImage[nFrames_1];
  buffer_2 = new PImage[nFrames_2];
   buffer_3 = new PImage[nFrames_3];
  buffer_4 = new PImage[nFrames_4];
  buffer_5 = new PImage[nFrames_5];
  buffer_6 = new PImage[nFrames_6];
   buffer_7 = new PImage[nFrames_7];
  buffer_8 = new PImage[nFrames_8];
    buffer_9 = new PImage[nFrames_9];
  buffer_10 = new PImage[nFrames_10];
  buffer_11 = new PImage[nFrames_11];
  buffer_12 = new PImage[nFrames_12];
  buffer_13 = new PImage[nFrames_13];
  buffer_14 = new PImage[nFrames_14];
  buffer_15 = new PImage[nFrames_15];
  buffer_16 = new PImage[nFrames_16];
  
   videoExport = new VideoExport(this);
  videoExport.startMovie();
}

void draw() {
  if(cam.available()) {
    cam.read();
    buffer_1[iWrite_1] = cam.get();
    if(buffer_1[iRead_1] != null){
      image(buffer_1[iRead_1], 0, 0);
    }
    iWrite_1++;
    iRead_1++;
    if(iRead_1 >= nFrames_1-1){
      iRead_1 = 0;
    }
    if(iWrite_1 >= nFrames_1-1){
      iWrite_1 = 0;
    }
    //
    buffer_2[iWrite_2] = cam.get();
    if(buffer_2[iRead_2] != null){
      image(buffer_2[iRead_2], 320, 0);
    }
    iWrite_2++;
    iRead_2++;
    if(iRead_2 >= nFrames_2-1){
      iRead_2 = 0;
    }
    if(iWrite_2 >= nFrames_2-1){
      iWrite_2 = 0;
    }
    buffer_3[iWrite_3] = cam.get();
    if(buffer_3[iRead_3] != null){
      image(buffer_3[iRead_3], 640, 0);
    }
    iWrite_3++;
    iRead_3++;
    if(iRead_3 >= nFrames_3-1){
      iRead_3 = 0;
    }
    if(iWrite_3 >= nFrames_3-1){
      iWrite_3 = 0;
    }
    //
    buffer_4[iWrite_4] = cam.get();
    if(buffer_4[iRead_4] != null){
      image(buffer_4[iRead_4],960, 0);
    }
    iWrite_4++;
    iRead_4++;
    if(iRead_4 >= nFrames_4-1){
      iRead_4 = 0;
    }
    if(iWrite_4 >= nFrames_4-1){
      iWrite_4 = 0;
    }
    buffer_5[iWrite_5] = cam.get();
    if(buffer_5[iRead_5] != null){
      image(buffer_5[iRead_5], 0, 240);
    }
    iWrite_5++;
    iRead_5++;
    if(iRead_5 >= nFrames_5-1){
      iRead_5 = 0;
    }
    if(iWrite_5 >= nFrames_5-1){
      iWrite_5 = 0;
    }
    //
    buffer_6[iWrite_6] = cam.get();
    if(buffer_6[iRead_6] != null){
      image(buffer_6[iRead_6], 320, 240);
    }
    iWrite_6++;
    iRead_6++;
    if(iRead_6 >= nFrames_6-1){
      iRead_6 = 0;
    }
    if(iWrite_6 >= nFrames_6-1){
      iWrite_6 = 0;
    }
    buffer_7[iWrite_7] = cam.get();
    if(buffer_7[iRead_7] != null){
      image(buffer_7[iRead_7], 640, 240);
    }
    iWrite_7++;
    iRead_7++;
    if(iRead_7 >= nFrames_7-1){
      iRead_7 = 0;
    }
    if(iWrite_7 >= nFrames_7-1){
      iWrite_7 = 0;
    }
    //
    buffer_8[iWrite_8] = cam.get();
    if(buffer_8[iRead_8] != null){
      image(buffer_8[iRead_8], 960, 240);
    }
    iWrite_8++;
    iRead_8++;
    if(iRead_8 >= nFrames_8-1){
      iRead_8 = 0;
    }
    if(iWrite_8 >= nFrames_8-1){
      iWrite_8 = 0;
    }
     buffer_9[iWrite_9] = cam.get();
    if(buffer_9[iRead_9] != null){
      image(buffer_9[iRead_9], 0, 480);
    }
    iWrite_9++;
    iRead_9++;
    if(iRead_9 >= nFrames_9-1){
      iRead_9 = 0;
    }
    if(iWrite_9 >= nFrames_9-1){
      iWrite_9 = 0;
    }
    //
    buffer_10[iWrite_10] = cam.get();
    if(buffer_10[iRead_10] != null){
      image(buffer_10[iRead_10], 320, 480);
    }
    iWrite_10++;
    iRead_10++;
    if(iRead_10 >= nFrames_10-1){
      iRead_10 = 0;
    }
    if(iWrite_10 >= nFrames_10-1){
      iWrite_10 = 0;
    }
     buffer_11[iWrite_11] = cam.get();
    if(buffer_11[iRead_11] != null){
      image(buffer_11[iRead_11], 640, 480);
    }
    iWrite_11++;
    iRead_11++;
    if(iRead_11 >= nFrames_11-1){
      iRead_11 = 0;
    }
    if(iWrite_11 >= nFrames_11-1){
      iWrite_11 = 0;
    }
    //
    buffer_12[iWrite_12] = cam.get();
    if(buffer_12[iRead_12] != null){
      image(buffer_12[iRead_12], 960, 480);
    }
    iWrite_12++;
    iRead_12++;
    if(iRead_12 >= nFrames_12-1){
      iRead_12 = 0;
    }
    if(iWrite_12 >= nFrames_12-1){
      iWrite_12 = 0;
    }
     buffer_13[iWrite_13] = cam.get();
    if(buffer_13[iRead_13] != null){
      image(buffer_13[iRead_13], 0, 720);
    }
    iWrite_13++;
    iRead_13++;
    if(iRead_13 >= nFrames_13-1){
      iRead_13 = 0;
    }
    if(iWrite_13 >= nFrames_13-1){
      iWrite_13 = 0;
    }
    //
    buffer_14[iWrite_14] = cam.get();
    if(buffer_14[iRead_14] != null){
      image(buffer_14[iRead_14], 320, 720);
    }
    iWrite_14++;
    iRead_14++;
    if(iRead_14 >= nFrames_14-1){
      iRead_14 = 0;
    }
    if(iWrite_14 >= nFrames_14-1){
      iWrite_14 = 0;
    }
        buffer_15[iWrite_15] = cam.get();
    if(buffer_15[iRead_15] != null){
      image(buffer_15[iRead_15], 640, 720);
    }
    iWrite_15++;
    iRead_15++;
    if(iRead_15 >= nFrames_15-1){
      iRead_15 = 0;
    }
    if(iWrite_15 >= nFrames_15-1){
      iWrite_15 = 0;
    }
    //
    buffer_16[iWrite_16] = cam.get();
    if(buffer_16[iRead_16] != null){
      image(buffer_16[iRead_16], 960, 720);
    }
    iWrite_16++;
    iRead_16++;
    if(iRead_16 >= nFrames_16-1){
      iRead_16 = 0;
    }
    if(iWrite_16 >= nFrames_16-1){
      iWrite_16 = 0;
    }
  }  
  videoExport.saveFrame();
}
