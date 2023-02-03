// exercise 2 drawing a square

// set the size of the screen
size(500,500);

// draw each of the 4 lines of the square
line(50,50,50,100);
line(50,100,100,100);
line(100,100,100,50);
line(50,50,100,50);

// exercise 2b moving square, i will make a second square on the same screen for this


//this is going to be the variable that will change the location of the square on the screen
float x = 200; 

// draw each of the 4 lines of the moving square with values x for x and x+50 for y

line(x,x,x,(x+50));
line(x,(x+50),(x+50),(x+50));
line((x+50),(x+50),(x+50),x);
line(x,x,(x+50),x);

// i will now set another float variable for y in a 3rd square

float x2 = 280;
float y = 370;

line(x2,x2,x2,y);
line(x2,y,y,y);
line(y,y,y,x2);
line(x2,x2,y,x2);

/* this allows you to change the dimensions of the square and its location on the screen but does not allow you to input
specific coordinates and move the square there whilst retaining its current dimensions, so it's size can be changed */
