void setup()
{
  size(200,200);
  numberBox(10);
  square_circle(100,100,20);
}
void numberBox(int value)
{
  rect(100,50,50,20);
  fill(0);
  text(value,110,65);
}




void square_circle (float point_x, float point_y, float circle_diameter)
{
  fill(255);
  ellipse(point_x,point_y,circle_diameter,circle_diameter);
}
