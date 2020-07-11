// Simple Cube Pattern by Rupert Russell inspired by https://www.redbubble.com/i/t-shirt/Simple-Cube-Pattern-3D-Effect-Black-and-White-by-FakeMirror/42993319.1YYVU
// Licensed under Creative Commons Attribution ShareAlikehttps://creativecommons.org/licenses/by-sa/3.0https://creativecommons.org/licenses/GPL/2.0/
// written in processing see https://processing.org/
// Note there is something not exactly correct with the shape of my cubes

PShape top;  // The PShape object
PShape left;  // The PShape object
PShape right;  // The PShape object
int scale = 50;
int count = 0;

float xOffset = scale /4;
float yOffset = scale  ;

int printWidth = 600;
int printHeight = 800;

int numberOfColumns = ( printWidth / scale ) - 1 ;
int numberOfRows = ( printHeight / scale ) - 1;

void setup() {
  
  noLoop();
  background(255);
  size(600, 800);

  top = createShape();
  top.beginShape();
  top.fill(250);
  top.noStroke();
  top.vertex(0, scale/3);
  top.vertex(scale/2, 0);
  top.vertex(scale, scale/3);
  top.vertex(scale /2, (scale/3 * 2) );
  top.vertex(0, scale/3 );
  top.endShape();

  left = createShape();
  left.beginShape();
  left.fill(0);
  left.noStroke();
  left.vertex(0, scale/3);
  left.vertex(scale/2, (scale / 3 * 2));
  left.vertex(scale/2, (scale / 3 * 4));
  left.vertex(0, (scale/3 * 3) );
  left.endShape();

  right = createShape();
  right.beginShape();
  right.fill(190);
  right.noStroke();
  right.vertex(scale /2, (scale / 3 * 2));
  right.vertex(scale, (scale /3));
  right.vertex(scale, (scale / 3 * 3) );
  right.vertex(scale / 2, (scale/3 * 4) );
  right.endShape();

}

void draw() {
  translate(xOffset * 3, yOffset /8 );

  for (int rowNumber = 0; rowNumber < numberOfRows; rowNumber++) {

    for (int columnNumber = 0; columnNumber < numberOfColumns; columnNumber++) {
      if(count % 2 == 0){
      shape(top, scale * columnNumber + xOffset, yOffset * count);
      shape(left, scale * columnNumber + xOffset, yOffset * count);
      shape(right, scale * columnNumber + xOffset, yOffset * count);
        
      }
      else{
      println("false"); 
      shape(top, scale * columnNumber - xOffset, yOffset * count);
      shape(left, scale * columnNumber - xOffset, yOffset * count);
      shape(right, scale * columnNumber - xOffset, yOffset * count);
      }

    }

    count = count + 1;
  }


  save("600x800.png");
 //  exit();
}
