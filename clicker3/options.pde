void options(){
 background(0);
 image(optionsBackground,0,0,800,800);//background
 strokeWeight(5);
 
 size=sliderY/2;

 textFont(pokemon2); //font
 textSize(25);
 fill(0);
 stroke(0);
 rect(10,50,229,40);//target preview
 triangle(244, 53, 260, 70, 244, 87);   
 rect(10,380,229,40);//pick a target
 triangle(244, 383, 260, 400, 244, 417); 
 rect(680,313,40,15);//larger
 rect(680,73,40,15);//smaller
 
 image(pokeball,180,155,150,150);//slider image
 
 fill(255);
 text("- pick a character -->",130,400);
 text("- character preview -",130,68); 
 
 text("back to",255,190);//back to inteo button
 fill(253,23,20);
 text("INTRO",255,270); 
 
 textSize(15);
 fill(255);
 text("larger",700,320);//labels of slider
 textSize(14);
 text("smaller",700,80); 
 
 fill(255,80);//target
 stroke(255,100);
 rect(500,150,size,size,100);
 image(character,500,150,sliderY/2,sliderY/2);
 
 tactile(100,570,160);//pikachu
 fill(255,0);
 circle(100,570,160);
 image(pikachu,30,430,180,250);
 
 tactile(320,630,160); //bulbasaur
 circle(320,630,160); 
 image(bulbasaur,220,520,200,210);
 
 tactile(522,570,170); //psyduck
 circle(522,570,170); 
 image(psyduck,430,460,200,210);
 
 tactile(698,640,170);  //ditto
 circle(698,640,170);  
 image(ditto,580,500,250,260);
 
 tactileSlider(600,10,260,150);//pokeball
 strokeWeight(3);  
 line(700,100,700,300);
 image(pokeball,680,sliderY,40,40);
}

void tactile(int x, int y, int r){
  if(dist(x,y, mouseX, mouseY) <r/2){
    stroke(255);
    strokeWeight(8);
  }else{
    stroke(255,0);
  }  
}

void tactileSlider(int x, int y, int x2, int y2){//if mouse is on slider, change slider color
  if(mouseX>680 && mouseY>105 && mouseX<720 && mouseY<295){
    stroke(255);
  }else{
    stroke(0);
  }  
}

void mousePressed(){
  if(mode==OPTIONS){//if mode is options
    if(dist(100,570,mouseX,mouseY)<80){
      character=pikachu; 
    }else if(dist(320,630,mouseX,mouseY)<80){
      character=bulbasaur;
    }else if(dist(522,570,mouseX,mouseY)<85){
      character=psyduck;
    }else if(dist(698,640,mouseX,mouseY)<85){
      character=ditto;
    }  
  }
  controlSlider();
} 

void mouseDragged(){
 controlSlider();
}

void controlSlider(){
  if (mode==OPTIONS){
    if(mouseY>105 && mouseY<255 && mouseX>680 && mouseX<720){
      sliderY=mouseY;
    }
  }
}

void optionsClicks(){
  if (mouseX>180 && mouseX<330 && mouseY>150 && mouseY<300){
    mode=INTRO;//intro button
  }
}
