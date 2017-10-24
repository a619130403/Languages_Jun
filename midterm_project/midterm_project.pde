///////////////////////////////////////////////////////autor:Jun 
///////////////////////////////////////////////////////title:Four Buttons
float state=0;
float x=1,y=1,z=1;
///////////////////////////////////////////////////////case 1 value
Roam[] r=new Roam[200];
///////////////////////////////////////////////////////case 2 value
PImage img;
PImage pbutton;
PImage nbutton;
PImage home;
Particle[] pa=new Particle[500];
///////////////////////////////////////////////////////case 3 value
Shape[] shape=new Shape[100];
///////////////////////////////////////////////////////case 4 value
float d;
float h;
///////////////////////////////////////////////////////setup

void setup(){
size(1080,1080,P3D);
frameRate(30);
colorMode(HSB,100);
pbutton=loadImage("previousbutton.tga");
nbutton=loadImage("nextbutton.tga");
home=loadImage("home.tga");
///////////////////////////////////////////////////////case 1 setup
 for (int i=0;i<200;i++){
 r[i]= new Roam();
 }  
///////////////////////////////////////////////////////case 2 setup
  img= loadImage("1.tga");
  for (int i=0;i<500;i++){
  pa[i] =new Particle(); 
  }

///////////////////////////////////////////////////////case 3 setup
for (int i=0;i<100;i++){
  shape[i] =new Shape();
  
}
}
///////////////////////////////////////////////////////
void draw(){

///////////////////////////////////////////////////////case 0 draw
if(state==0){
background(100);
textSize(32);
text("click a sphere to start!",width/2-170,height/2);
frameRate(30);
for (int i=0;i<200;i++){
r[i].show(); 
r[i].update();
 }
}
///////////////////////////////////////////////////////case 1 draw

else if(state==1){
 frameRate(1000);
 for (int i=0;i<500;i++){
 pa[i].show(); 
 }
 textSize(15);
 fill(0);
 
}
///////////////////////////////////////////////////////case 2 draw
else if(state==2){
 background(0);
 for (int i=0;i<100;i++){ 
 shape[i].show();
 shape[i].update();
 }
}
///////////////////////////////////////////////////////case 3 draw
else if(state==3){
  background(100);
  pushMatrix();
  translate(540,540);
  x+=0.001;
  y+=0.001;
  z+=0.001;
  noFill();
  //ellipse(0,0,200,200);
  rectMode(CENTER);
  for(int i=0;i<50;i++){
  rotateX(x);
  rotateY(y);
  rotateZ(z);
  noFill();
  stroke(0,100-i*2); 
  rect(0,0,mouseX,mouseY,30);
}
popMatrix();
}
///////////////////////////////////////////////////////case 4 draw
else if(state==4){
pushMatrix(); 
background(100);
translate(width/2,height/2);
rotateY(mouseY/2);
rotateX(mouseY/2);
pushMatrix();
rotateY(d);
rotateZ(PI/2);
sphereDetail(20);
sphere(100);
popMatrix();

pushMatrix();
translate(0,0,250+noise(10));
rotateY(d);
rotateZ(PI/2);
sphereDetail(15);
sphere(50);
popMatrix();

pushMatrix();
translate(0,0,-250);
rotateY(d);
rotateZ(PI/2);
sphereDetail(15);
sphere(50);
popMatrix();

pushMatrix();
for(int i=0;i<20;i++){
noFill();
rotate(radians(d));
d+=0.01;
h=random(20,60);
stroke(h,80,80);
ellipse(0,0,500,800);
}
popMatrix();
pushMatrix();
translate(0,0,mouseY/4);
for(int i=0;i<10;i++){
noFill();
rotate(radians(d));
d+=0.002;
h=random(20,60);
stroke(h,80,80);
ellipse(0,0,200,400);
}
popMatrix();
pushMatrix();
translate(0,0,-mouseY/4);
for(int i=0;i<10;i++){
noFill();
rotate(radians(d));
d+=0.004;
stroke(h,80,80);
h=random(20,60);
ellipse(0,0,200,400);
}
popMatrix();
popMatrix();
} 
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////  add buttons here
 if (state!=0){
image(pbutton,0,0,60,30);
image(nbutton,1020,0,60,30);
image(home,0,1020,60,60);

 }
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
println(state);

}


void mousePressed(){
  if (state==0){
///////////////////////////////////////////////////////case 1
  if      (mouseX>200 && mouseX<300 && mouseY>200 && mouseY <300)  
  {state=1; background(100);}
///////////////////////////////////////////////////////case 2
  else if (mouseX>800 && mouseX<900 && mouseY>200 && mouseY <300) 
  {state=2;frameRate(30);}
///////////////////////////////////////////////////////case 3
  else if (mouseX>200 && mouseX<300 && mouseY>800 && mouseY <900) 
  {state=3;}
///////////////////////////////////////////////////////case 4 
  else if (mouseX>800 && mouseX<900 && mouseY>800 && mouseY <900)  state=4;
  }
///////////////////////////////////////////////////////
  if (mouseX>0 && mouseX<60 && mouseY>0 && mouseY<40)
  {state-=1;background(100);frameRate(30);}
   if (mouseX>1020 && mouseX<1080 && mouseY>0 && mouseY<40)
  {state+=1;background(100);frameRate(30);}
  if (mouseX>0 && mouseX<60 && mouseY>1020 && mouseY<1080)
  {state=0;}
}