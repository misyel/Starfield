Particle[] particles;
void setup()
{
  size(500, 500);
  particles = new Particle[300];
  for (int i = 0; i<particles.length; i++) {
    particles[i] = new NormalParticle();
  }
}
void draw()
{
  background(0);
  for (int i = 0; i<particles.length; i++) {
    particles[i].show();
    particles[i].move();
  }
}




  class NormalParticle implements Particle {
    int nSpd;
    double dX, dY, dir;
    NormalParticle() {
      dX = 250;
      dY = 250;
      nSpd = (int)(Math.random()*2);
      dir = (Math.random())*(2*Math.PI);
    }
    public void show() {
      ellipse((float)dX, (float)dY, 50, 50);
    }
    public void move() {
      dX = dX + (Math.cos(dir)*nSpd);
      dY = dY + (Math.sin(dir)*nSpd);
    }
  }


  interface Particle
  {
    public void move();
    public void show();
  }




  class OddballParticle //uses an interface
  {
    //your code here
  }





  class JumboParticle //uses inheritance
  {
    //your code here
  }