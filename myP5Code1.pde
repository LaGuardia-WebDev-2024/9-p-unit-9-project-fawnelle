setup = function() {
    size(600, 400);
};

//Background Images
var startImage = loadImage("https://31.media.tumblr.com/tumblr_mav7lvZYCu1r451jro1_400.gif");

var bakeryImage = loadImage("1D839D04-CDE7-4505-A04D-5D62886862AB.jpeg");

var clothingImage = loadImage("4612D23D-28D3-434E-A4CC-ACC75A3A7695 (1).jpeg");

var cangryImage = loadImage("49CE59D8-6CC6-4DE4-8F45-0FA6621CF04B.jpeg");

var bangryImage = loadImage("7EEA07FA-D910-4B44-8574-F86BBA17B9A9.jpeg");

var parkImage = loadImage("501324C6-EFC0-4672-8F10-3069BE57E041.jpeg");

//Variable Declarations
var sceneImage = startImage;
var sceneText = "where do you want to take her? ૮₍ ´ ꒳ `₎ა🥕 [Press b for bakery and c for clothing store]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'b'){
       sceneImage = bakeryImage;   
       sceneText = "she wants you to buy her cake! decline or accept? [Press a to accept, d to decline]";
     } 
     if(key == 'c'){
      sceneImage = clothingImage;
      sceneText = "bunny wants lots of dresses..buy them for her?  [Press y to accept, x to decline]";
    } 
    if(key == 'y'){
      sceneImage = clothingImage;
      sceneText = "bunny is happy!૮꒰˶ᵔ ᗜ ᵔ˶꒱ა take her to the park??  [Press p to go!]";
    } 
    if(key == 'x'){
      sceneImage = cangryImage;
      sceneText = "bunny is mad..u r evil. ໒꒰˵- ˕ -˵꒱১ [Press r to restart!]";
   }
    if(key == 'd'){
      sceneImage = bangryImage;
      sceneText = "bunny is mad AND hungry..u r evil. ໒꒰˵- ˕ -˵꒱১[Press r to restart!]";
   }
   if(key == 'a'){
      sceneImage = bakeryImage;
      sceneText = "bunny is happy! ૮꒰˶ᵔ ᗜ ᵔ˶꒱ა take her to the park?? [Press p to go!]";
   }
   if(key == 'p'){
      sceneImage = parkImage;
      sceneText = "bunny luvs u forevr now.. [Press r to restart]";
   }
   if(key == 'r'){
      sceneImage = startImage;
      sceneText = "where do you want to take her?  [Press b for bakery and c for clothing store]";
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



