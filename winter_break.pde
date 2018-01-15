//int Snow = 400;
//int Xs[]=int[7];
//Xs[0]= 10;
//Xs[3]= 70;

int COUNT =1000;
float[]Xs = new float[COUNT];
float[]Ys = new float[COUNT];
float[] speed= new float[COUNT];
PImage paint; 
int x = width/2;
int y = height/2;

void setup()
{
  size(800,800); 
  paint=loadImage("paintball.png");
 
  stroke(33, 231, 255);
  strokeWeight(6);
  
  for (int i=0; i<COUNT; i++)
  {
    Xs[i]= random(0,width);
    Ys[i]= random(0,height);
    speed[i] = random(1, 5);
    i = i+1;
  }
  
  


}

void draw()
{
  background(121,153,245);
  for (int i=0; i<COUNT; i++)
  {
    ellipse(Xs[i], Ys[i], 10, 10);
    Ys[i] = Ys[i]+10;
    fill(255, 255, 255);
    if (Ys[i]>height)
    {
      Ys[i]=random(-500, 0);
    }
    
  }
  image(paint,mouseX,mouseY);
  x= x-10;
  
  fill(249,255,77);
  ellipse(x,y,50,50);
  
  if (x>width)
  {
    x=-1500;
 }
 if (x<-100)
 {
    x=mouseX;
    y=mouseY+170;
}

}
    