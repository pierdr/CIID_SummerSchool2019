//LOOPS
void setup()
{
  size(450,450);
  stroke(255,0,0);
}
void draw()
{
  background(0,0,0);
  stroke(0,0,0);
  
  for(int i=0;i<50;i++)
  {
    fill(0,0,map(i,0,50,0,255));
    rect(i*5,i*5,i*3,i*3);
  }
  stroke(0,0,255);
  fill(255,0,0);
  ellipse(275,275,20,20);
}
