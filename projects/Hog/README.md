# Hog Project 
This is a game that roll dices. A player can play against another player or the computer. <br />

# Rules 
<b>WIN condition:</b> One player reach 100 total score 
<br />For each turn, the player can roll at most 10 dices.  The total score that the player gains is the sum of all dices.
<br /><br />
There are some special rules in this game. <br /> <br />
<b>Pig out: </b>If any of the dices is 1, then the player gain 1 score.<br />
<b>Free Bacon: </b>If the player chooses to roll no dice, then the score is k+3 points, where k is the nth digit of pi after the decimal point, and n is the total score of their opponent. As a special case, if the opponent's score is n = 0, then k = 3 (the digit of pi before the decimal point)<br />
<b>Swin Align: </b>After points for the turn are added to the current player's score, if both players have a positive score and the Greatest Common Divisor (GCD) of the current player's score and the opponent's score is at least 10, take another turn. <br />
<b>Pig Pass: </b>After points for the turn are added to the current player's score, if the current player's score is lower than the opponent's score and the difference between them is less than 3, the current player takes another turn.
