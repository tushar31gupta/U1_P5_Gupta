Paddle Left;
Paddle Right;
// Variables 

int  radius = 20;
float xpos, ypos;
float xspeed = 5;
float yspeed = 5;
int xdirection = 2; 
int ydirection = 1;
int scoreleft = 0;
int scoreright = 0;
import ddf.minim.*;
Minim minim;
AudioPlayer song;
AudioInput input;
PImage ball;

void setup()
{
  minim = new Minim(this);
  song = minim.loadFile ("Best of No Copyright Sounds  February 2015 - Gaming Mix  NCS PixelMusic.mp3");
  song.play();
  ball = loadImage ("Ballr.png");
  rectMode(CENTER);
  size(800, 800);
  Left = new Paddle();
  Right = new Paddle();
  ellipseMode(RADIUS);
  xpos = width/2;
  ypos = height/2;
}
void draw()
{
  background (45,88,121);
  noStroke();
  // Images
  image (ball,xpos,ypos,radius*2,radius*2);
  //Ball and Paddle Functions

  Left.Render();
  Left.Move();
  Left.Collisions();
  rect(width-10, ypos, 20, 80);
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  textSize(20);
  text("Computer Score : " + scoreleft, 500, 100);
  text("Player Score : " + scoreright, 100, 100);

  if (ypos > height-radius || ypos < radius) {
    ydirection *= -1;
  }
  if (xpos > width-radius || xpos < radius) {
    xdirection *= -1;
  }
  if (xpos <= 20)
  {
    scoreright--;
    xdirection *= -1;
  }
}  