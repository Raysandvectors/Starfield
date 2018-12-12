Particle[] crabs; 
int x;
int y;
int p;
Particle cry; 
void setup()
{
 crabs = new Particle[100];
 for(int i = 0; i < crabs.length; i++){
   crabs[i] = new NormalParticle();
 }
 
size(500,500);
 frameRate(10);
}
void draw()
{
   fill((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
   stroke((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
   strokeWeight(3);
   background(0);
   fill(255);
   textSize(24);
   text("frame rate: " + frameRate, 210, 400);
   for(int i=0; i<crabs.length; i++)
  {
    crabs[i].move();
    crabs[i].show();
  }

   //cry.move(); 
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

{
 double newX,newY,newSpeed,newAngle;
public void move(){
newX = newSpeed + newX;
newY = newY+=30;
}
public void show(){rect(23,23,(float)newX,(float)newY);}

class JumboParticle extends NormalParticle
{
public void show(){ellipse(50,50,(float)myX,(float)myY);}

  }
}
