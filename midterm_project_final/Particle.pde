class Particle{

  float x;
  float y;
  color c;
Particle(){
x=540;
y=540;
background(100); 

 }

void show1(){
noStroke();
c= img.get(int(x),int(y)); 
fill(c,5);
ellipse(x,y,2,2);

float r=random(1);
  if(r<0.25) {
  x+=1;
  }else if(r<0.50){
  x-=1; 
  }else if(r<0.75){y+=1;}
  else{y-=1; 
  }
 
  x=constrain(x,0,width-4);
  y=constrain(y,0,height-4);  
}

void show2(){
noStroke();
c= img.get(int(x),int(y)); 
fill(c,5);
ellipse(x,y,4,4);
stroke(c,5);
line(x,y,x,y+30);

float r=random(1);
  if(r<0.25) {
  x+=3;
  }else if(r<0.50){
  x-=3; 
  }else if(r<0.75){
  y+=3;
  }
  else{y-=3; 
  }
 
  x=constrain(x,0,width-4);
  y=constrain(y,0,height-4);  
}
void show3(){
noFill();
c= img.get(int(x),int(y)); 
stroke(c,5);
rect(x,y,10,10);


float r=random(1);
  if(r<0.25) {
  x+=3;
  }else if(r<0.50){
  x-=3; 
  }else if(r<0.75){
  y+=3;
  }else{
  y-=3; 
  }
 
  x=constrain(x,0,width-4);
  y=constrain(y,0,height-4);  
}
}