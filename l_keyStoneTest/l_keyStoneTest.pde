import deadpixel.keystone.*;
Keystone ks;

CornerPinSurface surface;
CornerPinSurface surface1;

PGraphics offscreen;
PGraphics offscreen1;

PImage img;

void setup() {

  //size(800, 600, P3D);
  fullScreen(P3D);
  img = loadImage("cph.jpg");
  ks = new Keystone(this);
  surface  = ks.createCornerPinSurface(400, 300, 5);
  surface1  = ks.createCornerPinSurface(400, 300, 5);
  offscreen  = createGraphics(400, 300, P3D);
  offscreen1  = createGraphics(400, 300, P3D);
}
void draw() {
  background(0);
  //----- OFFSCREEN 1-----
  offscreen.beginDraw();
    offscreen.background(255,0,255);
    offscreen.rect(10,10,40,50);
    offscreen.image(img,0,0);
  offscreen.endDraw();
  surface.render(offscreen);
  //----- OFFSCREEN 1-----
  offscreen1.beginDraw();
    offscreen1.background(0,0,255);
    offscreen1.ellipse(10,10,40,50);
  offscreen1.endDraw();
  surface1.render(offscreen1);
}

void keyPressed() {
  switch(key) {
  case 'c':
    // enter/leave calibration mode, where surfaces can be warped 
    // and moved
    ks.toggleCalibration();
    cursor();
    break;

  case 'l':
    // loads the saved layout
    ks.load();
    break;

  case 's':
    // saves the layout
    ks.save();
    break;
  }
}
