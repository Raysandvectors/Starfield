Particle[] crabs; 
int x;
int y;
int p;
Particle cry; 
Particle goHard;
void setup()
{
 crabs = new Particle[100];
 for(int i = 0; i < crabs.length; i++){
   crabs[i] = new NormalParticle();
 }
 goHard = new OddballParticle();
 
 
size(1000,1000);
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
    goHard.move();
    goHard.show();
    crabs[i].move();
    crabs[i].show();
  }

   //cry.move(); 
 }  


class NormalParticle implements Particle
{
	double myX,myY,myAngle,mySpeed;
public void move(){
myAngle =  Math.random()*2000+ myX;
mySpeed =  Math.random()*1000+ myY;
}
public void show(){ellipse((float)myAngle,(float)mySpeed,(float)myX,(float)myY);}
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
newX = Math.cos(newY) * newSpeed + newX;
newY = Math.sin(newX) * newSpeed + newY;
newAngle = 30;
newSpeed = 30;
}
public void show(){rect((float)newAngle,(float)newSpeed,(float)newX,(float)newY);}

class JumboParticle extends NormalParticle
{
public void show(){ellipse(50,50,(float)myX,(float)myY);}

  }
}
