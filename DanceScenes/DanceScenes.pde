ArrayList<Particle> particles;
ArrayList<Snow> snowOnGround;
int state = 0;

void setup()
{
  fullScreen();
  noStroke();
  
  //create array list for particles
  particles = new ArrayList<Particle>();
  snowOnGround = new ArrayList<Snow>();
  
}

void draw()
{
  if (state == 0)
    scene0();
  else if (state == 1)
    scene1();
  else if (state == 2)
    scene2();
   else if (state == 3)
     state = 0;
}

void keyPressed()
{
  if (key == ' ')
    state ++;
}
