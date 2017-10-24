class Particle{

  float x;
  float y;
  color c;
Particle(){
x=540;
y=540;
background(100); 

 }

void show(){
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
}