import toxic.geom*;

ArrayList ballCollection;

void setup() 
{
  size(600,600);
  smooth();
  
  ballCollection = new ArrayList();
  
  for(int i = 0; i < 100; i++)
  {
    Vec 3D origin = new Vec3D(random(width),random(200),0); 
    Ball myBall = new Ball(origin );
    ballCollection. add (myBall);
  }
  
}


void draw()
{
  background(0);
  
  for(int i = 0; i  < ballCollection. size(); i++)
  {
    Ball mb = (Ball) ballCollection.get(i);
    mb.run();
    
    }
}