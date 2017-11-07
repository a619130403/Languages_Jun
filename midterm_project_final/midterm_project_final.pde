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
 img= loadImage("1.jpg");
  
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
println(state);

///////////////////////////////////////////////////////case 0 draw
if(state==0){
frameRate(30);  
background(100);
textSize(32);
text("click a sphere to start!",width/2-170,height/2);
for (int i=0;i<200;i++){
r[i].show(); 
r[i].update();
 }
}
///////////////////////////////////////////////////////case 1.0 draw

else if(state==1.0){
 frameRate(1000);
 for (int i=0;i<500;i++){
 pa[i].show1(); 
 }
 textSize(15);
 fill(0);
}
///////////////////////////////////////////////////////case 1.1 draw
else if(state==1.1){
 frameRate(1000);
 for (int i=0;i<500;i++){
 pa[i].show2(); 
 }
 textSize(15);
 fill(0);
}
///////////////////////////////////////////////////////case 1.2 draw
else if(state==1.2){
 frameRate(1000);
 for (int i=0;i<500;i++){
 pa[i].show3(); 
 }
 textSize(15);
 fill(0);
}
///////////////////////////////////////////////////////case 2.0 draw
else if(state==2){
 frameRate(30);
 background(0);
 for (int i=0;i<100;i++){ 
 shape[i].show();
 shape[i].update();
 }
}
///////////////////////////////////////////////////////case 2.1 draw
else if(state==2.1){
 frameRate(30);
 background(0);
 for (int i=0;i<100;i++){ 
 shape[i].show1();
 shape[i].update();
 }
}
///////////////////////////////////////////////////////case 2.2 draw
else if(state==2.2){
 frameRate(30);
 background(0);
 for (int i=0;i<100;i++){ 
 shape[i].show2();
 shape[i].update();
 }
}
///////////////////////////////////////////////////////case 3.0 draw
else if(state==3.0){
  frameRate(30);
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
///////////////////////////////////////////////////////case 3.1 draw
else if(state==3.1){
  frameRate(30);
  background(100);
  pushMatrix();
  translate(540,540);
  x+=0.001;
  y+=0.001;
  z+=0.001;
  noFill();
  //ellipse(0,0,200,200);
  ellipseMode(CENTER);
  for(int i=0;i<50;i++){
  rotateX(x);
  rotateY(y);
  rotateZ(z);
  noFill();
  stroke(0,100-i*2); 
  ellipse(0,0,mouseX,mouseY);
}
popMatrix();
}
///////////////////////////////////////////////////////case 3.2 draw
else if(state==3.2){
  frameRate(30);
  background(100);
  pushMatrix();
  translate(540,540);
  x+=0.001;
  y+=0.001;
  z+=0.001;
  noFill();
  //ellipse(0,0,200,200);
  for(int i=0;i<50;i++){
  rotateX(x);
  rotateY(y);
  rotateZ(z);
  noFill();
  stroke(0,100-i*2); 
  triangle(-mouseX/2,mouseY/2,0,0,mouseX/2,mouseY/2);
}
popMatrix();
}
///////////////////////////////////////////////////////case 4 draw
else if(state==4){
frameRate(30);
pushMatrix(); 
background(100);
translate(width/2,height/2);
rotateY(map(mouseY,0,height,0,20));
rotateX(map(mouseX,0,width,0,90));
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
 if (state!=0 && state!=4){

image(pbutton,0,0,60,30);
image(nbutton,1020,0,60,30);
image(home,70,0,30,30);
 }

 if (state==4){
image(pbutton,0,0,60,30);
image(home,70,0,30,30);
 }
  if (state!=0 && state!=4){
  ellipseMode(CENTER);
 noStroke();
 fill(20,100,100);
 ellipse(120,15,20,20);
 fill(40,100,100);
 ellipse(150,15,20,20);
 fill(50,100,100);
 ellipse(180,15,20,20);
  }
}


void mousePressed(){
  if (state==0){
///////////////////////////////////////////////////////case 1
  if      (mouseX>200 && mouseX<300 && mouseY>200 && mouseY <300)  
  {state=1; background(100);}
///////////////////////////////////////////////////////case 2
  else if (mouseX>800 && mouseX<900 && mouseY>200 && mouseY <300) 
  {state=2;}
///////////////////////////////////////////////////////case 3
  else if (mouseX>200 && mouseX<300 && mouseY>800 && mouseY <900) 
  {state=3;}
///////////////////////////////////////////////////////case 4 
  else if (mouseX>800 && mouseX<900 && mouseY>800 && mouseY <900)  state=4;
  }
/////////////////////////////////////////////////////// states change
  if (mouseX>0 && mouseX<60 && mouseY>0 && mouseY<40 && state!=0)
  {state=floor(state)-1;clear();background(100);}
   if (mouseX>1020 && mouseX<1080 && mouseY>0 && mouseY<40 && state!=4)
  {state=floor(state)+1;clear();background(100);}
  if (mouseX>70 && mouseX<100 && mouseY>0 && mouseY<30 && state!=0)
  {state=0;background(100);}
///////////////////////////////////////////////////////
if (state==1.0 || state==1.1 || state==1.2){
float ran=random(1);
  if   (mouseX>110 && mouseX<130 && mouseY>5 && mouseY <25) { 
  state=1.0;
  background(100);
  
  if(ran<0.33) {img= loadImage("1.jpg");}
  else if(ran<0.66) {img= loadImage("2.jpg"); }
  else  {img= loadImage("3.jpg"); }
  }
  if   (mouseX>140 && mouseX<160 && mouseY>5 && mouseY <25) { 
  state=1.1;
  background(100);
  if(ran<0.33) {img= loadImage("1.jpg");}
  else if(ran<0.66) {img= loadImage("2.jpg"); }
  else  {img= loadImage("3.jpg"); }
  
  }
  if   (mouseX>170 && mouseX<190 && mouseY>5 && mouseY <25) {
  state=1.2;
  background(100);
  if(ran<0.33) {img= loadImage("1.jpg");}
  else if(ran<0.66) {img= loadImage("2.jpg"); }
  else  {img= loadImage("3.jpg"); }
  }
  
}
if (state==2.0 || state==2.1 || state==2.2){
  if   (mouseX>110 && mouseX<130 && mouseY>5 && mouseY <25)  state=2.0;background(0);
  if   (mouseX>140 && mouseX<160 && mouseY>5 && mouseY <25)  state=2.1;background(0);
  if   (mouseX>170 && mouseX<190 && mouseY>5 && mouseY <25)  state=2.2;background(0);
}
if (state==3.0 || state==3.1 || state==3.2){
  if   (mouseX>110 && mouseX<130 && mouseY>5 && mouseY <25)    state=3.0;background(100);
  if   (mouseX>140 && mouseX<160 && mouseY>5 && mouseY <25)  state=3.1;background(100);
  if   (mouseX>170 && mouseX<190 && mouseY>5 && mouseY <25)  state=3.2;background(100);
}
}