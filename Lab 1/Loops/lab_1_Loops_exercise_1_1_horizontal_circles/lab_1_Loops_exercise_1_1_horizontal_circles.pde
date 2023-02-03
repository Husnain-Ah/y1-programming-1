// exercise 1.1 horizonal circles

int x=10;
int y=20;

size(500,500); //set size of canvas screen
for(int i=0;i<10;i=i+1)
{
  x=x+10;
  print(" i:"+i+",x:"+x); //display variable value in console window
  ellipse(x,y,5,5);
}
