//your variable declarations here
Spaceship triangle = new Spaceship(); 
star [] cluster= new star[200];
int health=100;
boolean game= true; 
ArrayList <Bullet> bullet_list= new ArrayList <Bullet>();
ArrayList <asteroid> big_gray = new ArrayList <asteroid>();

public void setup() 
{
  size(500,500);
  
  for(int i = 0; i < cluster.length; i++)
  {
  cluster[i] = new star();
  }
  
  for(int i = 0; i < 10; i++)  
  {
  asteroid transition= new asteroid();
  big_gray.add(transition);
  }

}
public void draw() 
{
  background(0);
  for(int i=0;i<cluster.length;i++){
  cluster[i].show();
  }
 
if (game==true){
  triangle.show();
  triangle.move();
}

//asteriod disappears when 
  for(int i = 0; i < big_gray.size(); i++){
   big_gray.get(i).show();
   big_gray.get(i).move();

   float d = dist((float)(triangle.getcenterX()), (float)(triangle.getcenterY()), 
   (float)big_gray.get(i).getcenterX(), (float)big_gray.get(i).getcenterY());
if (game==true){
  if(d<30){
     big_gray.remove(i);
     i--;
     health-=10;
  }
  }
}
//game over mechanic
  if(health<=0){
   textSize(100);
   textAlign(LEFT);
    text("GAME OVER", 0,250);
   game=false;
  }
//get bullets to appear 
for(int i=0; i<bullet_list.size();i++){
  bullet_list.get(i).show();
  bullet_list.get(i).move();
}

for (int i = big_gray.size() - 1; i >= 0; i--) {
  for (int j = bullet_list.size() - 1; j >= 0; j--) {
    if (dist((float)big_gray.get(i).getcenterX(), (float)big_gray.get(i).getcenterY(),
             (float)bullet_list.get(j).getX(), (float)bullet_list.get(j).getY()) <= 20) {
      big_gray.remove(i);
      bullet_list.remove(j);
      break; // Exit inner loop once the asteroid is destroyed
    }
  }
}


  
   
  }
//controls   
void keyPressed() {
   if(key=='q')
   {
   triangle.setcenterX((int)(Math.random()*500));
   triangle.setcenterY((int)(Math.random()*500));
   triangle.setdirec((int)(Math.random()*360)+1); 
   triangle.setspeedX(0);
   triangle.setspeedY(0);
   }
      //turn right 
if(key == 'd' && game==true){
  triangle.turn(15);
 }
 //turn left
 if(key == 'a'&& game==true){
  triangle.turn(-15);
  triangle.accelerate(.1);
 }
 //accelerate
 if(key =='w' && game==true){
  triangle.accelerate(.1); 
 }
 //de-accelerate
 if(key == 's' && game==true){
  triangle.accelerate(-0.1); 
  
 }
 if(key == 'e' && game==true){
   bullet_list.add(new Bullet(triangle));
  
 }
 

}
