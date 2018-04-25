class Enemy extends Entity
{
  PImage VirusSprite;
  
  Enemy()
  {
    pos = new PVector(400,300);
    VirusSprite = loadImage("Virus_Basic.gif");
  }
  void Render()
  {
    image(VirusSprite, pos.x, pos.y);
  }
}