class star {
  private int x,y,control; 
public star(){
x=(int)(Math.random()*500);
y=(int)(Math.random()*500);
control=(int)(Math.random()*10);
}
public void show(){
fill(255);
noStroke();
ellipse(x,y,control,control);  
}

}
