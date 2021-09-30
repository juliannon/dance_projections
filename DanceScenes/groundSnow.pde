class Snow
{
  float snowR;
  PVector snowPosition;
  
  Snow(PVector snowPosition, float snowR)
  {
    this.snowPosition = snowPosition.copy();
    this.snowR = snowR;
  }
  
  void showGround()
  {
    fill(255, 255, 255);
    ellipse(snowPosition.x, snowPosition.y, snowR, snowR);
    
  }
}
