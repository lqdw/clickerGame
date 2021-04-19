void gameover(){
 
 theme.pause();//pause theme music
 gameovers.play();//play gameover music
 
 if(score>highscore){//highscore
   highscore=score;
 }
 
 image(gameover,0,0,800,800);//background 

 textSize(45);
 fill(255);
 text("GAMEOVER",400,380);  
 text("high score: "+highscore,400,430);
 
 rect(600,700,80,40);//exit button
 fill(0);
 textSize(20);
 text("EXIT",640,720); 
}

void gameoverClicks(){
  reset();//reset game
  theme.rewind();
  mode=INTRO;
  if(mouseX>600 && mouseY>700 && mouseX<680 && mouseY<740){
    exit();//exit game
  }
}
