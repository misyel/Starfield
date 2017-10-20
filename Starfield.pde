Particle[] particles;
int x, y;
void setup()
{
  size(1000, 1000);
  frameRate(30);
  particles = new Particle[1000];
  for (int i = 1; i<particles.length; i++) {
    particles[i] = new NormalParticle(x, y);
    particles[1] = new OddballParticle();
    particles[2] = new JumboParticle();
  }
}
void mousePressed() {

  for (int i = 1; i<particles.length; i++) {
    particles[i] = new NormalParticle(x, y);
    particles[1] = new OddballParticle();
    particles[2] = new JumboParticle();
  }
}


void draw()
{
  x = mouseX;
  y = mouseY;
  //fill(0, 0, 0, 20);
  if(keyPressed == true && key == 'p'){
    rect(0, 0, 1000, 1000);
    fill(0, 0, 0, 20);
  }
  else{
    fill(0, 0, 0, 20);
    rect(0, 0, 1000, 1000);
  }
  for (int i = 1; i<particles.length; i++) {
    particles[1].show();
    particles[1].move();
    particles[2].show();
    particles[2].move();
    particles[i].show();
    particles[i].move();
  }
}

class NormalParticle implements Particle {
  int  colors;
  double dX, dY, dir, nSpd, dir2;
  NormalParticle(int x, int y) {
    dX = x;
    dY =y;
    nSpd = (Math.random()*2)+5;
    dir = (Math.random()*10)*(10*Math.PI)-20;
    dir2 = (Math.random())*(4*Math.PI)+50;
    colors = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }


  public void show() {
    stroke(colors);
    fill(colors );
    translate(width/2, height/2);
    rotate(PI/3.0);
    ellipse((float)dX, (float)dY, 10, 10);
  }
  public void move() {
    dX = (dX) + (Math.cos(dir2)*nSpd);
    dY = (dY) + (Math.sin(dir)*nSpd);
  }
}


interface Particle
{
  public void move();
  public void show();
}




class OddballParticle implements Particle//uses an interface
{
  double oX, oY;
  double dir, nSpd;
  OddballParticle() {
    oX=250;
    oY=250;
    nSpd = (Math.random()*2)+5;
    dir = (Math.random()*10)*(10*Math.PI)-20;
  }
  public void move() {
    oX = (oX) - (Math.cos(dir)*nSpd);
    oY = (oY) + (Math.sin(dir)*nSpd);
  }
  public void show() {
    ellipse((float)oX, (float)oY, 30, 30);
  }
}





class JumboParticle extends NormalParticle  //uses inheritance
{
  double dX, dY,dir, nSpd, dir2;
  JumboParticle(){
    super(x,y);
    dX=x;
    dY=y;
    nSpd = (Math.random()*2)+5;
    dir = (Math.random()*10)*(10*Math.PI);
    dir2 = (Math.random())*(4*Math.PI);
  }
   public void move() {
    dX = (dX) + (Math.cos(dir2)*nSpd);
    dY = (dY) + (Math.sin(dir)*nSpd);
  }
  public void show(){
    ellipse((float)dX, (float)dY, 100, 100);
  }
}