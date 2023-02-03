// Exercise 3. Drawing a face -- exercise 4 moving froggy face


//this is a comment - draw a face
float x = 100;
float y = 100;
size(500,500);

fill (0,255,0); // head colour, green
ellipse(x+5,y, 100,120); //head

fill (255,255,255); // left eye colour, white
ellipse(x-20,y-20, 25,25); //left eye
point(x-20,y-20);  //left eye centre

fill (255,255,255); // right eye colour, white
ellipse(x+30,y-20, 25,25); //right eye
point(x+30,y-20);  //right eye centre

line(x-20,y+30,x+30,y+30);  //mouth

line(x+5,y-20,x+5,y+20);  //nose
