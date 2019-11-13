BEGIN ~B!SELMA~

APPEND ~B!SELMA~
IF ~Global("B!AidanMetSelma","GLOBAL",1)~ THEN BS1
SAY @0
++ @1 DO ~SetGlobal("B!AidanMetSelma","GLOBAL",2)~ + BS2
++ @2 DO ~SetGlobal("B!AidanMetSelma","GLOBAL",2)~ + BS2
++ @3 DO ~SetGlobal("B!AidanMetSelma","GLOBAL",2)~ + BS4
++ @4 DO ~SetGlobal("B!AidanMetSelma","GLOBAL",2)~ + BS5
END

IF ~~ BS2
SAY @5
++ @6 + BS6
++ @7 + BS7
++ @8 + BS8
++ @9 + BS3
END

IF ~~ BS3
SAY @10
++ @11 DO ~GiveGoldForce(5) ActionOverride("B!SELMA",DestroyItem("MISC07")~ + BS9
++ @12 DO ~GiveGoldForce(5) ActionOverride("B!SELMA",DestroyItem("MISC07")~ + BS10
++ @13 + BS11
END

IF ~~ BS4
SAY @14
IF ~~ THEN + BS2
END

IF ~~ BS5
SAY @15
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ BS6
SAY @16
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ BS7
SAY @17
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ BS8
SAY @18
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ BS9
SAY @19
IF ~~ THEN DO ~SetGlobal("B!TrickedSelma","GLOBAL",1) EscapeArea()~  EXIT
END

IF ~~ BS10
SAY @20
IF ~~ THEN DO ~SetGlobal("B!RobbedSelma","GLOBAL",1) ReputationInc(-1) EscapeArea()~ EXIT
END

IF ~~ BS11
SAY @21
IF ~~ THEN DO ~EscapeArea()~ EXIT
END
END