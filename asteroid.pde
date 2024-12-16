class asteroid extends Floater
{
private int rotation;
public asteroid(){
corners=6;
xCorners = new int[corners];
yCorners = new int[corners];
myColor = color(0,255,0);
    xCorners[0] = 15;
    yCorners[0] = 0;
    xCorners[1] = 15;
    yCorners[1] = -6;
    xCorners[2] = 6;
    yCorners[2] = -12;
    xCorners[3] = -15;
    yCorners[3] = 0;
    xCorners[4] = -15;
    yCorners[4] = 8;
    xCorners[5] = 6;
    yCorners[5] = 9;
myXspeed = (Math.random()*1.5);
  myYspeed = (Math.random()*1.5);
rotation=(int)(Math.random()*6)+1; 
 myCenterX = (int)(Math.random()*500); 
 myCenterY = (int) (Math.random()*500);
 myPointDirection = 0;
}

void move(){
  turn(rotation);
  super.move();
}


public void setcenterX(double x) {myCenterX=x;}
public void setCenterX(double x) { myCenterX = x; }
public double getcenterX() {return myCenterX;}
public void setcenterY(double y) {myCenterY=y;}
public double getcenterY() {return myCenterY;}





}
