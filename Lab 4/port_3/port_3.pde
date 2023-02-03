// portfolio 3 'bouncing objects' this program will render 3 moving objects that bounce off the walls and eachother whilst 
// pointing an arrow in the direction that they move in

PImage image1,image2, image3, image4; // initalises 4 images

Arrow arrow1, arrow2, arrow3; // initialises 3 instances of the arrow class

int size = 50; // this variable sets the size of the objects , change it to rescale them

void setup()
{
   size(500,500); // sets the size of the canvas
   arrow1 = new Arrow(100,100,-5,3); // the following 3 lines set the starting position and speed of the 3 moving objects
   arrow2 = new Arrow(200,200,-5,-4);
   arrow3 = new Arrow(300,400,6,6); // (X,Y,SpeedX,SpeedY)
}

void draw()
{
  background(255); // sets the background colour to white
  arrow1.update(); // runs the update command
  arrow2.update();
  arrow3.update();
}

class Arrow // the Arrow class

{
   int x; //initialises the x position
   int y; // initialises the y position
   int speedX; // initialises the speed of an object on a horizontal plane
   int speedY; // initialises the speed of an object on a vertical plane
     
  final PImage image1,image2, image3, image4; // initialises 4 images
   
   Arrow (int x, int y, int dx, int dy) // this constructor imports the images of 4 different direction arrows and assigns them to images 1, 2, 3 and 4
  {
    this.x = x; // members of the class
    this.y = y;
    this.speedX= dx;
    this.speedY = dy;
    
    image1 = loadImage("DownRight.png"); // locates and loads an image
    image1.resize(size,size); // resizes the image to the value of the size variable (global)
    
    image2 = loadImage("DownLeft.png");
    image2.resize(size,size);
    
    image3 = loadImage("UpRight.png");
    image3.resize(size,size);
    
    image4 = loadImage("UpLeft.png");
    image4.resize(size,size);
    
    imageMode(CENTER); // sets the image mode to center, so that the centre point of the image is its location and not the top left corner   
  }
  
  void move() // this procedure allows the objects to move
  {
    x = x+speedX; // movement on a horizontal plane by increasing the x value by the value of speedX
    y = y+speedY; // movement on a vertical plane by increasing the y value by the value of speedY
  }
  
  void render() // renders the image
  {
      imageMode(CENTER);
      
      if (this.speedX > 0 && this.speedY > 0) //if the x and y are positive the arrow faces diagonally to the bottom right
      {
        image(image1,x,y);
      }
      
      else if (this.speedX < 0 && this.speedY > 0) //if the x is negative and y is positive the arrow faces diagonally to the bottom left
      {
        image(image2,x,y);
      }
      
      else if (this.speedX > 0 && this.speedY < 0) //if the x is positive and the y is negative the arrow faces diagonally to the top right
      {
        image(image3,x,y);
      }
      
      else if (this.speedX < 0 && this.speedY < 0) //if the x and y are negative the arrow faces diagonally to the top left
      {
        image(image4,x,y);
      }    
  }
  
 void update() // runs the procedures it contains at the same time
{
   render();
   move();
   collision();
   wall();
}
   
   void wall() // this detects if an arrow is in contact with a wall and inverts it if it is
   {
     if (this.x > width - size || this.x < size) // this checks if the object is touching the horizontal walls on the left or right of the canvas and inverts the horizontal speed if it is
     {
     speedX = speedX*-1;
     }
     
     if (this.y > height - size || this.y < size) // this checks if the object is touching the vertical walls on the top or bottom of the canvas and inverts the vertical speed if it is
     {
     speedY = speedY*-1;
     }
   }  
   
   boolean crash(Arrow other) // this detects if 2 arrows are in contact with each other
   {
     return (abs(this.x-other.x) < size  &&  abs(this.y-other.y) < size); // returns a boolean value if the distance between 2 objects is less than the size of the objects (if they are touching)
   }
   
   void collision()
   {
   
    if (arrow1.crash(arrow2)) // crash sequences, the direction of the arrows will invert if they collide with eachother
    {
    arrow1.speedX = arrow1.speedX*-1; //inverts the speedX (1 turns into -1 and vice versa) 
    arrow1.speedY = arrow1.speedY*-1; //inverts the speedY (1 turns into -1 and vice versa)
  
    arrow2.speedX = arrow2.speedX*-1;
    arrow2.speedY = arrow2.speedY*-1;
    }
    
    if (arrow1.crash(arrow3))
    {
    arrow1.speedX = arrow1.speedX*-1;
    arrow1.speedY = arrow1.speedY*-1;
  
    arrow3.speedX = arrow3.speedX*-1;
    arrow3.speedY = arrow3.speedY*-1;
    }
  
    if (arrow3.crash(arrow2))
    {
    arrow3.speedX = arrow3.speedX*-1;
    arrow3.speedY = arrow3.speedY*-1;
  
    arrow2.speedX = arrow2.speedX*-1;
    arrow2.speedY = arrow2.speedY*-1;
    }   
   }
}
   
 
  
