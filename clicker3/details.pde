void details(){
  background(239,199,44);
  fill(0);
  textSize(20);
  text("Made by: Linda Wang",380,300);
  text("Class 1-4",380,400);
  textSize(30);
  text("THANK YOU FOR PLAYING!",380,500);
  
  textSize(25);//back button (back to intro)
  tactileBack(40,700,120,40);
  rect(40,700,120,40);
  fill(239,199,44);
  text("BACK",100,720);  
}

void tactileBack(int x, int y, int w, int l){//if mouse is on back
  if (mouseX>40 && mouseX<160 && mouseY>700 && mouseY<740){ 
    fill(253,23,20);
    stroke(253,23,20);
  }else{//if mouse is not on back
    fill(255);
    stroke(255);

  }
}

void detailsClicks(){
  if(mouseX>40 && mouseX<160 && mouseY>700 && mouseY<740){ 
    mode=INTRO;
  }  
}
