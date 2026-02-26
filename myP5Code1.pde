setup = function() {
    size(600, 400);
};

//Background Images
var startImage = loadImage("https://static1.squarespace.com/static/59171732db29d6960a15348e/592091cb890b277866d108fc/592091d5890b277866d1192d/1495306709152/7ficN.gif");

var bakeryImage = loadImage("https://t3.ftcdn.net/jpg/02/50/39/72/360_F_250397206_HuBj2V5oEytcqonzpzum4IjEjtAsZq3g.jpg");

//Variable Declarations
var sceneImage = startImage;
var sceneText = "where do you want to take her?  [Press b for bakery and c for clothing store]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'b'){
       sceneImage = bakeryImage;   
       sceneText = "she wants you to buy her cake! decline or accept? [Press a to accept, b to decline]";
     } 
     if(key == 'c'){
      sceneImage = Image;
      sceneText = "Where do you want to go?  [Press f for forest and c for cave]";
    } 
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(15);
   
    text(sceneText, 10, 375);
};



