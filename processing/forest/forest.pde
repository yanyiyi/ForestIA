import processing.video.*;
Movie movie;

//import processing.sound.*;
//SoundFile soundfile;

int playClip = 1;

String[] clipName = {"deer", "end", "flower", "grandmother", "water"}; //prefix name 
int[] clipImg = new int[9]; // 
int[] clipSpace = {3, 3, 3, 2, 2}; // 
boolean[] onClip = {false, false, false, false, false};
int[] clipCumFrames = {510, 1050, 390, 1080, 540, 510, 510, 510, 510}; //How many frame for each animation
int currentFrame = 0;

void setup(){

  size(1280, 720);
  movie = new Movie(this, "loop.mov");
  movie.loop();
  frameRate(30);

}
void movieEvent(Movie movie){
  movie.read();
}

void draw(){

  image(movie, 0, 0);
  for(int i = 0; i<5; i++){ 
    if (onClip[i] != false){ 
      generateClip(i);
    }
} //<>//

}

void generateClip(int clipId){
  String imageName = clipName[clipId] + nf(currentFrame, 4) + ".png";
  PImage[] images = new PImage[clipCumFrames[clipId]];
  images[currentFrame] = loadImage(imageName);
  println(currentFrame + "," + imageName);
  image(movie, 0, 0);
  image(images[currentFrame], 0, 0);
  images[currentFrame] = null;
  currentFrame += clipSpace[clipId];
    if (currentFrame >= clipCumFrames[clipId]) {
      currentFrame = 0;
      onClip[clipId] = false;    
      }
 
}

void mousePressed(){
  for(int i = 0; i<5; i++) onClip[i] = false;
  int ranNum = int(random(0,5));
  onClip[ranNum] = true;
  currentFrame = 0;
}
