Entity e;
boolean up = false;
boolean down = false;
boolean left = false;
boolean right = false;
Player MC;
Enemy nme;
PImage bg;


void setup()
{
  size(600, 600);
  imageMode(CENTER);
  bg = loadImage("minecraft-grass-background-3.png");
  e = new Entity();
  MC = new Player();
  nme = new Enemy();
}


void draw()
{
  Move();
  background(bg);
  MC.Render();
  nme.Render();
}

void Move()
{

  if (up == true)
  {
    MC.pos.y-=4;
  }
  if (down == true)
  {
    MC.pos.y +=4;
  }
  if (left == true)
  {
    MC.pos.x -=4;
  }
  if (right == true)
  {
    MC.pos.x +=4;
  }
}

void keyPressed()
{
  if(key =='d')
  {
    right = true;
  }
  if(key =='s')
  {
    down = true;
  }
  if(key =='a')
  {
    left = true;
  }
  if(key =='w')
  {
    up = true;
  }
}

void keyReleased()
{
  if(key =='d')
  {
    right = false;
  }
  if(key =='s')
  {
    down = false;
  }
  if(key =='a')
  {
    left = false;
  }
  if(key =='w')
  {
    up = false;
  }
}