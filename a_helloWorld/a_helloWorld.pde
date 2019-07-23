//this is an integer number
//used to store a value for the whole extent of the program
//when you want to do an interactive program you can change this value
//in the input methods (like keypressed) and use it to change your program
int number = 0;


void setup()
{
   size(400,400);
   number = 0;
}

void draw()
{
  //this is a comment
  background(map(mouseX,0,width,0,255),number,map(mouseY,0,height,0,255));  
  
    
  drawFace(mouseX,mouseY);

}
void keyPressed()
{
  number = number+10;
}

void drawFace(int dX, int dY)//displcement
{
  //eyes
  ellipse(dX-50,dY-50,20,20);
  ellipse(dX+50,dY-50,20,20);
  rectMode(CENTER);
  rect(dX+0,dY+0,20,40);
  rect(dX+0,dY+75,100,10);
}

void drawRandomThings()
{
   rect(50,50,50,50);
  ellipse(100,100,50,50);
  arc(150, 150, 50, 50, PI, PI*2);
  stroke(255,255,255);
  line(200, 200, 230, 230);
  triangle(250, 250, 300, 300, 250, 300);
}
