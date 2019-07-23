int backColor = 0;

PImage i1;

ArrayList<PImage> images;

void setup()
{
  size(1024,512);
  images = new ArrayList<PImage>();
  
  for(int i = 0; i<5;i++)
  {
    println(i+".jpg");
    images.add(loadImage(i+".jpg"));
  }
}
void draw()
{
  background(backColor,backColor,backColor);
  for(int i=0;i<5;i++)
  {
    image(images.get(i),256*i,i*10);
  }
}
