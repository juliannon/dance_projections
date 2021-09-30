
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
  colorMode(RGB, 255);
  background(84, 109, 125);
  colorMode(HSB, 100);
  
  //declare variables
  PVector position = new PVector(random(0, width), 0);
  PVector velocity = new PVector(random(-0.3, 0.3), random(0, 3));
  color c = color(random(50, 60), 15, 100);
  //add new to arraylist
  
  particles.add(new Particle(position, velocity, c));
  

  

  //display particles
  for(Particle p : particles) 
  {
    p.display();
    
  }
  
  for (int i = 0; i < particles.size(); i++) {
    if (particles.get(i).alive == false) 
        particles.remove(i);
  }
    
 
  
  
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
    this.acceleration = new PVector(0, .2);
  }
  
  void display() 
  {
    fill(c);
    ellipse(position.x, position.y, r, r);
    position.add(velocity);
    velocity.add(acceleration);
    
    if (position.y > height) 
      alive = false;
  }
  
}
