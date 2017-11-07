PImage[] cube= new PImage[300];
int s=1;
int a=1;
void setup(){

size(960,540,P2D);
colorMode(HSB,100);
background(100);
for (int i=0; i<cube.length;i++){
cube[i]=loadImage(i+".png");  
}
}
void draw(){
if(mousePressed && mouseX>7 && mouseX<23 && mouseY>7 && mouseY<23){
tint(100,10);
}
else{ tint(100,100);}
s+=a;
if (s<1)   a*=-1; 
if (s>298) a*=-1; 
image (cube[s],0,0); 
println(s);
noStroke();
ellipseMode(CENTER);
fill(60,100,100);
ellipse(15,15,15,15);
}