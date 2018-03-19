import processing.video.*;
import processing.serial.*;
Movie movie;
Serial port; 

//import processing.sound.*;
//SoundFile soundfile;

int playClip = 1;
int aniNumber = 5; // v now how many animation 

String[] clipName = {"deer", "end", "flower", "grandmother", "water" }; // v cprefix name 
int[] clipImg = new int[9]; // 
int[] clipSpace = {4, 4, 4, 3, 3,3}; // v slow fast
boolean[] onClip = {false, false, false, false, false, false, false, false, false};
int[] clipCumFrames = {510, 1050, 390, 540, 540, 510, 510, 510, 510}; //v How many frame for each animation
int currentFrame = 0;
int[] sensorThread = new int[9]; 
int sensorThreadMax = 500; //// v  MO Mo Ta Time 
int sensorThreadMaxOri = sensorThreadMax;

int offSetY = 0;
int offSetScale = 0;

void setup(){
  fullScreen(P2D, SPAN);
  movie = new Movie(this, "loop.mov");
  movie.loop();
  frameRate(24);
  
  offSetY = int(0 - height*0.35); ///v offset
  offSetScale = int(height*1.7); ///v this
  port = new Serial( this, Serial.list()[0], 9600 ) ; /// 0 - 7
}

void movieEvent(Movie movie){
  movie.read();
}

void draw(){
  image(movie, 0,  offSetY, width, offSetScale);
  for(int i = 0; i<aniNumber; i++) if (onClip[i] != false) generateClip(i);
  if ( 0 < port.available() && currentFrame == 0 && sensorThreadMax != 9999) {
    String arduinoVar = port.readStringUntil('\n');
    int arduinoClipVar = 0;
    print( "Receiving:" + arduinoVar ) ;
    arduinoClipVar = int(arduinoVar.substring(0,1));
    print( "*Receiving:" + arduinoClipVar) ;
    sensorThread[arduinoClipVar] += 1;
    if ( sensorThread[arduinoClipVar] >= sensorThreadMax ) {
      onClip[arduinoClipVar - 1] = true; 
      sensorThreadMax = 9999;
      for(int i = 0; i<9; i++) sensorThread[i] = 0;
    }
  } //<>//
}

void generateClip(int clipId){
  String imageName = clipName[clipId] + nf(currentFrame, 4) + ".png";
  PImage[] images = new PImage[clipCumFrames[clipId]];
  images[currentFrame] = loadImage(imageName);
  println(currentFrame + "," + imageName);
  image(movie, 0,  offSetY, width, offSetScale);
  image(images[currentFrame], 0, offSetY, width, offSetScale);
  images[currentFrame] = null;
  currentFrame += clipSpace[clipId];
  
    if (currentFrame >= clipCumFrames[clipId]) {
      currentFrame = 0;
      onClip[clipId] = false; 
      sensorThreadMax = sensorThreadMaxOri;
      for(int i = 0; i<9; i++) sensorThread[i] = 0;
      }
   
}

void mousePressed(){
  for(int i = 0; i< aniNumber ; i++) onClip[i] = false;
  int ranNum = int(random(0,aniNumber));
  onClip[ranNum] = true;
  currentFrame = 0;
}
