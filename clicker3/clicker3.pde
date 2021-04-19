import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//MODE VARIABLES
int mode;//what screen are we in

final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
final int OPTIONS=4;
final int DETAILS=5;

PFont pokemon;//fonts
PFont pokemon2;

PImage pokeball;//pictures
PImage optionsBackground;
PImage pikachu;
PImage psyduck;
PImage bulbasaur;
PImage ditto;
PImage character;
PImage gameover;

float sliderY;
float size;

//TARGET VARIABLES
float x,y,d;
float vx,vy;//target velocity
int score;
int lives;
int title;//moving title
int title2;
int highscore;

Minim minim;//sounds
AudioPlayer theme, coin, bump, gameovers;

void setup(){
  size(800,800);//screen size
  mode=INTRO;//startin mode
  textAlign(CENTER,CENTER);

  //target initianlization
  x=width/2;
  y=height/2;
  vx=random(-5,5);
  vy=random(-5,5);
  score=0;
  lives=3;
  highscore=score;
  
  title=-110;//move the title logo
  title2=-20;
    
  sliderY=105;//slider y
  size=map(sliderY,700,100,0,5);//size of character
  
  //minim
  minim=new Minim(this);
  theme=minim.loadFile("theme.mp3");
  coin=minim.loadFile("coin.wav");
  bump=minim.loadFile("bump.wav");
  gameovers=minim.loadFile("gameovers.wav");
  
  pokemon=createFont("pokemon.ttf",100);//font
  pokemon2=createFont("pokemon2.otf",100);
  
  pokeball=loadImage("pokeball.png");//pokeball start image
  optionsBackground=loadImage("background.png");
  bulbasaur=loadImage("bulbasaur.png");
  ditto=loadImage("ditto.png");
  pikachu=loadImage("pikachu.png");
  psyduck=loadImage("psyduck.png");
  character=loadImage("character.png");
  gameover=loadImage("gameover.jpg");
}

void draw(){
  if(mode==INTRO){
    intro();
  }else if(mode==GAME){
    game();
  }else if(mode==PAUSE){
    pause();
  }else if(mode==GAMEOVER){
    gameover();
  }else if(mode==OPTIONS){
    options();    
  }else if(mode==DETAILS){
    details();
  }else{
  println("Error: Mode="+mode);
  }
}
