// exercise 1.2 concentric circles

size(500,500); //set size of canvas screen

float size = 100;

for(int i=0;i<10;i=i+1)
{
  ellipse(200,200, size,size);
  size = size - 10;
}
