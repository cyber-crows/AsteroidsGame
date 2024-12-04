class Spaceship extends Floater  
{   
public Spaceship(){
  //all of the member variables here are private 
  //they need getters and setters so that they can be acessed outside of the class 
corners = 4;
xCorners = new int[corners];
yCorners = new int[corners];
xCorners[0] = -8;
yCorners[0] = -8;
xCorners[1] = 16;
yCorners[1] = 0;
xCorners[2] = -8;
yCorners[2] = 8;
xCorners[3] = -2;
yCorners[3] = 0; 
//rocket
    x2Corners = new int[corners];
    y2Corners = new int[corners];
    x2Corners[0] = -10;
    y2Corners[0] = -5;
    x2Corners[1] = -35;
    y2Corners[1] = 0;
    x2Corners[2] = -10;
    y2Corners[2] = 5;
    myPointDirection = 0;
myColor = color(255,0,0);
     myCenterX = 250;
     myCenterY = 250;
     myXspeed = 0;
     myYspeed = 0;
     myPointDirection = 0;
}
public void setspeedX(double x) {myXspeed=x;} //remember that setter don't have a return type
public double getspeedX() {return myXspeed;} //remember that getters have a return type 
public void setspeedY(double y) {myYspeed=y;}
public double getspeedY() {return myYspeed;}
public void setcenterX(double x) {myCenterX=x;}
public double getcenterX() {return myCenterX;}
public void setcenterY(double y) {myCenterY=y;}
public double getcenterY() {return myCenterY;}
public void setdirec(int degrees){myPointDirection = degrees;}
public double getdirec(){return myPointDirection;}




}

