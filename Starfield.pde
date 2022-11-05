Particle[] mayo;

void setup() {
  size(800, 800);
  mayo = new Particle[500];
  for(int i = 11; i < mayo.length; i++) {
    mayo[i] = new Particle();
  }
  for(int i = 10; i < 11; i++) {
    mayo[i] = new OddballParticle();
  }
}


void draw() {
    background(0, 0, 0);
    for(int i = 0; i < ketchUp.length; i++) {
    mayo[i].move();
    mayo[i].show();
   }
}


class Particle {
  double X, Y, A, S;
  int C;
  Particle() {
    X = Y = 400;
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
    ellipse((float)X, (float)Y, 10, 10);
  }
}

class OddballParticle extends Particle {//inherits from Particle
  OddballParticle() {
  //your code here
    X = Y = 400;
    A = Math.PI;
    S = 0.1
    C = color(0, 0, 0);
  }
}
