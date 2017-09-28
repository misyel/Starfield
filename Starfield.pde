NormalParticle [] stars;
void setup()
{
	
}
void draw()
{
	//your code here
}
int colors;
double xPos,yPos,spd,ang;
class NormalParticle
{
  NormalParticle(int x, int y){
    xPos = x;
    yPos = y;
    xPos = 50;
    yPos = 50;
    ang = Math.cos(2.03) * 8.25;
	}
  void show(){
    ellipse(x,y,20,20);
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}