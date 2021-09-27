
//snow storm, wind changes based on music volume
// randomly assign blues/greys to particles
// piles of snow at bottom of screen (circles)
// dark navy/grey background
// maybe have pair of red mittens blow accross screen


// snow particles
// wind (acceleration)
// piles of snow


void scene1()
{
  background(84, 109, 125);
  
  //declare variables
  PVector position = new PVector(random(0, width), 0);
  PVector velocity = new PVector(random(-3, 0), random(-0.3, 0.3));
  color c = color(random(70, 215), random(110, 250), random(200, 250));
  //add new to arraylist
  particles.add(new Particle(position, velocity, c));
  
  //display particles
  for(Particle p : particles)
    p.display();
  
  
}


class Particle 
  {
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  color c;
  boolean alive = true;
  int r = 20;
  
  Particle (PVector position, PVector velocity, int c) 
  {
    this.c = c;
    this.position = position.copy();
    this.velocity = velocity.copy();
  }
  
  void display() 
  {
    PVector acceleration = new PVector(0, 1);
    ellipse(position.x, position.y, r, r);
    position.add(velocity);
    velocity.add(acceleration);
    
    if (position.y > height) 
      alive = false;
  }
  
}
