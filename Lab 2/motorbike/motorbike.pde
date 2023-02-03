
void setup() 
{
  size(500,500);
}

void draw()  // this function draws one motorbike 
{
  float x=150, y=150, size=140;  // set the value of x,y and size to be used later 
  motorbike(x, y, size);
  motorbike(x+190, y+50, size/2);
  motorbike(x-110, y+250, size*1.4);
}

void motorbike(float MyX, float MyY, float MySize) 
{
  triangle(MyX,MyY,MySize); // this draws the triangle frame of the motorbike 
  wheel(MyX,MyY,MySize/4); 
  wheel(MyX+MySize,MyY,MySize/4);
}

void triangle(float x, float y, float length) 
{
  float mid = length/2.0;
  line(x,y,x+length,y);
  line(x,y,x+mid,y-mid);
  line(x+length,y,x+mid,y-mid);
}

void wheel(float point_x, float point_y, float wheel_diameter) // makes overlapping black and white ellipses to look like wheels
{
  fill(0,0,0); // black wheel tire
  ellipse(point_x,point_y,wheel_diameter,wheel_diameter);
  
  fill(255,255,255); // white circle to complete wheel appearance
  ellipse(point_x,point_y,wheel_diameter/2,wheel_diameter/2);
}
