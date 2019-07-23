import websockets.*;

import tramontana.library.*;

Tramontana iphone;

int backColor = 255;
void setup()
{
  size(450,450);
  iphone = new Tramontana(this,"10.12.14.120");
  iphone.subscribeDistance();
}
void draw()
{
  background(backColor,0,0);
}
void keyPressed()
{
  if(key == 'a')
  {
    iphone.makeVibrate();
  }
  else if(key == 's')
  {
    iphone.showImage("https://www.setaswall.com/wp-content/uploads/2018/05/Sunset-Sky-Hills-Wallpaper-720x1520-380x802.jpg");
  }
}
void onDistanceEvent(String ip, int distance)
{
  println("distance changed:"+distance);
  iphone.makeVibrate();
  if(distance==1)
  {
    backColor = 255;
  }
  else if(distance == 0)
  {
      backColor = 128;
  }
}
