/*
 Name : Dermot Madsen
 Student Number: 20104123
 
 Brief description of program:
 The following code displays a gridded (16x9) random sequence of
 3 shapes and 5 colours with a frame counter.
*/

// The statements in the setup() function
// execute once when the program begins
void setup()
{
  size(1280, 720);
  background(0);  // Set the background to black
  frameRate(2);   // This sets the sequence rate
  stroke(#F2BB13);
  strokeWeight(5);
}

/* 
 The draw() method, in short
 Set the background colour to black
 Counts the number of sequnces by calling the seqCounter() method
 Creates 4 random integer varibales
 Calls the 2 custom methods to create a sequence of random shapes and colours
 along the x-axis and y-axis, randomly, using a For Loop
*/
int end_parameter = 3; //This int variable is the end parameter for num_1 and num_2
void draw() {
  background(0);
  seqCounter();
  int num_1 = int(random(0, end_parameter));
  int num_2 = int(random(0, end_parameter));
  int yCoord = int(random(80, height-80));
  int xCoord = int(random(80, width-80));

  for (int count = 80; count <= height-80; count = count+80) {
    produceRandomShapeAcrossYaxis(xCoord, count++, num_1, num_2);
  }

  for (int row = 80; row <= width-80; row = row+80) {
    produceRandomShapeAcrossXaxis(row++, yCoord, num_1, num_2);

    {
      println(xCoord, yCoord, num_1, num_2); // Println used for debugging purposes
    }
  }
}

// This method checks 3 condtions, each condition producing a coloured line of
// a shape along the x-axis
void produceRandomShapeAcrossXaxis(int xCoord, int yCoord, int num_1, int num_2)
{
  {
    if (num_1 == num_2)
    {
      fill(#D91136);
      ellipse(xCoord, yCoord, 50, 50);
      fill(#932BD9);
      ellipse(xCoord, yCoord, 25, 25);
    }
    if (num_1 < num_2)
    {
      fill(#932BD9);
      rect(xCoord, yCoord, 50, 50);
    }
    if (num_1 > num_2)
    {
      fill(#F28B0C);
      triangle(xCoord, yCoord, xCoord+50, yCoord, xCoord+50, yCoord+50);
    }
    {
    }
  }
}

// This method checks 3 condtions, each condition producing a coloured line of
// a shape along the y-axis
void produceRandomShapeAcrossYaxis(int xCoord, int yCoord, int num_1, int num_2)
{
  {
    if (num_1 == num_2)
    {
      fill(#932BD9);
      ellipse(xCoord, yCoord, 50, 50);
      fill(#29A632);
      ellipse(xCoord, yCoord, 25, 25);
    }
    if (num_1 < num_2)
    {
      fill(#F28B0C);
      rect(xCoord, yCoord, 50, 50);
      fill(#932BD9);
      rect(xCoord, yCoord, 25, 25);
    }
    if (num_1 > num_2)
    {
      fill(#29A632);
      triangle(xCoord, yCoord, xCoord+50, yCoord, xCoord+50, yCoord+50);
    }
    {
    }
  }
}

// This method counts the number of seperate frames produced and
// displays the count
int frameCounter = 0; // set initial frame counter to zero
void seqCounter()
{
  frameCounter++; // add a value of 1 to each count
  dispalyNameAndNumberOnScreen(); // Dispalys student details when seqCounter() method is called
}

// This method allows the user to either freeze the frame in the display window or
// save a screenshot of the display window as a PNG file
void mousePressed() 
{
  {
    if (mouseButton == LEFT)
    {
      noLoop();
      textAlign(CENTER);
      textSize(25);
      fill(255);
      
      text("Frame Stopped at counter number "+frameCounter, width/3, height/3);
      dispalyNameAndNumberOnScreen(); // Dispalys student details when mousePressed() method is called
    }
    if (mouseButton == RIGHT)
    {
      noLoop();
      String filename = "my_random_art_piece_number_counter "+frameCounter+".png";
      saveFrame(filename); // method saves a screenshot of display window to PNG file
      textAlign(BOTTOM);
      textSize(25);
      fill(255);
      text("Frame saved as PNG file!!!", width/3, height-10);
    }
  }
}

// Upon releasing the mouse button this method allows the program to
// restart its loop sequence while reseting the frame counter to zero
void mouseReleased() 
{
  loop(); // loop method called
  frameCounter = 0;
}

// This method displays the student name and number on the display window when called
void dispalyNameAndNumberOnScreen() 
{
  textSize(25);
  fill(255);
  textAlign(LEFT);
  text("Student Name: Dermot Madsen", 10, 20);
  textAlign(BOTTOM);
  text("Student Number: 20104123", 10, height-20);
}
