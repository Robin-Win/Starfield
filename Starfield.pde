//your code here
Particle[] mayo;

void setup()
{
  //your code here
  size(800, 800);
  mayo = new Particle[100];
  for(int i = 0; i < mayo.length; i++){
     mayo[i] = new Particle();
  }
}

void draw()
{
  //your code here
  background(0, 0, 0);
  for(int i = 0; i < mayo.length; i++){
  mayo[i].show();
  mayo[i].move();
  }
}
class Particle
{
  //your code here
  double myX, myY, myS, myA;
  int myC;
  Particle(){
    myX = myY = 400;
    myA = Math.random()*(2*Math.PI);
    myS = Math.random()*10+1;
    myC = color((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move(){
    myX = myX + (Math.cos(myA)*myS);
    myY = myY + (Math.sin(myA)*myS);
  }
  void show(){
    fill(myC);
    line((float)myX, (float)myY, 10, 10);
  }
}
