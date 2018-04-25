class Player extends Entity
{
  PImage PlayerSprite;
  PImage PlayerLeftSprite;
  PImage PlayerRightSprite;
  PImage PlayerBackSprite;

  Player()
  {
    PlayerSprite = loadImage("DR_Mike_Large.gif"); 
    PlayerLeftSprite = loadImage("Mike_WalkLeft.gif");
    PlayerRightSprite = loadImage("Mike_WalkRight.gif");
    PlayerBackSprite = loadImage("Mike_BackSprite.gif");
  }
  void Render()
  {
    if (left == false&& right==false&& up==false && down==false)
    {
      image(PlayerSprite, pos.x, pos.y);
    }
    if (left == true)
    {
      image(PlayerLeftSprite, pos.x, pos.y);
    }
    if (right == true)
    {
      image(PlayerRightSprite, pos.x, pos.y);
    }
    if (up == true)
    {
      image(PlayerBackSprite, pos.x, pos.y);
    }
    if (down == true)
    {
      image(PlayerSprite, pos.x, pos.y);
    }
  }
}