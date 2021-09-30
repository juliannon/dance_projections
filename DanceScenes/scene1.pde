
//snow storm, wind changes based on music volume
// randomly assign blues/greys to particles
// piles of snow at bottom of screen (circles)
// dark navy/grey background
// maybe have pair of red mittens blow accross screen


// snow particles
// wind (acceleration)
// piles of snow

int count = 0;

void scene1()
{
  background(84, 109, 125);
  
  //declare variables
  PVector position = new PVector(random(0, width), 0);
  PVector velocity = new PVector(random(-.3, .3), random(0, .1));
  color c = color(random(70, 215), random(110, 250), random(200, 250));
  //add new to arraylist
  particles.add(new Particle(position, velocity, c));
 
  //generate snow for ground, draws 100 circles to represent
  if (count < 100)
    for(int i=0; i<100; i++)
     {
      float snowR = random(80, 200);
      PVector snowPosition = new PVector(random(0, width), random(19*height/20, height));
      snowOnGround.add(new Snow(snowPosition, snowR));
      count ++;
     }

  //display particles
  for(Particle p : particles)
    p.display();
  
  for(Snow s : snowOnGround)
    s.showGround();
  
}


class Particle 
  {
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  color c;
  boolean alive = true;
  int r = 10;
  
  Particle (PVector position, PVector velocity, color c) 
  {
    this.c = c;
    this.position = position.copy();
    this.velocity = velocity.copy();
    this.acceleration = new PVector(0, .1);
  }
  
  void display() 
  {
    ellipse(position.x, position.y, r, r);
    position.add(velocity);
    velocity.add(acceleration);
    
    if (position.y > height) 
      alive = false;
  }
  
}
