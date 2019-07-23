import processing.video.*;

Movie mov;

void setup()
{
  size(500,300);
  mov = new Movie(this,"sample.mp4"); 
  mov.play();
}
void draw()
{
  background(255,255,255);
  scale(map(mouseX,0,width,0.2,1.6));
  image(mov,mouseX,mouseY);
}

void movieEvent(Movie m) {
  mov.read();
}
