import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.* ;
import org.jbox2d.dynamics.* ;

int pantalla;


Box2DProcessing mundo;
//Caja una;
Limite suelo;
Limite pared;
Limite pared2;
Paleta p;
Suelo s;
float contador;
ArrayList<Particle> particles;
PImage inicio;
PImage instrucciones;
PImage juego;
PImage balon;
PImage final1;

void setup(){
  size(400,400);
  mundo = new Box2DProcessing(this);
  mundo.createWorld();
  ////
  particles = new ArrayList<Particle>();
  suelo = new Limite(340,130,50,10);
  pared = new Limite(375,70,10,120);
  pared2 = new Limite(295,100,10,60);
  p= new Paleta(100,300,60,10);
  s = new Suelo(200,330,400,10);
  //
  balon = loadImage("balon.png");
  inicio = loadImage("inicio.jpg");
  instrucciones = loadImage("instrucciones.jpg");
  juego = loadImage("juego.jpg");
  final1 = loadImage("final1.jpg");
  
  
 
  
}
void draw(){
  background(255);
  mundo.step();
  
  
  switch(pantalla){
    case 0:
    pant1();
    break;
    case 1:
    pant2();
    break;
    case 2:
    pant3();
    break;
    case 3:
    pant4();
    break;
    case 4:
    pant5();
    break;
    
  }
}

void mousePressed(){
particles.add(new Particle(mouseX, 20, 20));
  
}

void keyPressed(){
  if(key == 'v'){
    pantalla=0;
  }
}
