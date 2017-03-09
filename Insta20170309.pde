ArrayList<Particle> particles;
PVector _target;

void setup()
{
  size(512, 512, P3D);
  frameRate(30);
  blendMode(ADD);
  colorMode(HSB);
  hint(DISABLE_DEPTH_TEST);
  
  particles = new ArrayList<Particle>();
  for(int i = 0; i < 256; i++)
  {
    particles.add(new Particle());
  }
  
}

void draw()
{
  background(0);
  translate(width / 2, height / 2, 0);
  
  if(mousePressed)
  {
    _target = new PVector(mouseX - width / 2, mouseY - height / 2, 0);
  }else
  {
      _target = new PVector(0, 0, 0);
  }
  
  for(Particle particle : particles)
  {
    particle.update();
    particle.display();
  }
  
  /*
  println(frameCount);
  saveFrame("screen-#####.png");
  if(frameCount > 900)
  {
     exit();
  }
  */
}