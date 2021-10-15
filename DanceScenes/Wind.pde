

class Wind
{
  float windPosition;
  float windDirection;
  float level = amp.analyze();
  Wind(float windX) {
    windPosition = windX;
  }
  //if mouse is on left side, all particles get negative acceleration in x direction
  //if mouse is on  right side, all particles get positive acceleration in  x direction
  
  void display(ArrayList<Particle> particles) {
    for (Particle p : particles) {
    
    if(windPosition > width/2)
      windDirection = -0.7;
    else
      windDirection = 0.7;
  /* PVector difference = new PVector(p.position.x - windPosition.x, 
                                      p.position.y - windPosition.y); */
   // float mag = difference.mag();
  //  PVector force = difference.mult(1/mag/mag/mag);
      PVector force = new PVector(level*windDirection, 0);
   // force.mult(800*level);
    
    p.push(force);
    }
  
  }
}
