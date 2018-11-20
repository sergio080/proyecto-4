class Particula {
  float x;
  float y;
  
  float vx;
  float vy;

  Particula() {
    x = width/2;
    y = height/2;
    float a = random(TWO_PI);
    float speed = random(1,2);
    vx = cos(a)*speed;
    vy = sin(a)*speed;
  }

  void display() {
    noStroke();
    color c = frog.get(int(x),int(y));
    fill(c,25);
    ellipse(x, y, 12, 12);
  }

  void move() {
    x = x + vx;
    y = y + vy;
    if (y < 0) {
      y = height;
    } 

    if (y > height) {
      y = 0;
    }
    if (x < 0) {
      x = width;
    } 

    if (x > width) {
      x = 0;
    }
  }
}
