class Ball
{
 Vec3D loc = new Vec3D (0,0,0);
Vec3D speed = new Vec3D(random(-2,2),random(-2,-2),0);
Vec3D grav = new Vec3D(0,0.2,0);

Ball(VecD _loc)
{
 loc = _loc;
}



void run()
{
  display();
  move();
  bounce();
  gravity();
}


void gravity()
{
  speed.addSelf(grav);
}


void bounce()
{
  if( loc.x > width)
  {
    speed.x = speed.x * -1;
  }
  
  if(loc.x < 0)
  {
    speed.x = speed.x *-1;
  }
  
  if(loc.y > height)
  {
    speed.y = speed.y * -1;
  }
  
  if(loc.y < 0)
  {
    speed.y = speed.y * -1;
  }
}


void move()
{
  loc.addSelf(speed);
}

void display()
{
  ellipse(loc.x,loc.y,20,20);
}

}