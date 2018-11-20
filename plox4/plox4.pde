import processing.video.*;
import java.awt.Rectangle;
import gab.opencv.*;
Particula[] particulas;

Capture frog;

void setup() {
  size(352, 288);

  frog = new Capture(this, width, height);
  frog.start();
  particulas = new Particula[1500];
  for (int i = 0; i < particulas.length; i++) {
    particulas[i] = new Particula();
  }
  background(0);
}


void captureEvent(Capture video) {
  video.read();
}

void draw() {

  for (int i = 0; i < particulas.length; i++) {
    particulas[i].display();
    particulas[i].move();
  }
}
