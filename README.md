# Data Dancing
### Team NauTiLus <img src="https://allabouttheatre.org/wp-content/uploads/2018/03/Yellow-Submarine.png" height="25"> 
#### Susan Lin, Kyle Tau, Bill Ni

## Presentation
APCS Final Project #2

Our project is a remake of the famous game Dance Dance Revolution. In our game, there is a menu with optiions to play, read instructions, or read the credits. To play, a user selects a difficulty to which the game presents arrows. The point of the game is to press on the corresponding key (WASD) when your arrow matches up to the stationary arrow on screen. Points will be determined by how close the arrows are when the user presses the button. The game ends when the "song" ends. 

## How Does Our Project Work
Our game has the gameplay, credits, and instructions which are all linked the menu. 
Our Arrow class contains the basic structure and functionality of a game arrow.
The core file utilizes our own implementatioin of queues with the element being type Arrow to produce arrows on screen. 
Each difficulty has a set number of arrows and tempo. A faster tempo would have a higher set number of arrows so that the playing time will end up the same. Once the game has given you a set number of arrows, the game ends.


## Documentation
<a href="https://github.com/bnidevs/NauTiLus/blob/master/docs/devlog.txt">Development Log</a> <br>
<a href="https://github.com/bnidevs/NauTiLus/blob/master/docs/proposal.pdf">Proposal</a> <br>
<a href="https://github.com/bnidevs/NauTiLus/tree/master/docs/plan">Daily Plans</a> <br>

## Launching Instructions
1. ```$ git clone git@github.com:bnidevs/NauTiLus.git```
2. ```$ cd NauTiLus```
3. ```$ processing Driver.pde```
4. Click on one of the menu options (the rest is self-explanatory)

once user begins a song, arrows will appear from the bottom of the screen and go up. user score will be displayed and with every key pressed, the score will update and a word will appear on the screen to notify the user of their performance.
