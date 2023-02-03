// exercise 6 Drawing a Stick Person of variable size

float x = 100;
float y = 100;
float size = 100; // scaling

size (500,500); // size of screen


line (100,100,100,200); // body

line (100,200,150,250); // right leg

line (100,200,50,250); // left leg

line (50,140,150,140); // arms

ellipse (100,80,40,40); // head
