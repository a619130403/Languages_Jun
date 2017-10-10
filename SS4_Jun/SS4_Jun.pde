///////////////////////////////////////title  Curve
///////////////////////////////////////author  Jun

PImage img;
PVector[] pv=new PVector [1000];
float a,b,c=0.1,d=0.1,e=1,f=1;
///////////////////////////////////////
void setup(){
size(1024,1024);
}
///////////////////////////////////////
void draw (){
  background(0);
  if (mousePressed){
    img=loadImage("flower1.jpg");
  }else{
    img=loadImage("flower2.jpg");
  }
  if(keyPressed){
    image(img,0,0,width,height);
  }
  for (int i=0;i<60;i++){
  for (int u=0;u<60;u++){  
  float x=random(width);
  float y=random(height);
  color col= img.get(int(x),int(y));
  float x1 =map (cos(a),-1,1,0,width);
  float y1 =map (sin(b),-1,1,0,height);
  float x2 =map (cos(c),-1,1,0,width);
  float y2 =map (sin(d),-1,1,0,height);  
  pv[i]= new PVector(x1,y1);
  pv[u]= new PVector(x2,y2);
  //fill(random(50,60),100,i*2);
  fill(col);
  ellipse(x1,y1,5,5);
  ellipse(x2,y2,5,5);
  stroke(col);
  line(pv[i].x,pv[i].y,pv[u].x,pv[u].y);
  e=map(mouseX,0,width,0,0.0400);
  f=map(mouseY,0,width,0,0.020);
  a+=tan(e);
  b+=tan(f);
  c+=tan(e);
  d+=tan(f);
  println(e,f); 
}
  }
  
}