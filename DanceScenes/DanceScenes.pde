//variables for sound to work
import processing.sound.*;
SoundFile file;
Amplitude amp;
AudioIn microphone;

ArrayList<Particle> particles;
ArrayList<Snow> snowOnGround;
int state = 0;

void setup()
{
  fullScreen();
  noStroke();
  
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
  
}

void draw()
{
  if (state == 1)
    scene0();
  else if (state == 0)
    scene1();
  else if (state == 2)
    scene2();
   else if (state == 3)
     state = 0;
}

void keyPressed()
{
 /* if (key == ' ')
    state ++;
    */
}
