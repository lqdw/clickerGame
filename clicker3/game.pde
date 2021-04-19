
void game(){
 theme.play();//play theme music
 
 image(optionsBackground,0,0,800,800);//background
 rect(x,y,size,size,100);
 image(character,x,y,sliderY/2,sliderY/2);
  
 //pause button
 fill(0);
 circle(100,100,100);
 fill(255);
 textSize(20);
 text("PAUSE",102,100);  
 
  
 textSize(45);
 text("Score: "+score,width/2,50);
 text("Lives: "+lives,width/2,100);
 
 strokeWeight(5);//circle under target
 fill(255,80);
 stroke(255,100);  
 
  //moving
  x=x+vx;
  y=y+vy;
  
  //bouncing
  if (x<size/10 || x>width-size){
    vx=vx*-1;
  }
  if (y<size/15 || y>height-size){
    vy=vy*-1;
  }  
  
}

void gameClicks(){
  if (dist(mouseX, mouseY, x, y)<size){
    score=score+1; //score
    vx = vx * 1.1; //increases spead of the target 
    vy = vy * 1.1;    
    coin.rewind();//coin sound
    coin.play();
  }else if(dist(mouseX,mouseY,100, 100)<50){//pause
    mode=PAUSE;
  }else{
    lives=lives-1;//lives
    bump.rewind();//missing sound
    bump.play();
    if (lives==0){
      mode=GAMEOVER;//gameover
      gameovers.rewind();
    }
  }
}
