
//snow storm, wind changes based on music volume
// randomly assign blues/greys to particles
// piles of snow at bottom of screen (circles)
// dark navy/grey background
// maybe have pair of red mittens blow accross screen


// snow particles
// wind (acceleration)
// piles of snow
Wind mouse;
Wind gravity;

int count = 0;
float choice;
int direction;
void scene1()
{
  colorMode(RGB, 255);
  background(0);
  colorMode(HSB, 360, 100, 100);

  //add sound levels and other variables


  //add new to arraylist
  //generate more than one every frame
  for(int i=0; i<7; i++)
  {
    //declare variables for particles
    PVector position = new PVector(random(0-width/2, 1.5*width), 0);
    PVector velocity = new PVector(random(-0.3, 0.3), random(0, 3));
    color c = color(random(190, 208), random(15,35), 100);
    particles.add(new Particle(position, velocity, c));
  }

  //display particles
  for(Particle p : particles)
  {
    p.display();
  }
  //remove off screne particles
  for (int i = 0; i < particles.size(); i++)
  {
    if (particles.get(i).alive == false)
        particles.remove(i);
  }
  mouse = new Wind(mouseX);
  mouse.display(particles);



  //generate snow for ground, draws 100 circles to represent
 /* if (count < 100)
    for(int i=0; i<100; i++)
     {
      colorMode(RGB, 255);

      float snowR = random(80, 200);
      PVector snowPosition = new PVector(random(0, width), random(19*height/20, height));
      snowOnGround.add(new Snow(snowPosition, snowR));
      count ++;
     } */


// decide x direction acceleration (left or right)
  choice = random(0,1);
  if(choice > 0.5)
    direction = -1;
   else
     direction = 1;

  for(Snow s : snowOnGround)
    s.showGround();

}


class Particle
  {
  PVector position;
  PVector velocity;

  color c;
  boolean alive = true;
  float size = random(125, 250);
  float transparency = random(75, 100);
   
  float r = width/size;

  // for wind
  //PVector difference;
  //float mag;
  //PVector force;

  // size of wind based on volume
  float level = amp.analyze();
  //PVector acceleration = new PVector(direction*0.15*level, 0.1);
  PVector gravity = new PVector(0, 0.005);

  Particle (PVector position, PVector velocity, color c)
  {
    this.c = c;
    this.position = position.copy();
    this.velocity = velocity.copy();

   // this.acceleration = new PVector(0, .1);
  }

  void display()
  {
    //difference = new PVector((position.x-mouseX), (position.y-mouseY));
    //mag = difference.mag();
    //force = difference.mult(1/mag/mag/mag);
    //force.mult(1000);

    fill(c);
    ellipse(position.x, position.y, r, r);
    position.add(velocity);
    velocity.add(gravity);

    if (position.y > height)
      alive = false;
  }

  void push(PVector force) {
    velocity.add(force);
  }

}

/*void groundSnow() {

  for (int i = 0; i < 20; i++) {
    ellipse(random(width), height, random(50, 100), random(50, 100));
  }
}
*/
