// mkbane example code -- this is a comment use double slash like in c# -- comments are greyed out

//A simple drawing Program
float x;
float size = 50;
x = 500;

//screen size 500x500 pixels
size(500,500);

point(0,0);

ellipse(x,500,size,size);
 // draws a white circle with width and height of 40 pixels at coords (50,250)
 
 // changed value of x to 250 to centre the circle in the middle of the graph
 
 // changing values of x and y to 500 only shows a quarter of the circle as the other 3/4ths are off the screen
 
 // changed the values of width and height from 40 to 80 to double the size then to 20 to half it from its original size
 
 /* added line 5 initialising the variable 'size' with a  value of 50 -- replaced the width and height of the elipses with
 the variable 'size' to allow for its dimensions to be more easily altered, this however ensures that the height and width 
 will always be equal -- the computer can distinguish this variable from the size command as the size command does not use 
 a '=' sign before the rest of the code, commands are also followed by brackets like this 'size( 500,500);' because of this
 you shouldnt use symbols like brackets in variable names*/
 
 
 
