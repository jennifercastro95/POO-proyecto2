class Particle {

  // We need to keep track of a Body and a radius
  Body body;
  float r;
 color col;
  

  Particle(float x, float y, float r_) {
    r = r_;
    // This function puts the particle in the Box2d world
    makeBody(x, y, r);
    body.setUserData(this);
    col = color(175);
    
  }

  
  // 
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = mundo.getBodyPixelCoord(body);
    
    pushMatrix();
    translate(pos.x, pos.y);
    image(balon,0,0,r*2,r*2);
    popMatrix();
  }

  // Here's our function that adds the particle to the Box2D world
  void makeBody(float x, float y, float r) {
    // Define a body
    BodyDef bd = new BodyDef();
    // Set its position
    bd.position = mundo.coordPixelsToWorld(x, y);
    bd.type = BodyType.DYNAMIC;
    body = mundo.createBody(bd);

    // Make the body's shape a circle
    CircleShape cs = new CircleShape();
    cs.m_radius = mundo.scalarPixelsToWorld(r);

    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
    // Parameters that affect physics
    fd.density = 1;
    fd.friction = 0.01;
    fd.restitution = 0.3;

    // Attach fixture to body
    body.createFixture(fd);

    
  }
}
