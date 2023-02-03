// Exercise 3. Drawing a face -- exercise 4 moving froggy face -- exercise 5 scaling the face


//this is a comment - draw a face
float x = 200;
float y = 200;
float size = 86; // this changes the scaling of the face

size(500,500);

fill (0,255,0); // head colour, green
ellipse(x+5,y, size,size*1.2); //head

fill (255,255,255); // left eye colour, white
ellipse(x-(size/5),y-(size/5), size/4,size/4); //left eye
point(x-(size/5),y-(size/5));  //left eye centre

fill (255,255,255); // right eye colour, white
ellipse(x+(size*0.3),y-(size/5), size/4,size/4); //right eye
point(x+(size*0.3),y-(size/5));  //right eye centre

line(x-(size/5),y+(size*0.3),x+(size*0.3),y+(size*0.3));  //mouth

line(x+(size/20),y-(size/5),x+(size/20),y+(size/5));  //nose

/* i changed the values of the length of lines and the height / width of the elipses to a calculation that involves the
variable 'size, i did this to ensure that they all are accurately scaled when the size variable is altered */
