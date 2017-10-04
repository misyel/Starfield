Particle[] particles;
Particle[] particle2;
int x,y;
void setup()
{
  size(500, 500);
  frameRate(30);
  particles = new Particle[300];
  for (int i = 0; i<particles.length; i++) {
    particles[i] = new NormalParticle();
  }
}
void mousePressed() {
  x = mouseX;
  y= mouseY;
  
  particle2=new Particle[100];
  for(int o=0; o<particle2.length; o++){
    particle2[o] = new NormalParticle();
  }
  
  particles = new Particle[300];
  for (int i = 0; i<particles.length; i++) {
    particles[i] = new NormalParticle();
  }
}


void draw()
{
  fill(0, 0, 0, 20);
  rect(0, 0, 500, 500);
  for (int i = 0; i<particles.length; i++) {
    particles[i].show();
    particles[i].move();
  }
  
  for(int o=0; o<particle2.length;o++){
    particle2[o].show();
    particle2[o].move();
  }
  
}

class NormalParticle implements Particle {
  int  colors;
  double dX, dY, dir, nSpd, dir2;
  NormalParticle() {
    dX = 250;
    dY =250;
    nSpd = (Math.random()*2)+5;
    dir = (Math.random()*10)*(10*Math.PI)-20;
    dir2 = (Math.random())*(4*Math.PI)+50;
    colors = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }


  public void show() {
    stroke(colors);
    fill(colors );
    ellipse((float)dX, (float)dY, 10, 10);
  }
  public void move() {
    dX = dX + (Math.cos(dir2)*nSpd);
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