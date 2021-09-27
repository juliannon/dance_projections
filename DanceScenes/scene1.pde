
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
    ellipse(position.x, position.y, r, r);
    position.add(velocity);
    velocity.add(acceleration);
    
    if (position.y > height) 
      alive = false;
  }
  
}
