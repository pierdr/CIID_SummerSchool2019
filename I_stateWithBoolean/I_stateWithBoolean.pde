import websockets.*;

import tramontana.library.*;
Tramontana iphone;
boolean isAlreadyNorth = false;
int backColor = 10;
void setup()
{
  size(460,320);
  iphone = new Tramontana(this,"10.12.14.87");
  iphone.subscribeAttitude(10);
}
void draw()
{
  background(backColor,backColor,backColor);
}
void onAttitudeEvent(String ip,float yaw, float pitch, float roll)
{
  println(roll);
  
  if(roll<0.4 && roll>-0.4 && isAlreadyNorth == false)
  {
    isAlreadyNorth = true;
    iphone.showImage("https://i.redd.it/j9odwaynj3sz.jpg");
    iphone.makeVibrate(); 
    backColor = backColor+50;
  }
  else if((roll>0.4 || roll<-0.4) && isAlreadyNorth == true)
  {
    isAlreadyNorth = false;
    iphone.showImage("https://cdn.wallpapersafari.com/23/93/2JkmVQ.jpg");
    iphone.makeVibrate(); 
    backColor = backColor-50;
  }
}
