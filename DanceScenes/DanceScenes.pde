//variables for sound to work
import processing.sound.*;
SoundFile file;
Amplitude amp;
AudioIn microphone;

ArrayList<Particle> particles;
//Wind mouse;
ArrayList<Snow> snowOnGround;
int state = 0;

ArrayList<Image> images;
boolean addMore = true;

void setup()
{
  fullScreen();
  noStroke();
  noCursor();
  
  //sound file generation
 /* file = new SoundFile(this, "dealWithChaos.mp3");
  file.play();*/
  
  //info for microphone
  microphone = new AudioIn(this, 0);
  microphone.start();
  
  amp = new Amplitude(this);
  amp.input(microphone); //use amp.input(file) to have it based on loaded file
  
  //create array list for particles
  particles = new ArrayList<Particle>();
  snowOnGround = new ArrayList<Snow>();
  //mouse = new Wind(mouseX, mouseY);

  images = new ArrayList<Image>();
  
}

void draw()
{
 /* if (state == 1)
    scene0(); */
  if (state == 0)
    scene1();
  else if (state == 1)
    drawScene2();
    
/*   else if (state == 3)
     state = 0; */
}

void keyPressed()
{
  if (key == ' ' && state == 0)
  {
    scene2setup();
    state ++;
  }
  else if (key == ' ' && state ==1)
    state --;
    
}
