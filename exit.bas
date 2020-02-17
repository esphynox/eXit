1 HOME:HGR:D$=CHR$(4):PRINT D$;"BLOAD SPLASH.BIN"
20 HTAB 12:VTAB 21:PRINT "PRESS ANY KEY TO START":GET X$;
30 HOME:HGR:D$=CHR$(4):PRINT D$;"BLOAD 1-1.HGR"

40 VTAB 21:PRINT "You're trapped in a dungeon with your friend. You see a barrel. What do you do?":INPUT A$;
50 IF A$ = "Move barrel" THEN GOTO 150
60 IF A$ = "Sit down next to my friend" THEN GOTO 500
70 PRINT "You can't do that here":GOTO 30

150 VTAB 21:PRINT "The barrel moves aside and you find a secret tunnel. What do you do?":INPUT A$;
160 IF A$ = "Enter tunnel" THEN GOTO 150
170 PRINT "You can't do that here":GOTO 150

200 VTAB 21:PRINT "You start to escape but your friend is too weak to go with you. They hand you a note. What do you do?":INPUT A$;
210 IF A$ = "Read note" THEN GOTO 250
220 PRINT "You can't do that here":GOTO 200

250 VTAB 21:PRINT "It is too dark to read the note. What do you do?":INPUT A$;
260 IF A$ = "Leave" THEN GOTO 300
270 PRINT "You can't do that here":GOTO 250

300 VTAB 21:PRINT "You crawl through the tunnel and the tunnel leads to a beach. What do you do?":INPUT A$;
310 IF A$ = "Look" THEN GOTO 350
320 PRINT "You can't do that here":GOTO 300

350 VTAB 21:PRINT "In the water you see a boat. What do you do?":INPUT A$;
360 IF A$ = "Get on the boat" THEN GOTO 400
370 PRINT "You can't do that here":GOTO 350

400 VTAB 21:PRINT "Congratulations, you're heading to a new world! Do you want to play again?":INPUT A$;
410 IF A$ = "Yes" THEN GOTO 40
420 IF A$ = "No" THEN GOTO 400
430 PRINT "You can't do that here":GOTO 350

500 VTAB 21:PRINT "Your friends hands you a note. What do you do?":INPUT A$;
510 IF A$ = "Light a match" THEN GOTO 150
520 PRINT "You can't do that here":GOTO 500

550 VTAB 21:PRINT "The note says, 'Dont leave me here'. Do you leave your friend or stay?":INPUT A$;