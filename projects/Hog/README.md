# Hog Project 
This is a game that roll dices. A player can play against another player or the computer. <br />

# Rules 
<b>WIN condition:</b> One player reach 100 total score 
<br />The game start from player 0. For each turn, the player can roll at most 10 dices. If any of the dices is 1, then the player gain 1 score. Otherwise, the total score that the player gains is the sum of all dices.
<br /><br />
There are some special rules in this game. <br /> <br />
<b>Pig out: </b>If any of the dices is 1, then the player gain 1 score.<br />
<b>Free Bacon: </b>If the player chooses to roll no dice, then the score is k+3 points, where k is the nth digit of pi after the decimal point, and n is the total score of their opponent. As a special case, if the opponent's score is n = 0, then k = 3 (the digit of pi before the decimal point)<br />
<b>Swin Align: </b>After points for the turn are added to the current player's score, if both players have a positive score and the Greatest Common Divisor (GCD) of the current player's score and the opponent's score is at least 10, take another turn. <br />
<b>Pig Pass: </b>After points for the turn are added to the current player's score, if the current player's score is lower than the opponent's score and the difference between them is less than 3, the current player takes another turn.
<br />
<br />
Before the game starts, we can choose which rules we want to include for the current game except that "Pig Out" cannot be turn off. The default is to turn on Swin Align and Pig Out. <br />
# How to Play
After choosing the rules we want, we can choose a strategy for the computer(by default, the computer will be player 1) if we want to play against the computer. Otherwise, we enter the number of dices we want to roll and click roll.<br />
If we change the strategy or the rules, the game will automatically restart. We can also click the restart button to restart the game immediately.<br /><br />

#HAVE FUN!
