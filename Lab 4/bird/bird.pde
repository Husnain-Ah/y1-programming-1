// bird exercise

PImage image1,image2, image3;

Bird polly, bluey;

void setup()
{
   size(300,300);
   polly = new Bird(100,100,-5,3);
   bluey= new Bird(200,200,-5,-4);
}

void draw()
{
  background(255);
  polly.update();
  bluey.update();
  
  if (polly.crash(bluey))
  {
  polly.speedX = polly.speedX*-1;
  polly.speedY = polly.speedY*-1;
  
  bluey.speedX = bluey.speedX*-1;
  bluey.speedY = bluey.speedY*-1;
  }
  
  polly.wall();
  bluey.wall();  
}

class Bird

{
   int x; //changes position
   int y; //constant value
   int speedX;
   int speedY;
   
   int counter = 0;
   int countDir= 1;
     
   PImage image1,image2, image3;
   
   Bird (int x, int y, int dx, int dy)
  {
    this.x = x;
    this.y = y;
    this.speedX= dx;
    this.speedY = dy;
    
    image1 = loadImage("bird1.jpg");
    image1.resize(50,50);
    image2 = loadImage("bird2.jpg");
    image2.resize(50,50);
    image3 = loadImage("bird3.jpg");
    image3.resize(50,50);
    imageMode(CENTER);
    
  }
  
  void move()
  {
    x = x+speedX;
    y = y+speedY;
  }
  
  void render()
  {
    
    imageMode(CENTER);
      if (counter>=0 && counter<=5)
      {
        image(image1,x,y);
      }
      else if (counter>5 && counter<=15)
      {
        image(image2,x,y);
      }
      else if (counter>15 && counter<=25)
      {
        image(image3,x,y);
      }
      else 
      {
        countDir = -countDir; //reverse sequence
      }
      counter = counter + countDir;
  }
  
  void update()
{
   render();
   move();
}
  
  boolean crash(Bird other)
   {
     return (abs(this.x-other.x) < 50  &&  abs(this.y-other.y) < 50);
   }
   
   void wall()
   {
     
     if (this.x < 0 || this.x > width - 25  &&  this.y <0 || this.y > height - 25)
     {
       speedX = speedX*-1;
       speedY = speedY*-1;
     }
   }  
}
   
 
  
