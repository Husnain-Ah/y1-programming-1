// Portfolio 2 Traffic Jam

void setup() 
{
  size(1000,500); // this sets the size of the canvas
}

void draw()  // this function draws 2 rows of cars
{
  float x=100, y=50, size=30, RowRepeat=10; // set the value of x,y and size to be used later, x and y are for positioning, size is for scale, row repeat is for the number of cars on the row 
  
  float divSeven = 7; // this variable is used to replace calculations so there are no hard-coded numbers that cannot be changed easily
  float secondRowSize=40; // this is the scaling variable for the second row
  float secondRowGap = secondRowSize/divSeven; // set the size of the gap between the first and second row
  
  float x2=x, y2=y+size*secondRowGap, size2=50, RowRepeat2 = 4; // set the value of x,y and size to be used later, x and y are for positioning, size is for scale, row repeat is for the number of cars on the row (this is for the second row)
  
  DrawCarRow(x,y,size,RowRepeat);
  DrawCarRow(x2,y2,size2,RowRepeat2);
  DrawCarRow(x2,y2+150,size/2,RowRepeat);
}

void DrawCarRow(float x,  float y, float size, float RowRepeat) // this draws a single row of cars
{
  float resetX =x; // this variable will be used to reset the x value to its original one after it has been changed so that the next rows of cars line up with the previous ones
  
  float multThree = 3; // this variable is used to replace calculations so there are no hard-coded numbers that cannot be changed easily 
  
  for(int row=0;row<RowRepeat;row++) // this loops the code to create a car in a row
  {
    car(x, y, size); // this sets the previously initialised variables to the values of the 'car' procedure
    x=x+size*multThree; // this code will set the starting position of the next car on the same row
  }
  
  x=resetX; // this code resets x to the starting value so that the next row is that is one level lower will be directly under the starting point of the first row
}

void car (float x, float y, float size) // this draws one car, the x and y variables are the centrepoints of the top of the car (the smaller rectangle)+
{
  float wheel = size*1.5; // these are variables used to replace calculations so there are no hard-coded numbers that cannot be changed easily
  float divTwoPointFive = 2.5;
  float multZeroPointEightFive = 0.85;
  
  carTop(x,y,size); // these are setting the values of the following procedures
  carBottom(x,y+size,size);
  wheel(x+size*multZeroPointEightFive,y+wheel,size/divTwoPointFive);
  wheel(x-size*multZeroPointEightFive,y+wheel,size/divTwoPointFive);
}

void carTop(float x, float y, float size) // the small square on top of the car
{
  rectMode(CENTER); // this makes it so that the first 2 coordinates in the rect command are set to the centre point of the rectangle instead of the top left one
  fill(155); // fills in the rectangle with a grey colour
  rect(x,y,size,size); // makes the rectangle
}

void carBottom(float x, float y, float size) // the long rectangle on the bottom of the car
{
  float length = size*2; // this variable is used for calculations, also makes code more readable and changable
  
  rectMode(CENTER); // this makes it so that the first 2 coordinates in the rect command are set to the centre point of the rectangle instead of the top left one
  rect(x,y,length,size); // makes the rectangle
}

void wheel(float x, float y, float wheel_diameter) // makes overlapping black and white ellipses to look like wheels
{
  float insideWheel =wheel_diameter/2; // this will be used for the diameter of the white circle
  
  fill(0,0,0); // black wheel tire
  ellipse(x,y,wheel_diameter,wheel_diameter); // makes the black tire
  
  fill(255,255,255); // white circle to complete wheel appearance
  ellipse(x,y,insideWheel,insideWheel); // makes the smaller white circle on top of the tire
}
