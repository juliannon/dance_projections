

class Wind
{
  PVector windPosition;
  
  Wind(float windX, float windY) {
    windPosition = new PVector(windX, windY);
  }
  
  void display(ArrayList<Particle> particles) {
    for (Particle p : particles) {
    
    PVector difference = new PVector(p.position.x - windPosition.x, 
                                      p.position.y - windPosition.y);
    float mag = difference.mag();
    PVector force = difference.mult(1/mag/mag/mag);
    force.mult(1000);
    
    p.push(force);
    }
  
  }
}
