# Ants vs Bees

This is a game that is similar to <b><i> Plants vs Zombies </b></i>. The player will need to use their ants to defend the bees. If any of the bees goes to the left end of the screen or the bees kill the Queen Ant, then the bees win. If all bees are killed by ants, then the player win. 
<br/>
To start the game, type the following code in your terminal: python3 ants_gui.py [-h] [-d DIFFICULTY] [-w] [--food FOOD]<br/>
-h: the helper document of the game<br/>
-d: choose the DIFFICULTY as the follows easy/medium/hard/extra-har<br/>
-w: play with water<br/>
--food: choose the default amount of FOOD<br/>

# Place
The colony has two kinds. One is land, and the other is water. Most of the ants can be placed on lands but not water. 

# How to summon an ant
At the beginning of the game, we will have a default amount of food. Each kind of ants requires different amount of foods to summon, and they have different functions. We will introduce them in details later. Each place are limited to have at most one ant(not including the container ant).

# Bees
If a bee are in the same place with an ant, the bee will stop and attack the ant until the ant is killed or the bee dies. The same place can have multiple bees at the same time. Bees come from the beehive which is located at the right end of the screen.

# Ants
Land Ants: These ants will die immediately if they are placed in water.
<b>HarvesterAnt: </b> It takes two foods to summon and it adds one food each second. It cannot attacks.
<b>ThrowerAnt: </b> It takes three foods to summon and it damages a bee that is in the same line of it and in front of it.
<b>ShortThrowerAnt: </b> It takes two foods to summon and it damages a bee that is in the same line of it and at most three blocks in front of it.
<b>LongThrowerAnt: </b> It takes two foods to summon and it damages a bee that is in the same line of it and at least five blocks in front of it.
<b>SlowThrower: </b> It takes four foods to summon and it does no damages, but it slows down the bees it attackes for a while.
<b>ScaryThrower: </b> It takes six foods to summon and it does no damages as well, but it scares the bees it attacks for a while. When the bee is scared, it goes backward. Once a bee was scared, it cannot be scared again.
<b>FireAnt: </b> It takes five foods to summon and it damages all the bees in the same place and deals extra damage to the bees in the same place when it dies.
<b>HungryAnt: </b> It takes four foods to summon and it kills a bee in the same place, but it needs some time to digest before killing another bee.
<b>WallAnt: </b> It takes four foods to summon. It has a large amount of health, but it doesn't have any extra function.
<b>NinjaAnt: </b> It takes five foods to summon. It will not be attacked by bees and not block any bees. It attacks every bees that fly by.
<b>LaserAnt: </b> It takes ten foods to summon. It attacks all bees and ants in front of it, but the damage will reduce when the laser passes through an ant or a bee. The damage also reduces as laser travels.

Water Ants:
<b>ScubaThrower: </b> It takes six foods to summon. It can be placed in water and it attacks like a throwerant.
<b>QueenAnt: </b> It takes seven foods to summon. It is the ultimate ant in the game. There is at most one QueenAnt in the colony. When it dies, the game is over. It can be placed in water. It attacks like a throwerant and it buffes all ants behind it.

Container Ants:
<b>BodyGuard Ants: </b> It takes four foods to summon. It can protest another ant that is not a container ant. 
<b>Tank Ant: </b> It takes six foods to summon. It can protest another ant and deal demages to the bees in the same place.

# Enjoy the game! 
