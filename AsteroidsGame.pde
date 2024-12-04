//your variable declarations here
Spaceship triangle = new Spaceship(); 
star [] cluster= new star[100];
public void setup() 
{
  size(500,500);
  for(int i = 0; i < cluster.length; i++)
  {
  cluster[i] = new star();
  }
}
public void draw() 
{
  background(0);
  for(int i=0;i<cluster.length;i++){
  cluster[i].show();
  }
  triangle.show();
  triangle.move();
}
public void keyPressed() {
   if(key=='q')
   {
   triangle.setcenterX((int)(Math.random()*500));
   triangle.setcenterY((int)(Math.random()*500));
   triangle.setdirec((int)(Math.random()*360)+1); 
   triangle.setspeedX(0);
   triangle.setspeedY(0);
   }
      //turn right 
if(key == 'd'){
  triangle.turn(15);
  triangle.accelerate(.1);
 }
 //turn left
 if(key == 'a'){
  triangle.turn(-15);
  triangle.accelerate(.1);
 }
 //accelerate
 if(key =='w'){
  triangle.accelerate(.1); 
 }
 //de-accelerate
 if(key == 's'){
  triangle.accelerate(-0.1); 
 }

}

