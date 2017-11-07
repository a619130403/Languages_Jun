class Shape{
PVector pos= new PVector(random(400,width-400),random(400,height-400));
PVector vel= new PVector(0,0);
PVector acc= new PVector(random(-0.1,0.1),random(-0.1,0.1));
float size=random(20,50);
float a=0;
float b=0;
Shape(){
  
}

 void update(){
   //acc.add(random(-0.01,0.01),random(size/20000));
   vel.add(acc);
   pos.add(vel);
   if  (pos.x>width){
  pos.x=width;
   vel.x*=-1;
  }else if (pos.x<0){
   pos.x=0;
    vel.x*=-1;
  }
    if  (pos.y>height){
   pos.y=height;
   vel.y*=-1;
  }else if (pos.y<0){
    pos.y=0;
    vel.y*=-1;
  }
 }
 
 void show(){
 float dis =map(dist(pos.x,pos.y,540,540),0,700,20,80);
 fill(100-dis,80,80);
 noStroke();
 ellipse(pos.x,pos.y,size,size);
 }
  void show1(){
 float dis =map(dist(pos.x,pos.y,540,540),0,700,20,80);
 fill(100-dis,80,80);
 noStroke();
 rect(pos.x,pos.y,size,size,15);
 }
  void show2(){
 float dis =map(dist(pos.x,pos.y,540,540),0,700,20,80);
 fill(100-dis,80,80);
 noStroke();
 rectMode(CENTER);
 rect(pos.x,pos.y,pos.x/10,pos.y/10,15);
 }
 

 
}