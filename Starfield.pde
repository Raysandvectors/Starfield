Particle[] crabs; 
int x;
int y;
int p;
void setup()
{
 crabs = new Particle[100];
 for(int i = 0; i < crabs.length; i++){
   crabs[i] = new NormalParticle();
 }
 crabs[0] = new OddballParticle();
 crabs[99] = new JumboParticle();
 size(500,500);
 frameRate(10);

}

void draw()
{
   translate(width/2,height/2);
  
   fill((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
   stroke((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
   strokeWeight(3);
  
   background(0);
  
   //fill(255);
  
   textSize(24);
   text("frame rate: " + frameRate, 210, 400);
  
   for(int i=0; i< crabs.length; i++)

    {
  
      crabs[i].move();
      crabs[i].show();
  
    }
   //cry.move(); 

}

class NormalParticle implements Particle
{
  double myX,myAngle,mySpeed,myY;
  public void move(){
    myX += mySpeed * cos((float)myAngle);
    myY += mySpeed * sin((float)myAngle);
  }
  
  public void show(){
    fill(0,50,200);
    ellipse((float)myX,(float)myY,5,5);
  }
  
  public NormalParticle(){
  
    myX = 23;
    myY = 24;
    myAngle = Math.random()*2*PI;
    mySpeed = Math.random()*15;
  }

}

interface Particle
{
  public void show();
  public void move();
} 

class OddballParticle implements Particle
{

  private double newX,newY,newSpeed,newAngle;
  
  public void move(){
  
  newX = Math.cos(newY) *  newX + newSpeed;
  newY = Math.sin(newX) * newY + newSpeed;
  
  newAngle = Math.random()*2*PI;
  newSpeed = Math.random()*60;
  
  }
  
  public void show(){rect((float)newAngle,(float)newSpeed,(float)newX,(float)newY);}
}
  
class JumboParticle extends NormalParticle
  
{
  
  public void show(){ellipse((float)myX,(float)myY,(float)100,(float)100);}
  
  public JumboParticle(){  }

}
