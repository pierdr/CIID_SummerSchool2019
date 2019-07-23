PImage img;
PImage img2;
void setup()
{
  size(450,450);
  img = loadImage("cph.jpg");
  img2 = loadImage("cph2.jpg");
}

void draw()
{
  background(0,0,0);
  
  for(int i=0;i<10;i++)
  {
    image(img,i*50,i*50);
  }
  image(img2,mouseX,mouseY);
}
