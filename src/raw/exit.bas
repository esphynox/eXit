30 HOME:HGR:D$=CHR$(4):PRINT D$;"BLOAD img1.HGR"
40 VTAB 21:PRINT "You're trapped in a dungeon with your friend. You see a barrel. What do you do?":INPUT "> ";A$
50 IF A$ = "Move barrel" THEN GOTO 140
60 IF A$ = "Sit down next to my friend" THEN GOTO 490
70 PRINT "" : PRINT "> ";A$;"" : PRINT "You can't do that here"
80 GOSUB 1000
90 GOTO 30

140 HOME:HGR:D$=CHR$(4):PRINT D$;"BLOAD img2.HGR"
150 VTAB 21:PRINT "The barrel moves aside and you find a secret tunnel. What do you do?":INPUT "> ";A$
160 IF A$ = "Enter tunnel" THEN GOTO 190
170 PRINT "" : PRINT "> ";A$;"" : PRINT "You can't do that here"
175 GOSUB 1000
180 GOTO 140

190 HOME:HGR:D$=CHR$(4):PRINT D$;"BLOAD img3.HGR"
200 VTAB 21:PRINT "You start to escape but your friend is too weak to go with you. They hand you a note. What do you do?":INPUT "> ";A$
210 IF A$ = "Read note" THEN GOTO 240
220 PRINT "" : PRINT "> ";A$;"" : PRINT "You can't do that here"
225 GOSUB 1000
230 GOTO 190

240 HOME:HGR:D$=CHR$(4):PRINT D$;"BLOAD img4.HGR"
250 VTAB 21:PRINT "It is too dark to read the note. What do you do?":INPUT "> ";A$
260 IF A$ = "Leave" THEN GOTO 290
270 IF A$ = "Light a match" THEN GOTO 540
280 PRINT "" : PRINT "> ";A$;"" : PRINT "You can't do that here"
285 GOSUB 1000
289 GOTO 240

290 HOME:HGR:D$=CHR$(4):PRINT D$;"BLOAD img5.HGR"
300 VTAB 21:PRINT "You crawl through the tunnel and the tunnel leads to a beach. What do you do?":INPUT "> ";A$
310 IF A$ = "Look" THEN GOTO 340
320 PRINT "" : PRINT "> ";A$;"" : PRINT "You can't do that here"
325 GOSUB 1000
330 GOTO 290

340 HOME:HGR:D$=CHR$(4):PRINT D$;"BLOAD img6.HGR"
350 VTAB 21:PRINT "In the water you see a boat. What do you do?":INPUT "> ";A$
360 IF A$ = "Get on the boat" THEN GOTO 390
370 PRINT "" : PRINT "> ";A$;"" : PRINT "You can't do that here"
375 GOSUB 1000
380 GOTO 340

390 HOME:HGR:D$=CHR$(4):PRINT D$;"BLOAD img7.HGR"
400 VTAB 21:PRINT "Congratulations, you're heading to a new world! Do you want to play again?":INPUT "> ";A$
410 IF A$ = "Yes" THEN GOTO 30
420 IF A$ = "No" THEN GOTO 30
430 PRINT "" : PRINT "> ";A$;"" : PRINT "You can't do that here"
435 GOSUB 1000
440 GOTO 390

490 HOME:HGR:D$=CHR$(4):PRINT D$;"BLOAD img4.HGR"
500 VTAB 21:PRINT "Your friend hands you a note. What do you do?":INPUT "> ";A$
510 IF A$ = "Light a match" THEN GOTO 540
520 PRINT "" : PRINT "> ";A$;"" : PRINT "You can't do that here"
525 GOSUB 1000
530 GOTO 490

540 HOME:HGR:D$=CHR$(4):PRINT D$;"BLOAD img8.HGR"
550 VTAB 21:PRINT "The note says, 'Dont leave me here'. Do you leave your friend or stay?":INPUT "> ";A$
560 IF A$ = "Stay" THEN GOTO 30
570 IF A$ = "Leave" THEN GOTO 30
580 PRINT "" : PRINT "> ";A$;"" : PRINT "You can't do that here"
585 GOSUB 1000
590 GOTO 540

1000 REM Sleep subroutine
1010 POKE 768,169: POKE 770,76
1020 POKE 771,168: POKE 772,252
1025 LET A = 256
1040 IF A < 1 OR A > 256 THEN 30
1050 POKE 769,(A < 256) * A
1060 LET C = (26 + 27 * A + 5 * A ^ 2) / 2
1095 CALL 768: CALL 768: CALL 768: CALL 768: CALL 768: CALL 768: CALL 768: CALL 768: CALL 768: CALL 768: CALL 768: CALL 768: CALL 768: CALL 768:
1100 RETURN