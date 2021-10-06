//stuff with radio sound
//scrolling text and formulas

void scene2setup()
{
  colorMode(RGB, 255);
  background(0);
  colorMode(HSB, 100);
  //creaate random position, random velocity, create new image
  for (int i = 1; i < 2; i++)
  {
    PVector position = new PVector(random(-10, width/100), height*9/10);
    PVector velocity = new PVector(0, random(-10,-3));
    PImage img = loadImage("image"+i + ".png");
    img.resize(700, 700);
    images.add(new Image(position, velocity, img));
  }
 /* images.add(new Image(position, velocity, image1));
  images.add(new Image(position, velocity, image2));
  images.add(new Image(position, velocity, image3));
  images.add(new Image(position, velocity, image4));
  images.add(new Image(position, velocity, image5));*/

}

void drawScene2()
{
  background(0);
  for (Image i : images)
    i.displayImage();
  
  fill(100, 0, 100);
  textSize(30);
  text(frameCount, 50, 50);
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
    image(img, position.x, position.y);
    position.add(velocity);
  }
}
