////////////////////////////////////////////////title:change

float speed,h,sp,mx,my;
float size=4,col=50,b=100,t=20;
////////////////////////////////////////////////

void setup(){
background(0);
size(1080,1080);
colorMode(HSB,200);
}

///////////////////////////////////////////////case1

void draw(){

pushMatrix();
noFill();
translate(width/2,height/2);
for (int i=0; i <200; i++){
scale(0.98);
rotate(radians(speed));
speed-=0.0003;
ellipse(mx,my,900,450);
strokeWeight(size);
mx=(map(mouseX,0,width,0,width/2.2));
my=(map(mouseY,0,height,0,height/2.2));
stroke(h,100,200);
h=(i+col)*1.1;

////////////////////////////if loops start here

if(i/10 ==1){
background(0);}

if (mousePressed){
noStroke();
fill(h,100,180,20);
h=i*1.1; }

if(keyPressed){
fill(h,100,180,t);}

}//////for loop ends here.
popMatrix();
}//////end

 