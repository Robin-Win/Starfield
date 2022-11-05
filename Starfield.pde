Particle[] mayo;

void setup() {
  size(800, 800);
  mayo = new Particle[500];
  for(int i = 0; i < 100; i++) {
    mayo[i] = new OddballParticle();
  }
  for(int i = 100; i < mayo.length; i++) {
    mayo[i] = new Particle();
  }
}


void draw() {
    background(255, 255, 255);
    for(int i = 0; i < mayo.length; i++) {
    mayo[i].move();
    mayo[i].show();
   }
}


class Particle {
  double X, Y, A, S;
  int C;
  Particle() {
    X = 400;
    Y = 400;
    A = (Math.random()*Math.PI*2);
    S = (Math.random()*10+1);
    C = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move() {
    X = X + (Math.cos(A) * S);
    Y = Y + (Math.sin(A) * S);
  }
  void show() {
    fill(C);
    line((float)X, (float)Y, 10, 10);
  }
}

class OddballParticle extends Particle {//inherits from Particle
  OddballParticle() {
    X = 400;
    Y = 400;
    A = (Math.random()*Math.PI*2);
    S = (Math.random()+0.5);
    C = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void show() {
    fill(C);
    rect((float)X, (float)Y, 10, 10);
  }
}
