int len = 400;
public void setup()
{
size(500, 500);
}
public void draw()
{
sierpinski(250, 250, len);
}
public void mouseClicked()//optional
{
len -= 1;
}
public void sierpinski(int x, int y, int len) 
{
if(len <= 400){
  triangle(x-len/2, y+len/2, x, y-len/2, x+len/2, y+len/2);
} else {
  sierpinski(x-len/4, y+len/4, len/2);
  sierpinski(x, y-len/4, len/2);
  sierpinski(x+len/4, y+len/4, len/2);
}
}
