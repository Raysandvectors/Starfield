//your code here
void setup()
{
	//your code here
}
void draw()
{
	for(int x; x < 3; x++){

}
}
class NormalParticle implements Particle
{
	double myX,myY,myAngle,mySpeed;
public void move(){
myX = Math.cos(myAngle) * mySpeed + myX;
myY = Math.sin(myAngle) * mySpeed + myY;
}
public void show(){ellipse(20,20,(float)myX,(float)myY);}
public NormalParticle(){
myX = 23;
myY = 24;
myAngle = 23;
mySpeed = 24;

}

}


interface Particle
{
public void show();
public void move();
} 
class OddballParticle implements Particle
double newX,newY,newSpeed,newAngle;

{
	public void move(){
newX = newSpeed + newX;
newY = newY+=30;
}
public void show(){rect(23,23,(float)newX,(float)newY);}

class JumboParticle extends NormalParticle
{
public void show(){ellipse(50,50,(float)myX,(float)myY);}

  
}
