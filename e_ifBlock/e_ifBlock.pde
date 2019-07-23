int backColor = 0;

void setup()
{
 
}
void draw()
{
  background(backColor,backColor,backColor);
}

void keyPressed()
{
  println(keyCode);
  if(key == 'a')
  {
    backColor = 0;
  }
  else if(key == 's')
  {
    backColor = 255;
  }
  //else if(key == ' ')
  else if(keyCode == 32)
  {
    backColor = 128;
  }
  else if(keyCode == 39)
  {
    backColor = backColor+10;
  }
  else if(keyCode == 37)
  {
    backColor = backColor-10;
  }
}
