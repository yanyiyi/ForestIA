import processing.video.*;
Movie movie;

//import processing.sound.*;
//SoundFile soundfile;

int playClip = 1;
boolean onClip1 = false;
boolean onClip2 = false;
boolean onClip3 = false;
boolean onClip4 = false;
boolean onClip5 = false;
boolean onClip6 = false;
boolean onClip7 = false;
boolean onClip8 = false;
boolean onClip9 = false;
int numFrames1 = 510;
int numFrames2 = 1050;
int numFrames3 = 390;
int numFrames4 = 1080;
int numFrames5 = 540;
int numFrames6 = 510;
int numFrames7 = 510;
int numFrames8 = 510;
int numFrames9 = 510;
PImage[] images1 = new PImage[numFrames1];
PImage[] images2 = new PImage[numFrames2];
PImage[] images3 = new PImage[numFrames3];
PImage[] images4 = new PImage[numFrames4];
PImage[] images5 = new PImage[numFrames5];
PImage[] images6 = new PImage[numFrames6];
PImage[] images7 = new PImage[numFrames7];
PImage[] images8 = new PImage[numFrames8];
PImage[] images9 = new PImage[numFrames9];

int currentFrame1 = 0;
int currentFrame2 = 0;
int currentFrame3 = 0;
int currentFrame4 = 0;
int currentFrame5 = 0;
int currentFrame6 = 0;
int currentFrame7 = 0;
int currentFrame8 = 0;
int currentFrame9 = 0;

void setup(){

  size(1280, 720);
  movie = new Movie(this, "loop.mov");
  movie.loop();
  


  frameRate(24);
}
void movieEvent(Movie movie){
  movie.read();
}

void draw(){
    //background(255,255,255);
  image(movie, 0, 0);
  if(playClip == 1){
    String imageName = "deer" + nf(currentFrame1, 4) + ".png";
      images1[currentFrame1] = loadImage(imageName);
  image(images1[currentFrame1], 0, 0); //<>//
   images1[currentFrame1] = null;
  currentFrame1 += 3;
    if (currentFrame1 >= images1.length) {
      currentFrame1 = 0;
      playClip += 1;
      }
  } else if(playClip == 2){
      String imageName2 = "end" + nf(currentFrame2, 4) + ".png";
    images2[currentFrame2] = loadImage(imageName2);
  image(images2[currentFrame2], 0, 0);
      images2[currentFrame2] = null;
  currentFrame2 += 4;

    if (currentFrame2 >= images2.length) {
      currentFrame2 = 0;
      playClip += 1;
      }
  } else if(playClip == 3){
    String imageName3 = "flower" + nf(currentFrame3, 4) + ".png";
    images3[currentFrame3] = loadImage(imageName3);
  image(images3[currentFrame3], 0, 0);
      images3[currentFrame3] = null;
  currentFrame3 += 3;

    if (currentFrame3 >= images3.length) {
      currentFrame3 = 0;
      playClip += 1;
      }
  } else if(playClip == 4){
     String imageName4 = "grandmother" + nf(currentFrame4, 4) + ".png";
    images4[currentFrame4] = loadImage(imageName4);
  image(images4[currentFrame4], 0, 0);
      images4[currentFrame4] = null;
  currentFrame4 += 4;

    if (currentFrame4 >= images4.length) {
      currentFrame4 = 0;
      playClip += 1;
      }
  } else if(playClip == 5){
     String imageName5 = "water" + nf(currentFrame5, 4) + ".png";
    images5[currentFrame5] = loadImage(imageName5);
  image(images5[currentFrame5], 0, 0);
      images5[currentFrame5] = null;
  currentFrame5 += 3;

    if (currentFrame5 >= images5.length) {
      currentFrame5 = 0;
      playClip = 1;
      }
  }
  
}
