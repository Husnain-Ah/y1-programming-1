// Exercise2.  Produce a program to draw the images 

size (500,500); // set the size of the screen

//int horizontal_counter = 0;
//int vertical_counter = 0;
int x = 0;
int y = 0;

//for (vertical_counter=0; vertical_counter<=11; vertical_counter = vertical_counter+1) {
//  x = x + 20;
//  y = y + 20;
//  ellipse(x,y,20,20);
//  for (horizontal_counter=1; horizontal_counter<=11; horizontal_counter = horizontal_counter+1) {
//    if (x > 21) {
//      x = x - 40;
//      y = y - 40;
//      ellipse(x,y,20,20);
//      x = x + 40;
//      y = y + 40;
//    }
//  }
//}
  

//ellipse(x,y,20,20);




for (int i=0; i<5; i = i+1)
  {
    ellipse(x,y,20,20);
    line(x-10,y,x+10,y);
    line(x,y-10,x,y+10);
    x = x+20;
  } // first line 
  
  x = 100;
  
  for (int i=0; i<4; i = i+1)
  {
    ellipse(x,y+20,20,20);
    line(x-10,y+20,x+10,y+20);
    line(x,y+10,x,y+30);
    x = x+20;
  } // second line
  
  x = 100;
  
  for (int i=0; i<3; i = i+1)
  {
    ellipse(x,y+40,20,20);
    line(x-10,y+40,x+10,y+40);
    line(x,y+30,x,y+50);
    x = x+20;
  } // third line
  
  x = 100;
  
  for (int i=0; i<2; i = i+1)
  {
    ellipse(x,y+60,20,20);
    line(x-10,y+60,x+10,y+60);
    line(x,y+50,x,y+70);
    x = x+20;
  } // fourth line
  
  x = 100;
  
  for (int i=0; i<1; i = i+1)
  {
    ellipse(x,y+80,20,20);
    line(x-10,y+80,x+10,y+80);
    line(x,y+70,x,y+90);
    x = x+20;
  } // fifth line
