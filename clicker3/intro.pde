void intro(){
 theme.play();//theme music
 background(41,105,195);
 image(pokeball,305,420,180,180); 

 if (title<270){//move logo
   title=title+5;
 }
 if (title2<360){//move title
   title2=title2+5;
 }
 
 fill(239,199,0);
 textFont(pokemon);//font of logo
 text("PokéMon",400,title);
 textFont(pokemon2); 
 textSize(30);
 text("- A Clicker Game -",400,title2);
 
 textSize(25);//details
 tactileDetails(40,700,120,40);
 rect(40,700,120,40);//details button
 fill(41,105,195);
 text("DETAILS",100,720);
 
 textSize(30);//start
 fill(255);
 text("START",395,462);
 textSize(25); //options
 fill(253,23,20);
 text("OPTIONS",396,555);
  
 stroke(255,0);
 
 tactileStart(345,477,100,1);//line under start
 rect(345,477,100,1); 
 
 tactileOptions(345,555,100,1);//line under options
 rect(345,568,100,1);  
}

void tactileDetails(int x, int y, int w, int l){//if mouse is on details
  if (mouseX>40 && mouseX<160 && mouseY>700 && mouseY<740){ 
    fill(253,23,20);
    stroke(253,23,20);
  }else{//if mouse is not on details
    fill(239,199,0);
    stroke(239,199,0);

  }
}

void tactileStart(int x, int y, int w, int l){//if mouse is on start
  if (mouseX>305 && mouseX<485 && mouseY>420 && mouseY<510){
    stroke(255);
    fill(255);
  }else{//if mouse is not on start
    stroke(255,0);
    fill(255,0);
  }
} 

void tactileOptions(int x, int y, int w, int l){//if mouse is on options
  if (mouseX>305 && mouseX<485 && mouseY>510 && mouseY<600){    
    stroke(253,23,20);
    fill(253,23,20);
  }else{//if mouse is not on options
    stroke(255,0);
    fill(255,0);
  }
}

void introClicks(){
  if (mouseX>305 && mouseX<485 && mouseY>420 && mouseY<510){
    mode=GAME;
  }else if (mouseX>305 && mouseX<485 && mouseY>510 && mouseY<600){
    mode=OPTIONS;
  }else if(mouseX>40 && mouseX<160 && mouseY>700 && mouseY<740){ 
    mode=DETAILS;
  }
}
