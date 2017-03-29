class Paddle
{
  float _x;
  float _y;
  float _height;
  float _width;
  float _Yspeed;


  Paddle()
  {
    _x = 10;
    _y = 200;
    _height = 100; 
    _width = 20;
    _Yspeed = 8;
  }

  Paddle (float x, float y, float height_, float width_, float Yspeed )
  {
    _x = x;
    _y = y;
    _height = height_;
    _width = width_;
    _Yspeed = Yspeed;
  }

  void Render()
  {
    rect(_x, _y, _width, _height);
  }
  void Move()
  {
    _y=mouseY;
  }
  void Collisions()
  {

    if (xpos + radius > 760)
    {
      xdirection *= -1;
      scoreleft ++;
    }
    if (xpos < 40 && ypos > _y && ypos < _y + _height)
    {
      xdirection*= -1;
      scoreright++;
    }
  }
}