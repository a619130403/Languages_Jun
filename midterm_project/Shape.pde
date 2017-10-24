class Shape{
PVector pos= new PVector(random(400,width-400),random(400,height-400));
PVector vel= new PVector(0,0);
PVector acc= new PVector(random(-0.1,0.1),random(-0.1,0.1));
float size=random(20,50);
Shape(){
  
}
 void update(){
   //acc.add(random(-0.01,0.01),random(size/20000));
   vel.add(acc);
   pos.add(vel);
   
 }
 
 void show(){
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

 float dis =map(dist(pos.x,pos.y,540,540),0,700,20,80);
 stroke(80-dis);
 line(pos.x,pos.y,540,540);
 fill(100-dis,80,80);
 noStroke();
 ellipse(540,540,20,20);
 ellipse(pos.x,pos.y,size,size);
   

 }
 

 
}