
Motorbike redBike, blueBike;

void setup() 
{
  size(500,100);
  redBike = new Motorbike(30, RED);
  redBike.y = 30;
  redBike.colour = RED;
  
  blueBike = new Motorbike(60, BLUE);
  blueBike.y = 60;
  blueBike.colour = BLUE;
}

void draw()
{
  background(125);
  
  
  if (!redBike.finished() && !blueBike.finished())
  {
    redBike.update();
    blueBike.update();
  }
}
  
