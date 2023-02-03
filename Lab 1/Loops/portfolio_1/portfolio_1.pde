float scale = 50; // this is the scale variable, change its value to upscale or downscale the dumbell

int ColumnRepeat = 10; // this code sets the value for the variable ColumnRepeat to 10 it is later going to be used to set the number of times the loop that creates columns of dumbells iterates
int RowRepeat = 3; // this code sets the value for the variable RowRepeat to 3 it is later going to be used to set the number of times the loop that creates row of dumbells iterates

// to reposition the dumbells you need to change the value of the variables 'x' and 'y' that are initialised on lines 8 and 9

float x=20; // this code sets the starting value for variable 'x' which will be used to reposition the dumbells on their rows horizontally
float y=20; // this code sets the starting value for variable 'y' which will be used to reposition the dumbells on their columns vertically

float resetX =x; // this variable will be used to reset the x value to its original one after it has been changed so that the next rows of dumbells line up with the previous ones

size(500,500); // this code sets the size of the background canvas screen to 500 pixels by 500 pixels

for (int column=0;column<ColumnRepeat;column++) // this loops the code 10 times to create 10 columns consisting of a row of 3 dumbells each
{
  for(int row=0;row<RowRepeat;row++) // this loops the code to create a dumbell 3 times on a single row
  {
    ellipse(x,y,scale,scale); // this creates a circle to be used as one end of the dumbell
    ellipse(x+scale*1.3,y,scale,scale); // this creates a circle to be used as another end of the dumbell
    line(x,y,x+scale*1.3,y); // this creates a line to connect the centre points of the 2 circles and gives off the appearance of being the handle of the dumbell
    x=x+scale*3; // this code will set the starting position of the next dumbell on the same row
  }
  x=resetX; // this code resets x to the starting value so that the next row is that is one level lower will be directly under the starting point of the first row
  y=y+scale*1.3; // this code increases the value of y so that when the loop iterates it will create the next row of dumbells at a lower postion than the previous row
}
