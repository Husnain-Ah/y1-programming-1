// Exercise 3. Drawing a face


//this is a comment - draw a face

size(500,500);

fill (0,255,0); // head colour, green
ellipse(105,100, 100,120); //head

fill (255,255,255); // left eye colour, white
ellipse(80,80, 25,25); //left eye
point(80,80);  //left eye centre

fill (255,255,255); // right eye colour, white
ellipse(130,80, 25,25); //right eye
point(130,80);  //right eye centre

line(80,130, 130,130);  //mouth

line(105,80, 105,120);  //nose
