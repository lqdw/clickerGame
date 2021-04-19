void reset(){
  //target
  x=width/2;
  y=height/2;
  vx=random(-5,5);
  vy=random(-5,5);
  
  //game initialization
  score=0;
  lives=3;
  sliderY=105;
}
