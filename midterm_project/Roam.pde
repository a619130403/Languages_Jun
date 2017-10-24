class Roam{
PVector loc= new PVector(width/2,height/2);
PVector vel= new PVector(0,0); 
PVector acc= new PVector(random(-1,1),random(-1,1)); 
float h=random(20,70);;
float size=random(10,100);;
float b;
void Roam(){
 }

 void update(){
  
  vel.add(acc);
  //if (random(1)<0.5)  loc.add(vel);
  //if (random(1)>0.5)  loc.sub(vel);
  loc.add(vel);
  loc.x=constrain(loc.x,240,840);
  loc.y=constrain(loc.y,240,840);
  vel.x=constrain(vel.x,-5,5);
  vel.y=constrain(vel.y,-5,5);
 }
 
 
 void show(){
   noStroke();
   fill(h,100,80,50);
   ellipse(loc.x,loc.y,size,size);
  
 }
 
}