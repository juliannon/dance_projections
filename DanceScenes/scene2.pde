//stuff with radio sound
//scrolling text and formulas

/*void scene2setup()
{
  colorMode(RGB, 255);
  colorMode(HSB, 100);
  //creaate random position, random velocity, create new image
  for (int i = 1; i < 6; i++)
  {
    PVector position = new PVector(random(0, 4*width/7), height*9/10);
    PVector velocity = new PVector(0, random(-15,-5));
    PImage img = loadImage("image"+i + "_25.png");
    img.resize(700, 700);
    images.add(new Image(position, velocity, img));
  }

}
*/
void drawScene2()
{
  //background(0);
  for (Image i : images)
    i.displayImage();
  /* include frameCount on screen
  fill(100, 0, 100);
  textSize(30);
  text(frameCount, 50, 50); */
}

class Image
{
  PVector position;
  PVector velocity;
  PImage img;
  Image(PVector position, PVector velocity, PImage img)
  {
    this.position = position.copy();
    this.velocity = velocity.copy();
    this.img = img.copy();
  }
  void displayImage()
  {
    //push matrix pop matrix and translate, translate and the whole box of text will move
    image(img, position.x, position.y);
    position.add(velocity);
  }
}
