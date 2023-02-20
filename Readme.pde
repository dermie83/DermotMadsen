/*
Name : Dermot Madsen
Student Number: 20104123

Brief description of program: 
The following code displays a gridded (16x9) random sequence of
3 shapes and 5 colours with a frame counter. 

Adobe Color Palette Used:
=========================
- Link to colour scheme : https://pin.it/1jJdj4G
- color 1: #F2BB13
- color 2: #D91136
- color 3: #932BD9
- color 4: #29A632
- color 5: #F28B0C
- color WHITE: fill(255);
- color BLACK: fill(0);

Instructions:
Run program to generate a random sequence of shapes and colours.
The mouseButton LEFT click, with the Hold Action, will halt the sequence.
The mouseButton RIGHT click will save the current image as PNG file.
Upon releasing the mouse click, the counter is reset to zero and the 
sequence starts again.

Known bugs/problems: 
When a mouse button is pressed to stop/save the sequence
sometimes there is slight latency. This could be due to the logic in the code
or my CPU specs.

Sources/Links:
https://processing.org/examples/redraw.html
https://processing.org/examples/noloop.html
https://processing.org/examples/loop.html
https://processing.org/reference/saveFrame_.html
I focused on the "Structure" examples in particular the 
Loop(), noLoop() and reDraw() methodes etc. 

The draw() method does the following,
1. Set the background to black  
2. Counts the number of sequnces by calling the seqCounter() method
3. Sets 4 random varibales within the specified parameters
4. Calls the 2 custom methods to create a sequence of random shapes and colours 
    along the x-axis and y-axis, randomly, using a For Loop 
*/   
