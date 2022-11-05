Particle[] ketchUp;

void setup() {
  size(800, 800);
  ketchUp = new Particle[500];
  for(int i = 0; i < ketchUp.length; i++) {
    ketchUp[i] = new Particle();
  }
}


void draw() {
    background(255, 255, 255, 200);
    for(int i = 0; i < ketchUp.length; i++) {
    ketchUp[i].move();
    ketchUp[i].show();
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
    ellipse((float)X, (float)Y, 10, 10);
  }
}
