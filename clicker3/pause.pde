void pause(){
  theme.pause();//pause music
 
  fill(0);//pause button
  circle(100,100,100);  
  rect(300,350,30,200);
  rect(450,350,30,200);
  
  fill(255,80);
  textSize(20);
  text("PAUSED",102,100);  
}

void pauseClicks(){
  if(dist(mouseX, mouseY, 100, 100)<50){
    mode=GAME;
  }
}
