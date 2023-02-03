void setup() 
{
  size(500,500);
}

void draw()  // this function draws one house
{
  float x=150, y=150, size=140;  // set the value of x,y and size to be used later 
  house(x, y, size);
  
}

void house(float MyX, float MyY, float MySize) 
{
  square(MyX,MyY,MySize);
  triangle(MyX,MyY,MySize);
  door(MyX,MyY,MySize);
  circle(MyX+MySize/2,MyY*0.8,MySize/5);
  window(MyX,MyY,MySize);
}

void triangle(float x, float y, float length) 
{
  float mid = length/2.0;
  line(x,y,x+length,y);
  line(x,y,x+mid,y-mid);
  line(x+length,y,x+mid,y-mid);
}

void square(float x, float y, float length) 
{
  fill(255,255,255);
  line(x,y,x+length,y);
  line(x,y+length,x+length,y+length);
  line(x,y,x,y+length);
  line(x+length,y,x+length,y+length);
}

void door(float x, float y, float length) 
{
  fill(255,255,255);
  line(x*1.1,y+length/2,x*1.1,y+length);
  line(x*1.3,y+length/2,x*1.3,y+length);
  line(x*1.1,y+length/2,x*1.3,y+length/2);
}

void circle(float point_x, float point_y, float diameter) 
{
  ellipse(point_x,point_y,diameter,diameter);
}

void window(float x, float y, float length) 
{
  rect(x+length*0.6,y+length*0.1,length*0.3, length*0.3);
  
  rect(x+length*0.6,y+length*0.6,length*0.3, length*0.3);
}
