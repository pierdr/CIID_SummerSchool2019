import websockets.*;

import tramontanaCV.*;

tramontanaCV iphone;
LBBoxContainer bboxContainer;

int backColor = 0;

void setup()
{
  size(450,350);
  iphone = new tramontanaCV(this,"10.12.14.193");
  bboxContainer = new LBBoxContainer();
}
void draw()
{
  background(backColor,0,backColor);
 
  for(int i=0;i<bboxContainer.nBBoxes;i++)
  {
    if(bboxContainer.bboxes[0].x>200)
    {
      fill(255,0,0);
    }
    else
    {
      fill(0,255,255);
    }
    rect(bboxContainer.bboxes[i].x,bboxContainer.bboxes[i].y,bboxContainer.bboxes[i].w,bboxContainer.bboxes[i].h);
  }
}
void onBoundingBoxReceived(LBBoxContainer c, int nBBoxes, String ip)
{
  bboxContainer = c;
  println(nBBoxes);
  if(nBBoxes>0)
  {
    backColor = 255;
  }
  else{
    backColor = 0;
  }
}
