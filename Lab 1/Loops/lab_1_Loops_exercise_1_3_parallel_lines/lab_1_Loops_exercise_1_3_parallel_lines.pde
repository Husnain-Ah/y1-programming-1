// exercise 1.3 parallel lines

size(500,500); //set size of canvas screen

float size = 200;

for(int i = 0; i < 4; i = i+1)
{
  line(size,250, size,200);
  size = size + 20;
}
