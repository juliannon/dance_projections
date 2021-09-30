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
    colorMode(RGB, 255);
    fill(232, 246, 250);
    ellipse(snowPosition.x, snowPosition.y, snowR, snowR);
    
  }
}
