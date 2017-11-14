///////////////////////////////////////////Jun
///////////////////////////////////////////line dancer
particle[] pl= new particle[100];
float num;
///////////////////////////////////////////
void setup (){
colorMode(HSB,100);
size(1080,1080); 
background(100);
for (int i=0;i<100;i++){
pl[i]= new particle();
}
}
///////////////////////////////////////////
void draw(){
num=map(mouseX,0,width,10,30);
for(int i=0;i<num;i++){
stroke(0,3);
pl[i].show();
pl[i].update(); 
 }  
}