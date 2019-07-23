import websockets.*;

import tramontana.library.*;

Tramontana t;
Tramontana t1;

float iPhoneYaw = 0.0;
int backColor = 0;

void setup()
{
  size(200,200);
  t = new Tramontana(this,"10.12.14.120");
  t1 = new Tramontana(this,"10.12.14.122");
  t.subscribeAttitude(10);
  t1.subscribeDistance();
}
void draw()
{
  background(255,backColor,255);
  rect(20,20,map(iPhoneYaw,-1.0,1.0,40,150),20);
}
void onAttitudeEvent(String ipAddress, float yaw, float pitch, float roll){
  iPhoneYaw = yaw;
}
void onDistanceEvent(String ipAddress, int distance)
{
  if(distance == 0)
  {
    backColor = 255;
  }
  else if(distance == 1)
  {
    backColor = 0;
  }
}
