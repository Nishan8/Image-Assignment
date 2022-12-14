int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float backgroundImageX4, backgroundImageY4, backgroundImageWidth5, backgroundImageHeight5;
float topX, topY, topWidth, topHeight;
float bottomX, bottomY, bottomWidth, bottomHeight;
float topX4, topY4, topWidth4, topHeight4;
float bottomX5, bottomY5, bottomWidth5, bottomHeight5;
float picWidthAdjusted1=0.0, picHeightAdjusted1=0.0;
float picWidthAdjusted2=0.0, picHeightAdjusted2=0.0;
float picWidthAdjusted3=0.0, picHeightAdjusted3=0.0;
float picWidthAdjusted4=0.0, picHeightAdjusted4=0.0;
float picWidthAdjusted5=0.0, picHeightAdjusted5=0.0;
PImage pic1, pic2, pic3, pic4, pic5 ;
Boolean nightMode=false;
int tintDayMode=255, tintDayModeOpacity=50, tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85;
//
void setup()
{
  size(1280, 720); //Landscape
  //Copy Display Algorithm from Hello World
  appWidth = width;
  appHeight = height;
  //
  //Population
  pic1 = loadImage("../Images Used/Lamborghini Centenario.jpg");
  pic2 = loadImage("../Images Used/Ferrari SF90.jpg");
  pic3 = loadImage("../Images used/Bugatti Divo.jpg");
  pic4 = loadImage("../Images Used/Ferrari SF90.jpg");
  pic5 = loadImage("../Images used/Bugatti Divo.jpg");
  
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  backgroundImageX4 = appWidth*0;
  backgroundImageY4 = appHeight*0;
  backgroundImageWidth5 = appWidth-1;
  backgroundImageHeight5 = appHeight-1;
  
  //
  topX = appWidth * 1/32;  //Img 2
  topY = appHeight * 1/20;
  topWidth = appWidth * 1/2;
  topHeight = appHeight * 13/20;
  //
  bottomX = appWidth *3/5; //Img 3
  bottomY = appHeight *4/6;
  bottomWidth = appWidth * 1/4;
  bottomHeight = appHeight * 10/20;
  //
  topX4 = appWidth * 0.5/3;  //Img 4
  topY4 = appHeight * 0.5/2 ;
  topWidth4 = appWidth  * 0.4/2 ;
  topHeight4 =appHeight * 0.5/48;
  //
  bottomX5 = appWidth * 3/5; //Img 5
  bottomY5 = appHeight * 4/6; 
  bottomWidth5 = appWidth * 1/4;
  bottomHeight5 = appHeight * 1/4;
  //
  //Image Dimensions for Aspect Ratio: image meta data
  //Note: meta explored in MP3's or music files
  //Note: Dimensions are found in the image file / Right Click / Properties / Details
  int picWidth1 = 2560; //Lamborghini Centenario
  int picHeight1 = 1440;
  int picWidth2 = 1920;//Ferrari SF90
  int picHeight2 = 1080;
  int picWidth3 = 1920; //Bugatti Divo
  int picHeight3 = 800;
  int picWidth4 = 1080; //Ferrari SF90 image 2 
  int picHeight4 = 1920;  
  int picWidth5 = 800;     //Bugatti Divo image 2 
  int picHeight5 = 1920;
//
  //Image Orientation: Landscape, Square, Portrait
  float smallerDimension1, largerDimension1, imageWidthRatio1=0.0, imageHeightRatio1=0.0;
  float smallerDimension2, largerDimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
  float smallerDimension3, largerDimension3, imageWidthRatio3=0.0, imageHeightRatio3=0.0;
  float smallerDimension4, largerDimension4, imageWidthRatio4=0.0, imageHeightRatio4=0.0;
  float smallerDimension5, largerDimension5, imageWidthRatio5=0.0, imageHeightRatio5=0.0;
  if ( picWidth1 >= picHeight1 ) { //True if Landscape or Square
    largerDimension1 = picWidth1;
    smallerDimension1 = picHeight1;
    //
    //Landscape Image larger image to smaller rectangle (or larger)
    picWidthAdjusted1 = backgroundImageWidth; //stretch or reduce
    imageHeightRatio1 = smallerDimension1 / largerDimension1;
    picHeightAdjusted1 = picWidthAdjusted1 * imageHeightRatio1;
    //
    if ( picHeightAdjusted1 > backgroundImageHeight+1 ) { //Error Catch
      println (picHeightAdjusted1, backgroundImageHeight);
      println("STOP: image background height is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  } else { //False if Portrait
    largerDimension1 = picHeight1;
    smallerDimension1 = picWidth1;
    //
    //Students to create
    picHeightAdjusted1 = backgroundImageHeight; //stretch or reduce
    imageWidthRatio1 = smallerDimension1 / largerDimension1;
    picWidthAdjusted1 = picHeightAdjusted1 * imageWidthRatio1;
    if ( picWidthAdjusted1 > backgroundImageWidth ) {
      println("STOP: image background width is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  }
  if ( picWidth2 >= picHeight2 ) { //True if Landscape or Square
    largerDimension2 = picWidth2;
    smallerDimension2 = picHeight2;
    //
    //Landscape Image larger image to smaller rectangle (or larger)
    picWidthAdjusted2 = topWidth; //stretch or reduce
    imageHeightRatio2 = smallerDimension2 / largerDimension2;
    picHeightAdjusted2 = picWidthAdjusted2 * imageHeightRatio2;
    //
    if ( picHeightAdjusted2 > topHeight ) { //Error Catch
      println("STOP: image is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  } else { //False if Portrait
    largerDimension2 = picHeight2;
    smallerDimension2 = picWidth2;
    //
    //Students to create
    picHeightAdjusted2 = topHeight; //stretch or reduce
    imageWidthRatio2 = smallerDimension2 / largerDimension2;
    picWidthAdjusted2 = picHeightAdjusted2 * imageWidthRatio2;
    if ( picWidthAdjusted2 > topWidth ) {
      println("STOP: image is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  }
  if ( picWidth3 >= picHeight3 ) { //True if Landscape or Square
    largerDimension3 = picWidth3;
    smallerDimension3 = picHeight3;
    //
    //Landscape Image larger image to smaller rectangle (or larger)
    picWidthAdjusted3 = bottomWidth; //stretch or reduce
    imageHeightRatio3 = smallerDimension3 / largerDimension3;
    picHeightAdjusted3 = picWidthAdjusted3 * imageHeightRatio3;
    //
    if ( picHeightAdjusted3 > bottomHeight ) { //Error Catch
      println("STOP: image is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  } else { //False if Portrait
    largerDimension3 = picHeight3;
    smallerDimension3 = picWidth3;
    //
    //Students to create
    picHeightAdjusted3 = bottomHeight; //stretch or reduce
    imageWidthRatio3 = smallerDimension3 / largerDimension3;
    picWidthAdjusted3 = picHeightAdjusted3 * imageWidthRatio3;
    if ( picWidthAdjusted3 > bottomWidth ) {
      println("STOP: image is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  }
    if ( picWidth4 >= picHeight4 ) { //True if Landscape or Square
    largerDimension4 = picWidth4;
    smallerDimension4 = picHeight4;
    //
    //Landscape Image larger image to smaller rectangle (or larger)
    picWidthAdjusted4 = backgroundImageWidth; //stretch or reduce
    imageHeightRatio4 = smallerDimension4 / largerDimension4;
    picHeightAdjusted4 = picWidthAdjusted4 * imageHeightRatio4;
    //
    if ( picHeightAdjusted4 > backgroundImageHeight+4 ) { //Error Catch
      println (picHeightAdjusted1, backgroundImageHeight);
      println("STOP: image background height is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  } else { //False if Portrait
    largerDimension4 = picHeight4;
    smallerDimension4 = picWidth4;
    //
    //Students to create
    picHeightAdjusted4 = backgroundImageHeight; //stretch or reduce
    imageWidthRatio4 = smallerDimension4 / largerDimension4;
    picWidthAdjusted4 = picHeightAdjusted4 * imageWidthRatio4;
    if ( picWidthAdjusted1 > backgroundImageWidth ) {
      println("STOP: image background width is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  }
  if ( picWidth5 >= picHeight5 ) { //True if Landscape or Square
    largerDimension5 = picWidth5;
    smallerDimension5 = picHeight5;
    //
    //Landscape Image larger image to smaller rectangle (or larger)
    picWidthAdjusted5 = backgroundImageWidth; //stretch or reduce
    imageHeightRatio5 = smallerDimension5 / largerDimension5;
    picHeightAdjusted5 = picWidthAdjusted5 * imageHeightRatio5;
    //
    if ( picHeightAdjusted5 > backgroundImageHeight+5 ) { //Error Catch
      println (picHeightAdjusted5, backgroundImageHeight);
      println("STOP: image background height is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  } else { //False if Portrait
    largerDimension4 = picHeight5;
    smallerDimension4 = picWidth5;
    //
    //Students to create
    picHeightAdjusted5 = backgroundImageHeight; //stretch or reduce
    imageWidthRatio5 = smallerDimension4 / largerDimension4;
    picWidthAdjusted5 = picHeightAdjusted5 * imageWidthRatio5;
    if ( picWidthAdjusted5 > backgroundImageWidth ) {
      println("STOP: image background width is too big for rectangle layout");
      exit(); //stop further use of the APP
    }
  }
  //
  //
  //Rectangular Layout and Image Drawing to CANVAS
  //rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( topX, topY, topWidth, topHeight );
  rect( bottomX, bottomY, bottomWidth, bottomHeight );
  //
  //Background Image must be single executed code
  if ( nightMode == false ) tint(tintDayMode, tintDayModeOpacity); //Gray Scale, Day use: use 1/2 tint value for white (i.e. 128/256=1/2)
  if ( nightMode == true ) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
  image( pic1, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
}//End setup
//
void draw()
{
  image( pic2, topX, topY, picWidthAdjusted2, picHeightAdjusted2 );
  image( pic3, bottomX, bottomY, picWidthAdjusted3, picHeightAdjusted3 );
  image( pic4, topX4, topY4, picWidthAdjusted4, picHeightAdjusted4 );
  image( pic5, bottomX5, bottomY5, picWidthAdjusted5, picHeightAdjusted5 );
}//End draw
//
void keyPressed() {
  //  
}//End keyPressed
//
void mousePressed() {
  //Mouse Pressed will control background image
  if ( mouseButton == LEFT) {
    nightMode = true;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(64, 64, 40, 85); //RGB: Night Mode
    image( pic1, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
  }
  if ( mouseButton == RIGHT ) {
    nightMode = false;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(255, 50); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
    image(pic1, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
  }
}//End mousePressed
//
//End Main Program
