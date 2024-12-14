class Bullet extends Floater 
  {
    public Bullet(Spaceship triangle)
    {
      myCenterX = triangle.getcenterX();
      myCenterY = triangle.getcenterY();
      myXspeed = triangle.getspeedX();
      myYspeed = triangle.getspeedY();
      myPointDirection = triangle.getdirec();
      myColor = color(77,77,255);
      accelerate(6);
    }//end of constructor
    
    
    public void show()
    {
      fill(myColor);
      stroke(myColor);
      ellipse((float)myCenterX,(float)myCenterY,5,5);
    }
    
    public double getX(){return myCenterX;}
    public double getY(){return myCenterY;}
  }//end of bullet class
