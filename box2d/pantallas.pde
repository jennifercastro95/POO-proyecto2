class pantalla{
  
  int Edopantalla;
  
   pantalla(int estadopant_){
     
    Edopantalla= estadopant_;
    contador = 0;
  }
}  
  
  void pant1(){
    //inicio
    background(inicio);
      if (keyPressed){
        if((key=='z'|| key=='Z') ){
            pantalla=1;
         }
      }
  }
  
  void pant2(){
    //instrucciones
    background(instrucciones);
    if (keyPressed){
        if((key=='w'|| key=='W') ){
            pantalla=2;
         }
      }
  }
  void pant3(){
    //juego
    background(juego);
    text(contador,20,20);
    if(contador > 5){
      pantalla = 3;
    }
    
    /////
  
  for(Particle p:particles){
    p.display();
  }
  //suelo.display();
  //pared.display();
  //pared2.display();
  p.display();
  p.mover();
  
  
  }
  void pant4(){
    //fin
    background(final1);
    //text("¡FELICIDADES!!",200,200);
    //text("has ganado",210,210);
    
  }
  void pant5(){
    //fin
    background(0);
    text("GAME OVER",200,200);
    
    
  }
  
