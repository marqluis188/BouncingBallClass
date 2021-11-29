//Global variables
Ball b1;
Ball b2;
Ball b3;
//Setup method
public void setup(){
  size(800, 800);
  background(120);
  b1 = new Ball();
  b2 = new Ball();
  b3 = new Ball();
}

//draw method
public void draw(){
  background(120);
  b1.update();
  b1.drawBall();
  b1.checkEdges();
  b2.update();
  b2.drawBall();
  b2.checkEdges();
  b3.update();
  b3.drawBall();
  b3.checkEdges();
}

public class Ball{
//Instace variables
private int x;
private int y;
private int diameter;
private int xD;
private int yD;

//assume size(800,800)
//Constructors
public Ball()
{
x = (int)(Math.random()*800);
y = (int)(Math.random()*800);
diameter = (int)(Math.random()*50 + 10);
xD = 5;
yD = 5;

}

public void drawBall(){
 ellipse(x, y, diameter, diameter);
}

public void update(){
x += xD;
y +=yD;
}
public void checkEdges(){
   if(x > 800 || x < 0)
     xD = -1 * xD;
   if(y > 800 || y < 0)
     yD = -1 * yD;
     
  
}




}
