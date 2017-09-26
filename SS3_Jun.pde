/////////////////////////////////////title  plant
/////////////////////////////////////author Jun Huang

float a;
float b;
float speed;
float h;

/////////////////////////////////////setup
void setup(){
  size(1024,1024,P3D);
  colorMode(HSB,1024*20,1024*20,20);  
}
////////////////////////////////////start to draw
void draw(){
 
  background(100);
  float x =map(sin(a),-1,1,200,width-200);
  float y =map(sin(b),-1,1,200,width-200);
  /////////////////////////////////////////
  
  if(mousePressed){
  x*=2;
  y*=2;
  }
////////////////////////////////////////
  
  pushMatrix();
  translate(mouseX,mouseY);
  scale(0.5);
  rotateX(mouseX*0.008);
  //rotateY(mouseY*0.01);
  rotateZ(mouseY*0.008);
  noFill();
//////////////////////////////////////////  
  for( int i=1;i<20;i++){
  stroke(mouseX*i,(1024-mouseY)*i,20);
  strokeWeight(i/5);
  rotate(speed);
  rectMode(CENTER);
  rect(0,0,x,y);
  speed+=0.00010;
  a+=0.002;
  b+=0.003; 
   }
   
/////////////////////////////ellipses
   for( int i=1;i<=36;i++){
   rotate(0.35);
   ellipse(x/1.8,y/1.8,10,10);
     }
     
/////////////////////////////sphere     
strokeWeight(1);
sphere((x+y)/10);

popMatrix();
//////////////////////////////////

if(keyPressed){
clear();
}
}
////////////////////////////