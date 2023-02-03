final color RED = color(255,0,0);
final color BLUE = color(0,0,255);

class Motorbike
{
 int x = 5;  //members
 int y;
 int speed=2;
 int size=30;
 color colour;
 
 Motorbike(int y,color col){ //constructor
   this.y = y;
   this.speed = (int)random(5.0);
   this.colour = col;
 }

boolean finished()
 {
    return x>(width-10); //screen width
 }
 
//methods, procedures an object of this type can perform
 void render()
 {
   float wheelHeight = size/3;
   fill(colour);
   triangle(x,y,x+size,y,x+size/2,y-size/2);  //built-in triangle routine
   drawWheel(x,y,wheelHeight);
   drawWheel(x+size,y,wheelHeight);
 }
 
 void drawWheel(int x,int y,float size)
 {
    float inner = size*2/3;
    fill(0);
    ellipse(x,y,size,size);
    fill(255);
    ellipse(x,y,inner,inner);
 }
 
 void move() {
    speed = (int)random(5.0);  //a random step [0..5]
    x=x+speed; 
 }

void update()  {
   move();
   render();
 }

} //end of class description
