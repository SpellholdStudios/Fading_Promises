/* B!AidanExists = Aidan has been spawned once */
/* B!AidanPlacement = 0,1 toggles between 0 and 1 as Aidan vaishes during daylight and reappears at night */
/* B!AidanTalk = talk counter */
/* B!AidanTime = talk timer */
/* B!AidanMetSelma = 2 The PC spoke to Selma in the Temple District */
/* B!AidanFriend = 1 Friendship of a sorts, Aidan will keep appearing */
/* B!AidanFriend = 2 Aidan is smitten by the PC */
/* B!AidanFriend = 3 The PC has refused to complete the quest. */
/* B!AidanSunlight = 1 The PC has been told that sunlight will destroy Aidan. */
/* B!AidanDone = 1 Fist of Amaunator has been placed in the arms of the statue */
/* B!AidanBetrayed = 1 The PC has been to the Temple of Amaunator, but has kept the mace */
/* B!NoVisit = 1 PC plans to do the quest, but doesn't want any more visits from Aidan */
/* B!AidanHasMace = 1 The PC has found the mace */
/* B!AidanBodhi = 1 The PC has confronted Bodhi */
/* B!AidanReconsider = 1 The PC has completed Aidan's quest despite having said he wouldn't */
/* B!AidanCheated = 1 The PC has completed Aidan's quest despite having no connection with Aidan */
/* B!AidanThanks = 1 The PC has said he'll complete the quest and has done so */
/* BAidanDiagott = 1 The PC has obtained the mace legitimately, as opposed to consoling it in */
/* B!AidanTemple = 1 The PC has been to the temple after having found the mace */
/* B!TrickedSelma = 1 The PC tricked Selma into accepting a piece of string as a good luck charm */
/* B!RobbedSelma = 1 The PC robbed Selma of her last 5 gold pieces */
/* B!AidanDelayTalk = 1 Spacer to allow special dialogues to play independant of friendship talks */
/* B!AidanComplete = 1 Show over */
/* B!AidanLove = measure of Aidan's affection for the PC */

/* CONTENTS */
/* Greetings */
/* <CHARNAME> has the Fist of Amaunator */
/* <CHARNAME> has destroyed Bodhi */
/* <CHARNAME> has completed Aidan's quest */
/* <CHARNAME> has completed the quest, despite having said otherwise */
/* <CHARNAME> has completed the quest, despite having no prior knowlege of it */
/* <CHARNAME> has left the temple with the mace still in his possession */
/* Talk 1 - Quest overview */
/* Talk 2 - the Fist of Amaunator */
/* Talk 3 - The Fist of Amaunator, again */
/* Talk 4 - Aidan attempts polite conversation */
/* Talk 5 - a singular being */
/* Talk 6 - Aidan's hopes */
/* Talk 7 - philosophy, good, evil, and duty */
/* Talk 8 - friendship */
/* Talk 9 - Aidan's fears */
/* Talk 10 - the nature of love */

BEGIN ~B!AIDAN~

/* Greetings */
CHAIN
IF ~Global("B!AidanTalk","GLOBAL",0)~ THEN ~B!AIDAN~ BA0.0
@0 
DO ~SetGlobal("B!AidanTalk","GLOBAL",1) SetGlobalTimer("B!AidanTime","GLOBAL",ONE_DAY) EraseJournalEntry(@10000)~
END
++ @1 EXTERN ~B!AIDAN~ BA0.1
++ @2 EXTERN ~B!AIDAN~ BA0.1
++ @3 EXTERN ~B!AIDAN~ BA0.2
++ @4 EXTERN ~B!AIDAN~ BA0.1
+ ~Global("B!AidanMetSelma","GLOBAL",2)~ + @5 EXTERN ~B!AIDAN~ BA0.3

CHAIN ~B!AIDAN~ BA0.1
@6
DO ~SetGlobal("B!KnowAidan","LOCALS",1)~
= @7
= @8
END
++ @9 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA0.4
++ @10 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA0.4
++ @11 EXTERN ~B!AIDAN~ BA0.4
++ @12 EXTERN ~B!AIDAN~ BA0.5
+ ~Global("B!AidanMetSelma","GLOBAL",2) Global("B!KnowAidan","LOCALS",0)~ + @13 EXTERN ~B!AIDAN~ BA0.3
++ @14 EXTERN ~B!AIDAN~ BA0.6


CHAIN ~B!AIDAN~ BA0.2
@15
END
++ @16 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA0.4
++ @17 EXTERN ~B!AIDAN~ BA0.6
++ @18 EXTERN ~B!AIDAN~ BA0.5
++ @19 EXTERN ~B!AIDAN~ BA0.7
+ ~Global("B!AidanMetSelma","GLOBAL",2)~ + @20 EXTERN ~B!AIDAN~ BA0.3

CHAIN ~B!AIDAN~ BA0.3
@21
= @22
END
IF ~Global("B!KnowAidan","LOCALS",0)~ EXTERN ~B!AIDAN~ BA0.2
IF ~Global("B!KnowAidan","LOCALS",1)~ EXTERN ~B!AIDAN~ BA0.8

CHAIN ~B!AIDAN~ BA0.4
@23
EXTERN ~B!AIDAN~ BA0.13 

CHAIN ~B!AIDAN~ BA0.5
@24
DO ~AddJournalEntry(@25,QUEST) 
DestroySelf()~
EXIT

CHAIN ~B!AIDAN~ BA0.6
@26
END
++ @27 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA0.9
++ @28 EXTERN ~B!AIDAN~ BA0.10
++ @29 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA0.9
++ @30 EXTERN ~B!AIDAN~ BA0.11
++ @31 EXTERN ~B!AIDAN~ BA0.12

CHAIN ~B!AIDAN~ BA0.7
@32
EXTERN ~B!AIDAN~ BA0.13

CHAIN ~B!AIDAN~ BA0.8
@33
= @34
EXTERN ~B!AIDAN~ BA0.13

CHAIN ~B!AIDAN~ BA0.9
@35
END
++ @36 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA0.14
++ @37 EXTERN ~B!AIDAN~ BA0.14
++ @38 EXTERN ~B!AIDAN~ BA0.15
++ @39 EXTERN ~B!AIDAN~ BA0.11
++ @40 EXTERN ~B!AIDAN~ BA0.11

CHAIN ~B!AIDAN~ BA0.10
@41
DO ~AddJournalEntry(@25,QUEST) 
DestroySelf()~
EXIT

CHAIN ~B!AIDAN~ BA0.11
@42
= @43
DO ~AddJournalEntry(@25,QUEST) 
DestroySelf()~
EXIT

CHAIN ~B!AIDAN~ BA0.12
@44
EXTERN ~B!AIDAN~ BA0.9

CHAIN ~B!AIDAN~ BA0.13
@45
= @46
END
++ @47 EXTERN ~B!AIDAN~ BA0.9
++ @48 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA0.9
++ @49 EXTERN ~B!AIDAN~ BA0.6
++ @50 EXTERN ~B!AIDAN~ BA0.5
++ @51 EXTERN ~B!AIDAN~ BA0.11

CHAIN ~B!AIDAN~ BA0.14
@52
DO ~SetGlobal("B!AidanFriend","GLOBAL",1) 
AddJournalEntry(@53,QUEST) 
DestroySelf()~
EXIT

CHAIN ~B!AIDAN~ BA0.15
@54
DO ~SetGlobal("B!AidanFriend","GLOBAL",1) 
AddJournalEntry(@53,QUEST) 
DestroySelf()~
EXIT

/* <CHARNAME> has the Fist of Amaunator */
CHAIN
IF ~Global("B!AidanHasMace","GLOBAL",2)~ THEN ~B!AIDAN~ BA11.0
@55 
DO ~SetGlobal("B!AidanHasMace","GLOBAL",3) SetGlobal("B!AidanDelayTalk","GLOBAL",0) SetGlobalTimer("B!AidanTime","GLOBAL",ONE_DAY)~
END
++ @56 EXTERN ~B!AIDAN~ BA11.1
++ @57 EXTERN ~B!AIDAN~ BA11.2
++ @58 EXTERN ~B!AIDAN~ BA11.3
+ ~AreaType(DUNGEON)~ + @59 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA11.4
+ ~!AreaType(DUNGEON)~ + @60 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA11.4
++ @61 EXTERN ~B!AIDAN~ BA11.5

APPEND ~B!AIDAN~

IF ~~ BA11.1
SAY @62
+ ~AreaType(DUNGEON)~ + @63 + BA11.4
+ ~!AreaType(DUNGEON)~ + @64 + BA11.4
+ ~Alignment(Player1,MASK_EVIL)~ + @65 + BA11.6
+ ~!Alignment(Player1,MASK_EVIL)~ + @65 + BA11.7
++ @66 + BA11.8
END

IF ~~ BA11.2
SAY @67
IF ~~ THEN + BA11.1
END

IF ~~ BA11.3
SAY @68
IF ~~ THEN + BA11.1
END

IF ~~ BA11.4
SAY @69
++ @70 + BA11.9
++ @71 + BA11.10
++ @72 + BA11.11
END

IF ~~ BA11.5
SAY @73
= @74
IF ~~ THEN DO ~SetGlobal("B!AidanFriend","GLOBAL",3)
AddJournalEntry(@75,QUEST)
DestroySelf()~ EXIT
END

IF ~~ BA11.6
SAY @76
+ ~OR(5) !Alignment(Player2,MASK_EVIL) !Alignment(Player3,MASK_EVIL) !Alignment(Player4,MASK_EVIL) !Alignment(Player5,MASK_EVIL) !Alignment(Player6,MASK_EVIL)~ + @77 + BA11.7
+ ~Alignment(Player2,MASK_EVIL) Alignment(Player3,MASK_EVIL) Alignment(Player4,MASK_EVIL) Alignment(Player5,MASK_EVIL) Alignment(Player6,MASK_EVIL)~ + @77 + BA11.12
++ @78 + BA11.12
++ @79 + BA11.13
++ @80 + BA11.5
END

IF ~~ BA11.7
SAY @81
IF ~~ THEN + BA11.14
END

IF ~~ BA11.8
SAY @82
+ ~Alignment(Player1,MASK_EVIL)~ + @83 + BA11.6
+ ~!Alignment(Player1,MASK_EVIL)~ + @83 + BA11.15
++ @84 + BA11.7
++ @85 + BA11.5
++ @86 + BA11.5
END

IF ~~ BA11.9
SAY @87
++ @88 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA11.16
++ @89 + BA11.17
++ @90 + BA11.11
END

IF ~~ BA11.10
SAY @91
IF ~~ THEN + BA11.18
END

IF ~~ BA11.11
SAY @92
IF ~~ THEN + BA11.14
END

IF ~~ BA11.12
SAY @93
IF ~~ THEN + BA11.18
END

IF ~~ BA11.13
SAY @94
IF ~~ THEN + BA11.5
END

IF ~~ BA11.14
SAY @95
IF ~~ THEN DO ~SetGlobal("B!NoVisit","GLOBAL",1) DestroySelf()~ EXIT
END

IF ~~ BA11.15
SAY @96
IF ~~ THEN + BA11.18
END

IF ~~ BA11.16
SAY @97
IF ~~ THEN + BA11.18
END

IF ~~ BA11.17
SAY @98
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ BA11.18
SAY @99
IF ~~ THEN DO ~DestroySelf()~ EXIT
END
END

/* <CHARNAME> has destroyed Bodhi */
CHAIN
IF ~Global("B!AidanBodhi","GLOBAL",2)~ THEN ~B!AIDAN~ BA12.0
@100 
DO ~SetGlobal("B!AidanBodhi","GLOBAL",3) SetGlobal("B!AidanDelayTalk","GLOBAL",0) SetGlobalTimer("B!AidanTime","GLOBAL",ONE_DAY)~
END
++ @101 EXTERN ~B!AIDAN~ BA12.1
++ @102 EXTERN ~B!AIDAN~ BA12.2
++ @103 EXTERN ~B!AIDAN~ BA12.3
++ @104 EXTERN ~B!AIDAN~ BA12.4
++ @105 EXTERN ~B!AIDAN~ BA12.3

APPEND ~B!AIDAN~

IF ~~ THEN BA12.1
SAY @106
++ @107 + BA12.5
++ @108 + BA12.2
++ @109 + BA12.6
+ ~InParty("Imoen2")~ + @110 + BA12.7
++ @111 + BA12.8
END

IF ~~ THEN BA12.2
SAY @112
++ @113 + BA12.9
++ @114 + BA12.10
++ @115 + BA12.11
END

IF ~~ THEN BA12.3
SAY @116
IF ~~ THEN + BA12.1
END

IF ~~ THEN BA12.4
SAY @117
IF ~~ THEN + BA12.1
END

IF ~~ THEN BA12.5
SAY @118
++ @119 + BA12.12
++ @120 + BA12.13
++ @121 + BA12.14
++ @122 + BA12.15
END

IF ~~ THEN BA12.6
SAY @123
IF ~~ THEN + BA12.8
END

IF ~~ THEN BA12.7
SAY @124
IF ~~ THEN + BA12.8
END

IF ~~ THEN BA12.8
SAY @125
++ @126 + BA12.16
++ @127 + BA12.10
++ @128 + BA12.18
++ @129 + BA12.19
++ @130 + BA12.20
END

IF ~~ THEN BA12.9
SAY @131
IF ~~ THEN + BA12.10
END

IF ~~ THEN BA12.10
SAY @132
= @133
IF ~~ THEN + BA12.17
END

IF ~~ THEN BA12.11
SAY @134
IF ~~ THEN + BA12.10
END

IF ~~ THEN BA12.12
SAY @135
IF ~~ THEN + BA12.8
END

IF ~~ THEN BA12.13
SAY @136
IF ~~ THEN + BA12.12
END

IF ~~ THEN BA12.14
SAY @137
IF ~~ THEN + BA12.8
END

IF ~~ THEN BA12.15
SAY @138
IF ~~ THEN + BA12.8
END

IF ~~ THEN BA12.16
SAY @139
IF ~~ THEN + BA12.17
END

IF ~~ THEN BA12.17
SAY @140
IF ~~ THEN DO ~RevealAreaOnMap("AR1100") 
AddJournalEntry(@141,QUEST) 
DestroySelf()~ EXIT
END

IF ~~ THEN BA12.18
SAY @142
IF ~~ THEN + BA12.17
END

IF ~~ THEN BA12.19
SAY @143
IF ~~ THEN DO ~SetGlobal("B!NoVisit","GLOBAL",1)
AddJournalEntry(@144,QUEST) 
DestroySelf()~ EXIT
END

IF ~~ THEN BA12.20
SAY @145
= @146
IF ~~ THEN DO ~SetGlobal("B!AidanFriend","GLOBAL",3) 
AddJournalEntry(@147,QUEST)
DestroySelf()~ EXIT
END
END
/* <CHARNAME> has completed Aidan's quest */
CHAIN
IF ~Global("B!AidanThanks","GLOBAL",1)~ THEN ~B!AIDAN~ BA13.0
@148 
DO ~SetGlobal("B!AidanThanks","GLOBAL",2) SetGlobal("B!AidanDelayTalk","GLOBAL",0)~
END
++ @149 + BA13.1
++ @150 + BA13.2
++ @151 + BA13.2
++ @152 + BA13.3

APPEND ~B!AIDAN~

IF ~~ BA13.1
SAY @153
IF ~~ THEN + BA13.2
END

IF ~~ BA13.2
SAY @154
= @155
= @156
IF ~Global("B!AidanSunlight","GLOBAL",1)~ THEN + BA13.3
IF ~!Global("B!AidanSunlight","GLOBAL",1)~ THEN + BA13.4
END

IF ~~ BA13.3
SAY @157
IF ~~ THEN + BA13.7
END

IF ~~ BA13.4
SAY @158
IF ~~ THEN + BA13.7
END

//IF ~~ BA13.5
//SAY @159
//IF ~~ THEN DO ~SetGlobal("B!AidanGoodbye","GLOBAL",1)
//ClearAllActions()
//StartCutSceneMode()
//StartCutScene("B!AIDANM")~
//EXIT
//END

IF ~~ BA13.6
SAY @160
IF ~~ THEN DO ~AddexperienceParty(50000)
EraseJournalEntry(@161)
EraseJournalEntry(@162)
EraseJournalEntry(@163)
EraseJournalEntry(@164)
EraseJournalEntry(@165)
EraseJournalEntry(@166)
EraseJournalEntry(@167)
EraseJournalEntry(@168)
EraseJournalEntry(@169)
EraseJournalEntry(@170)
EraseJournalEntry(@171)
EraseJournalEntry(@172)
EraseJournalEntry(@173)
EraseJournalEntry(@174)
EraseJournalEntry(@175)
EraseJournalEntry(@25)
EraseJournalEntry(@53)
EraseJournalEntry(@75)
EraseJournalEntry(@141)
EraseJournalEntry(@144)
EraseJournalEntry(@147)
AddJournalEntry(@176,QUEST_DONE) 
DestroySelf()~ EXIT
END

IF ~~ BA13.7
SAY @177
++ @178 DO ~SetGlobal("B!AidanGoodbye","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("B!AIDANM")~
EXIT
++ @179 + BA13.6
++ @180 + BA13.6
END

IF ~Global("B!AidanGoodbye","GLOBAL",1)~ THEN BEGIN BA13.8
SAY @181
IF ~~ THEN DO ~SetGlobal("B!AidanGoodbye","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("B!AIDANN")~  EXIT
END

IF ~Global("B!AidanGoodbye","GLOBAL",2)~ THEN BEGIN BA13.9
SAY @182 
IF ~~ THEN DO ~SetGlobal("B!AidanGoodbye","GLOBAL",3) 
AddexperienceParty(50000)
EraseJournalEntry(@161)
EraseJournalEntry(@162)
EraseJournalEntry(@163)
EraseJournalEntry(@164)
EraseJournalEntry(@165)
EraseJournalEntry(@166)
EraseJournalEntry(@167)
EraseJournalEntry(@168)
EraseJournalEntry(@169)
EraseJournalEntry(@170)
EraseJournalEntry(@171)
EraseJournalEntry(@172)
EraseJournalEntry(@173)
EraseJournalEntry(@174)
EraseJournalEntry(@175)
EraseJournalEntry(@25)
EraseJournalEntry(@53)
EraseJournalEntry(@75)
EraseJournalEntry(@141)
EraseJournalEntry(@144)
EraseJournalEntry(@147)
AddJournalEntry(@176,QUEST_DONE) 
DestroySelf()~ EXIT
END
END

/* <CHARNAME> has completed the quest, despite having said otherwise */
CHAIN
IF ~Global("B!AidanReconsider","GLOBAL",1)~ THEN ~B!AIDAN~ BA14.0
@183 
DO ~SetGlobal("B!AidanReconsider","GLOBAL",2) SetGlobal("B!AidanDelayTalk","GLOBAL",0)~
END
++ @184 + BA14.1
++ @185 + BA14.2
++ @186 + BA14.3

APPEND ~B!AIDAN~

IF ~~ THEN BA14.1
SAY @187
IF ~~ THEN + BA14.4
END

IF ~~ THEN BA14.2
SAY @188
IF ~~ THEN + BA14.4
END

IF ~~ THEN BA14.3
SAY @189
IF ~~ THEN + BA14.4
END

IF ~~ THEN BA14.4
SAY @190
IF ~~ THEN DO ~SetGlobal("B!AidanComplete","GLOBAL",1)
EraseJournalEntry(@161)
EraseJournalEntry(@162)
EraseJournalEntry(@163)
EraseJournalEntry(@164)
EraseJournalEntry(@165)
EraseJournalEntry(@166)
EraseJournalEntry(@167)
EraseJournalEntry(@168)
EraseJournalEntry(@169)
EraseJournalEntry(@170)
EraseJournalEntry(@171)
EraseJournalEntry(@172)
EraseJournalEntry(@173)
EraseJournalEntry(@174)
EraseJournalEntry(@175)
EraseJournalEntry(@25)
EraseJournalEntry(@53)
EraseJournalEntry(@75)
EraseJournalEntry(@141)
EraseJournalEntry(@144)
EraseJournalEntry(@147)
AddJournalEntry(@191,QUEST_DONE) 
AddexperienceParty(40000)
DestroySelf()~ EXIT
END
END

/* <CHARNAME> has completed the quest, despite having no prior knowlege of it */
CHAIN
IF ~Global("B!AidanCheated","GLOBAL",1)~ THEN ~B!AIDAN~ BA15.0
@192 
DO ~SetGlobal("B!AidanCheated","GLOBAL",2) SetGlobal("B!AidanDelayTalk","GLOBAL",0)~
END
++ @193 EXTERN ~B!AIDAN~ BA15.1
++ @194 EXTERN ~B!AIDAN~ BA15.1
++ @195 EXTERN ~B!AIDAN~ BA15.1
++ @1 EXTERN ~B!AIDAN~ BA15.2

APPEND ~B!AIDAN~

IF ~~ BA15.1
SAY @196
= @197
= @198
= @199
= @200
++ @201 + BA15.3
++ @202 + BA15.4
++ @203 + BA15.5
++ @204 + BA15.3
END

IF ~~ BA15.2
SAY @205
IF ~~ THEN + BA15.1
END

IF ~~ BA15.3
SAY @206
IF ~~ THEN + BA15.6
END

IF ~~ BA15.4
SAY @207
IF ~~ THEN + BA15.6
END

IF ~~ BA15.5
SAY @208
IF ~~ THEN + BA15.3
END

IF ~~ BA15.6
SAY @209
IF ~~ THEN DO ~AddexperienceParty(20000)
EraseJournalEntry(@161)
EraseJournalEntry(@162)
EraseJournalEntry(@163)
EraseJournalEntry(@164)
EraseJournalEntry(@165)
EraseJournalEntry(@166)
EraseJournalEntry(@167)
EraseJournalEntry(@168)
EraseJournalEntry(@169)
EraseJournalEntry(@170)
EraseJournalEntry(@171)
EraseJournalEntry(@172)
EraseJournalEntry(@173)
EraseJournalEntry(@174)
EraseJournalEntry(@175)
EraseJournalEntry(@25)
EraseJournalEntry(@53)
EraseJournalEntry(@75)
EraseJournalEntry(@141)
EraseJournalEntry(@144)
EraseJournalEntry(@147)
AddJournalEntry(@210,QUEST_DONE) 
DestroySelf()~
EXIT
END
END

/* <CHARNAME> has left the temple with the mace still in his possession */
CHAIN  /* Don't forget to allow for the character who has left the complex to rest, but later returned to complete his quest, or the player who said he wouldn't, but completed the quest anyway */
IF ~Global("B!AidanBetrayed","GLOBAL",1)~ THEN ~B!AIDAN~ BA16.0
@211 
DO ~SetGlobal("B!AidanBetrayed","GLOBAL",2) SetGlobal("B!AidanDelayTalk","GLOBAL",0)~
END
++ @212 EXTERN ~B!AIDAN~ BA16.1
++ @213 EXTERN ~B!AIDAN~ BA16.3
++ @214 EXTERN ~B!AIDAN~ BA16.2
++ @215 EXTERN ~B!AIDAN~ BA16.2

APPEND ~B!AIDAN~

IF ~~ BA16.1
SAY @216
IF ~~ THEN DO ~SetGlobal("B!AidanFriend","GLOBAL",3)
EraseJournalEntry(@161)
EraseJournalEntry(@162)
EraseJournalEntry(@163)
EraseJournalEntry(@164)
EraseJournalEntry(@165)
EraseJournalEntry(@166)
EraseJournalEntry(@167)
EraseJournalEntry(@168)
EraseJournalEntry(@169)
EraseJournalEntry(@170)
EraseJournalEntry(@171)
EraseJournalEntry(@172)
EraseJournalEntry(@173)
EraseJournalEntry(@174)
EraseJournalEntry(@175)
EraseJournalEntry(@25)
EraseJournalEntry(@53)
EraseJournalEntry(@75)
EraseJournalEntry(@141)
EraseJournalEntry(@144)
EraseJournalEntry(@147)
AddJournalEntry(@217,QUEST_DONE) 
DestroySelf()~ EXIT
END

IF ~~ BA16.2
SAY @218
IF ~~ THEN DO ~AddJournalEntry(@161,QUEST)
DestroySelf()~ EXIT
END

IF ~~ BA16.3
SAY @219
IF ~~ THEN DO ~AddJournalEntry(@161,QUEST)
DestroySelf()~ EXIT
END
END

/* Talk 1 - Quest overview */
CHAIN
IF ~Global("B!AidanTalk","GLOBAL",2)~ THEN ~B!AIDAN~ BA1.0
@220 
DO ~SetGlobal("B!AidanTalk","GLOBAL",3) SetGlobalTimer("B!AidanTime","GLOBAL",ONE_DAY)~
END
++ @221 EXTERN ~B!AIDAN~ BA1.1
++ @222 EXTERN ~B!AIDAN~ BA1.2
++ @223 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA1.3
++ @224 EXTERN ~B!AIDAN~ BA1.4
++ @225 EXTERN ~B!AIDAN~ BA1.3

CHAIN ~B!AIDAN~ BA1.1
@226
DO ~SetGlobal("B!AidanFriend","GLOBAL",3) 
AddJournalEntry(@162,QUEST)
DestroySelf()~
EXIT

CHAIN ~B!AIDAN~ BA1.2
@227
END
++ @228 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA1.3
++ @229 EXTERN ~B!AIDAN~ BA1.3
++ @230 EXTERN ~B!AIDAN~ BA1.1
++ @231 EXTERN ~B!AIDAN~ BA1.1

CHAIN ~B!AIDAN~ BA1.3
@232
= @233
END
++ @234 EXTERN ~B!AIDAN~ BA1.4
++ @235 EXTERN ~B!AIDAN~ BA1.5
++ @236 EXTERN ~B!AIDAN~ BA1.4
++ @237 EXTERN ~B!AIDAN~ BA1.6
++ @238 EXTERN ~B!AIDAN~ BA1.7

CHAIN ~B!AIDAN~ BA1.4
@239
= @240
= @241
= @242
= @243
= @244
= @245
= @246
= @247
END
++ @248 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA1.8
++ @249 EXTERN ~B!AIDAN~ BA1.9
++ @250 EXTERN ~B!AIDAN~ BA1.10

CHAIN ~B!AIDAN~ BA1.5
@251
= @252
= @253
END
++ @254 EXTERN ~B!AIDAN~ BA1.4
++ @255 EXTERN ~B!AIDAN~ BA1.1
++ @256 EXTERN ~B!AIDAN~ BA1.11

CHAIN ~B!AIDAN~ BA1.6
@257
END
++ @258 EXTERN ~B!AIDAN~ BA1.4
++ @255 EXTERN ~B!AIDAN~ BA1.1
++ @256 EXTERN ~B!AIDAN~ BA1.11

CHAIN ~B!AIDAN~ BA1.7
@259
EXTERN ~B!AIDAN~ BA1.4

CHAIN ~B!AIDAN~ BA1.8
@260
= @261
END
++ @262 EXTERN ~B!AIDAN~ BA1.12
++ @263 EXTERN ~B!AIDAN~ BA1.13
++ @264 EXTERN ~B!AIDAN~ BA1.13
++ @265 EXTERN ~B!AIDAN~ BA1.14
++ @266 EXTERN ~B!AIDAN~ BA1.9

CHAIN ~B!AIDAN~ BA1.9
@267
DO ~SetGlobal("B!AidanFriend","GLOBAL",3) 
AddJournalEntry(@162,QUEST)
DestroySelf()~
EXIT

CHAIN ~B!AIDAN~ BA1.10
@268
DO ~AddJournalEntry(@163,QUEST) 
DestroySelf()~
EXIT

CHAIN ~B!AIDAN~ BA1.11
@269
EXTERN ~B!AIDAN~ BA1.4

CHAIN ~B!AIDAN~ BA1.12
@270
END
+ ~Global("B!FallOfNetheril","LOCALS",0)~ + @271 DO ~SetGlobal("B!FallOfNetheril","LOCALS",1)~ EXTERN ~B!AIDAN~ BA1.15
+ ~Global("B!FearJudgment","LOCALS",0)~ + @272 DO ~SetGlobal("B!FearJudgment","LOCALS",1)~ EXTERN ~B!AIDAN~ BA1.16
+ ~Global("B!RelicLocation","LOCALS",0)~ + @273 DO ~SetGlobal("B!RelicLocation","LOCALS",1)~ EXTERN ~B!AIDAN~ BA1.17
+ ~Global("B!OutsideTime","LOCALS",0)~ + @274 DO ~SetGlobal("B!OutsideTime","LOCALS",1)~ EXTERN ~B!AIDAN~ BA1.18
+ ~Global("B!WhySad","LOCALS",0)~ + @275 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1) SetGlobal("B!WhySad","LOCALS",1)~ EXTERN ~B!AIDAN~ BA1.19
+ ~OR(4) Global("B!FallOfNetheril","LOCALS",1) Global("B!FearJudgment","LOCALS",1) Global("B!RelicLocation","LOCALS",1) Global("B!WhySad","LOCALS",1)~ + @276 EXTERN ~B!AIDAN~ BA1.13

CHAIN ~B!AIDAN~ BA1.13
@277
DO ~AddJournalEntry(@163,QUEST)
DestroySelf()~
EXIT

CHAIN ~B!AIDAN~ BA1.14
@278
EXTERN ~B!AIDAN~ BA1.13

CHAIN ~B!AIDAN~ BA1.15
@279
= @280
= @281
= @282
= @283
EXTERN ~B!AIDAN~ BA1.20

CHAIN ~B!AIDAN~ BA1.16
@284
EXTERN ~B!AIDAN~ BA1.20

CHAIN ~B!AIDAN~ BA1.17
@285
EXTERN ~B!AIDAN~ BA1.20

CHAIN ~B!AIDAN~ BA1.18
@286
EXTERN ~B!AIDAN~ BA1.20

CHAIN ~B!AIDAN~ BA1.19
@287
= @288
EXTERN ~B!AIDAN~ BA1.20

CHAIN ~B!AIDAN~ BA1.20
@289
END
++ @178 EXTERN ~B!AIDAN~ BA1.12
++ @290 EXTERN ~B!AIDAN~ BA1.13

/* Talk 2 - the Fist of Amaunator */
CHAIN
IF ~Global("B!AidanTalk","GLOBAL",4)~ THEN ~B!AIDAN~ BA2.0
@291 
DO ~SetGlobal("B!AidanTalk","GLOBAL",5) SetGlobalTimer("B!AidanTime","GLOBAL",ONE_DAY)~
END
++ @292 EXTERN ~B!AIDAN~ BA2.1
++ @293 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA2.2
++ @294 EXTERN ~B!AIDAN~ BA2.3
++ @295 EXTERN ~B!AIDAN~ BA2.4

APPEND ~B!AIDAN~
IF ~~ BA2.1
SAY @296
IF ~~ THEN + BA2.2
END

IF ~~ BA2.2
SAY @297
++ @298 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA2.5
++ @299 + BA2.5
++ @300 + BA2.5
++ @301 + BA2.4
END

IF ~~ BA2.3
SAY @302
IF ~~ THEN + BA2.2
END

IF ~~ BA2.4
SAY @303
IF ~~ THEN DO ~SetGlobal("B!AidanFriend","GLOBAL",3)
AddJournalEntry(@164,QUEST)
DestroySelf()~ EXIT
END

IF ~~ BA2.5 /* The lich is Alchra Diagott UDTRAP04.cre UDTRAP04.dlg INITRG10.bcs freed via DWFACE04.bcs */
SAY @304
= @305
= @306
= @307
= @308
++ @309 + BA2.4
++ @310 + BA2.6
++ @311 + BA2.7
++ @312 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA2.7
END

IF ~~ BA2.6
SAY @313
++ @314 + BA2.11
++ @315 + BA2.7
++ @316 + BA2.8
++ @317 + BA2.7
++ @318 + BA2.9
++ @319 + BA2.4
++ @320 + BA2.10
END

IF ~~ BA2.7
SAY @321
++ @322 + BA2.12
++ @323 + BA2.13
++ @324 + BA2.13
++ @325 + BA2.14
++ @326 + BA2.13
END

IF ~~ BA2.8
SAY @327
IF ~~ THEN + BA2.11
END

IF ~~ BA2.9
SAY @328
++ @329 + BA2.13
++ @330 + BA2.4
END

IF ~~ BA2.10
SAY @331
++ @332 + BA2.13
++ @333 + BA2.15
++ @334 + BA2.16
END

IF ~~ BA2.11
SAY @335
= @336
++ @337 + BA2.7
++ @338 + BA2.9
++ @339 + BA2.4
END

IF ~~ BA2.12
SAY @340
++ @341 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA2.17
++ @342 + BA2.18
++ @343 + BA2.19
END

IF ~~ BA2.13
SAY @344
IF ~~ THEN DO ~AddJournalEntry(@165,QUEST) 
DestroySelf()~ EXIT
END

IF ~~ BA2.14
SAY @345
IF ~~ THEN + BA2.13
END

IF ~~ BA2.15
SAY @346
IF ~~ THEN + BA2.13
END

IF ~~ BA2.16
SAY @347
= @348
IF ~~ THEN DO ~SetGlobal("B!AidanFriend","GLOBAL",3) 
AddJournalEntry(@166,QUEST) 
DestroySelf()~ EXIT
END

IF ~~ BA2.17
SAY @349
++ @350 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA2.20
++ @351 + BA2.20
++ @352 + BA2.21
++ @353 + BA2.21
++ @354 + BA2.22
END

IF ~~ BA2.18
SAY @355
IF ~~ THEN + BA2.13
END

IF ~~ BA2.19
SAY @356
IF ~~ THEN + BA2.13
END

IF ~~ BA2.20
SAY @357
= @358
= @359
= @360
IF ~~ THEN DO ~SetGlobal("B!AidanSunlight","GLOBAL",1)~ + BA2.13
END

IF ~~ BA2.21
SAY @361
IF ~~ THEN + BA2.13
END

IF ~~ BA2.22
SAY @362
IF ~~ THEN + BA2.13
END
END

/* Talk 3 - The Fist of Amaunator, again */
CHAIN
IF ~Global("B!AidanTalk","GLOBAL",6)~ THEN ~B!AIDAN~ BA3.0
@363 
DO ~SetGlobal("B!AidanTalk","GLOBAL",7) SetGlobalTimer("B!AidanTime","GLOBAL",ONE_DAY)~
END
++ @364 EXTERN ~B!AIDAN~ BA3.1
++ @365 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA3.2
++ @366 EXTERN ~B!AIDAN~ BA3.2
++ @367 EXTERN ~B!AIDAN~ BA3.3
++ @368 EXTERN ~B!AIDAN~ BA3.4
++ @369 EXTERN ~B!AIDAN~ BA3.5

APPEND ~B!AIDAN~

IF ~~ BA3.1
SAY @123
IF ~~ THEN + BA3.2
END

IF ~~ BA3.2
SAY @370
++ @371 + BA3.6
++ @372 + BA3.7
++ @373 + BA3.8
++ @374 + BA3.5
END

IF ~~ BA3.3
SAY @375
++ @376 + BA3.10
++ @377 + BA3.7
++ @378 + BA3.11
++ @379 + BA3.5
END

IF ~~ BA3.4
SAY @380
++ @381 + BA3.9
++ @382 + BA3.12
++ @383 + BA3.12
++ @384 + BA3.5
END

IF ~~ BA3.5
SAY @385
IF ~~ THEN DO ~SetGlobal("B!AidanFriend","GLOBAL",3) 
AddJournalEntry(@167,QUEST) 
DestroySelf()~ EXIT
END

IF ~~ BA3.6
SAY @386
IF ~~ THEN + BA3.7
END

IF ~~ BA3.7
SAY @387
++ @388 + BA3.13
++ @389 + BA3.8
++ @390 + BA3.14
++ @391 + BA3.15
++ @392 + BA3.16
++ @393 + BA3.17
END

IF ~~ BA3.8
SAY @394
++ @388 + BA3.13
++ @390 + BA3.14
++ @391 + BA3.15
++ @392 + BA3.16
++ @393 + BA3.17
END

IF ~~ BA3.9
SAY @395
++ @396 + BA3.7
++ @397 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA3.18
++ @398 + BA3.15
END

IF ~~ BA3.10
SAY @399
IF ~~ THEN + BA3.2
END

IF ~~ BA3.11
SAY @400
++ @401 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA3.19
++ @402 + BA3.20
++ @403 + BA3.21
END

IF ~~ BA3.12
SAY @404
IF ~~ THEN DO ~SetGlobal("B!NoVisit","GLOBAL",1) 
AddJournalEntry(@168,QUEST) 
DestroySelf()~ EXIT
END

IF ~~ BA3.13
SAY @405
IF ~~ THEN + BA3.22
END

IF ~~ BA3.14
SAY @406
IF ~~ THEN + BA3.23
END

IF ~~ BA3.15
SAY @407
IF ~~ THEN + BA3.14
END

IF ~~ BA3.16
SAY @408
IF ~~ THEN + BA3.14
END

IF ~~ BA3.17
SAY @409
IF ~~ THEN + BA3.14
END

IF ~~ BA3.18
SAY @410
= @411
= @412
++ @413 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA3.24
++ @414 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA3.25
++ @415 + BA3.26
END

IF ~~ BA3.19
SAY @416
IF ~~ THEN DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA3.23
END

IF ~~ BA3.20
SAY @417
IF ~~ THEN + BA3.23
END

IF ~~ BA3.21
SAY @418
IF ~~ THEN DO ~AddJournalEntry(@169,QUEST) 
DestroySelf()~ EXIT
END

IF ~~ BA3.22
SAY @419
IF ~~ THEN + BA3.23
END

IF ~~ BA3.23
SAY @420
++ @421 + BA3.18
++ @422 + BA3.26
END

IF ~~ BA3.24
SAY @423
= @424
= @425
= @426
= @427
++ @428 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA3.27
++ @429 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA3.25
++ @430 + BA3.26
++ @431 + BA3.25
END

IF ~~ BA3.25
SAY @432
IF ~~ THEN + BA3.28
END

IF ~~ BA3.26
SAY @433
IF ~~ THEN DO ~AddJournalEntry(@169,QUEST) 
DestroySelf()~ EXIT
END

IF ~~ BA3.27
SAY @434
= @435
IF ~~ THEN + BA3.28
END

IF ~~ BA3.28
SAY @436
IF ~~ THEN DO ~AddJournalEntry(@169,QUEST) 
DestroySelf()~ EXIT
END
END

/* Talk 4 - Aidan attempts polite conversation */
CHAIN
IF ~Global("B!AidanTalk","GLOBAL",8)~ THEN ~B!AIDAN~ BA4.0
@437 
DO ~SetGlobal("B!AidanTalk","GLOBAL",9) SetGlobalTimer("B!AidanTime","GLOBAL",ONE_DAY)~
END
++ @438 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA4.1
++ @439 EXTERN ~B!AIDAN~ BA4.2
++ @440 EXTERN ~B!AIDAN~ BA4.3
++ @441 EXTERN ~B!AIDAN~ BA4.4

APPEND ~B!AIDAN~

IF ~~ BA4.1
SAY @442
IF ~~ THEN + BA4.3
END

IF ~~ BA4.2
SAY @443
IF ~~ THEN + BA4.3
END

IF ~~ BA4.3
SAY @444
++ @445 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA4.5
++ @446 + BA4.6
++ @447 + BA4.7
++ @448 + BA4.8
END

IF ~~ BA4.4
SAY @449
++ @450 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA4.3
++ @451 + BA4.8
++ @452 + BA4.8
END

IF ~~ BA4.5
SAY @453
IF ~~ THEN + BA4.9
END

IF ~~ BA4.6
SAY @454
IF ~~ THEN + BA4.9
END

IF ~~ BA4.7
SAY @455
IF ~~ THEN + BA4.9
END

IF ~~ BA4.8
SAY @456
= @457
IF ~~ THEN DO ~SetGlobal("B!NoVisit","GLOBAL",1) 
AddJournalEntry(@170,QUEST) 
DestroySelf()~ EXIT
END

IF ~~ BA4.9
SAY @458
++ @459 + BA4.10
++ @460 + BA4.11
++ @461 + BA4.12
++ @462 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA4.13
++ @463 + BA4.8
END

IF ~~ BA4.10
SAY @464
++ @465 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA4.14
++ @466 + BA4.15
++ @467 + BA4.16
++ @468 + BA4.17
++ @469 + BA4.17
END

IF ~~ BA4.11
SAY @470
IF ~~ THEN + BA4.29
END

IF ~~ BA4.12
SAY @123
IF ~~ THEN + BA4.29
END

IF ~~ BA4.13
SAY @471
IF ~~ THEN + BA4.29
END

IF ~~ BA4.14
SAY @472
IF ~~ THEN + BA4.29
END

IF ~~ BA4.15
SAY @473
IF ~~ THEN + BA4.29
END

IF ~~ BA4.16
SAY @474
IF ~~ THEN + BA4.29
END

IF ~~ BA4.17
SAY @475
IF ~~ THEN DO ~SetGlobal("B!NoVisit","GLOBAL",1)
AddJournalEntry(@171,QUEST) 
DestroySelf()~ EXIT
END

IF ~~ BA4.18
SAY @476
= @477
++ @478 + BA4.33
++ @479 + BA4.34
++ @480 + BA4.35
END

IF ~~ BA4.19
SAY @481
++ @482 + BA4.36
++ @483 + BA4.37
END

IF ~~ BA4.20
SAY @484
++ @485 + BA4.38
++ @486 + BA4.39
++ @487 + BA4.40
END

IF ~~ BA4.21
SAY @481
++ @482 + BA4.36
++ @488 + BA4.37
END

IF ~~ BA4.22
SAY @489
++ @490 + BA4.41
++ @491 + BA4.42
END

IF ~~ BA4.23
SAY @492
++ @493 + BA4.43
++ @494 + BA4.44
++ @495 + BA4.45
END

IF ~~ BA4.24
SAY @496
++ @497 + BA4.46
++ @64 + BA4.47
++ @498 + BA4.48
END

IF ~~ BA4.25
SAY @499
++ @500 + BA4.49
++ @501 + BA4.50
++ @502 + BA4.51
++ @503 + BA4.52
END

IF ~~ BA4.26
SAY @504
++ @505 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA4.53
++ @506 + BA4.54
++ @507 + BA4.55
++ @508 + BA4.56
END

IF ~~ BA4.27
SAY @509
++ @510 + BA4.56
++ @511 + BA4.57
++ @512 + BA4.58
END

IF ~~ BA4.28
SAY @513
IF ~~ THEN + BA4.32
END

IF ~~ BA4.29
SAY @514
IF ~~ THEN + BA4.30
END

IF ~~ BA4.30
SAY @515
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_5%) Global("B!AidanIrenicus","LOCALS",0)~ + @516 DO ~SetGlobal("B!AidanIrenicus","LOCALS",1)~ + BA4.18
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_4%) Global("B!AidanIrenicus","LOCALS",0)~ + @517 DO ~SetGlobal("B!AidanIrenicus","LOCALS",1)~ + BA4.19
+ ~OR(2)
Global("C#IM_ImoenStays","GLOBAL",0)
Global("C#IM_ImoenStays","GLOBAL",2)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_5%) Global("B!AidanImoen","LOCALS",0)~ + @518 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1) SetGlobal("B!AidanImoen","LOCALS",1)~ + BA4.20
+ ~Global("C#IM_ImoenStays","GLOBAL",1)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_5%) Global("B!AidanImoen","LOCALS",0)~ + @900 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1) SetGlobal("B!AidanImoen","LOCALS",1)~ + BA4.60
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_4%) Global("B!AidanImoen","LOCALS",0)~ + @519 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1) SetGlobal("B!AidanImoen","LOCALS",1)~ + BA4.21
+ ~Global("Chapter","GLOBAL",%bg2_chapter_6%) Global("B!AidanRhynnLanthorn","LOCALS",0)~ + @520 DO ~SetGlobal("B!AidanRhynnLanthorn","LOCALS",1)~ + BA4.22
+ ~Global("B!AidanDarkForces","LOCALS",0)~ + @521 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1) SetGlobal("B!AidanDarkForces","LOCALS",1)~ + BA4.23
+ ~Kit(Player1,GODLATHANDER) Global("B!AidanUndeadLegion","LOCALS",0)~ + @522 DO ~SetGlobal("B!AidanUndeadLegion","LOCALS",1)~ + BA4.24
+ ~Global("B!AidanStayAlive","LOCALS",0)~ + @523 DO ~SetGlobal("B!AidanStayAlive","LOCALS",1)~ + BA4.25
+ ~Global("B!AidanLookingForLove","LOCALS",0)~ + @524 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1) SetGlobal("B!AidanLookingForLove","LOCALS",1)~ + BA4.26
+ ~Global("B!AidanNoGoal","LOCALS",0)~ + @525 DO ~SetGlobal("B!AidanNoGoal","LOCALS",1)~ + BA4.27
++ @526 + BA4.28
+ ~OR(8) Global("B!AidanIrenicus","LOCALS",1) Global("B!AidanImoen","LOCALS",1) Global("B!AidanRhynnLanthorn","LOCALS",1) Global("B!AidanDarkForces","LOCALS",1) Global("B!AidanUndeadLegion","LOCALS",1) Global("B!AidanStayAlive","LOCALS",1) Global("B!AidanLookingForLove","LOCALS",1) Global("B!AidanNoGoal","LOCALS",1)~ + @527 + BA4.31
END

IF ~~ BA4.31
SAY @528
IF ~~ THEN + BA4.32
END

IF ~~ BA4.32
SAY @529
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ BA4.33
SAY @530
IF ~~ THEN + BA4.59
END

IF ~~ BA4.34
SAY @531
IF ~~ THEN + BA4.59
END

IF ~~ BA4.35
SAY @532
IF ~~ THEN + BA4.59
END

IF ~~ BA4.36
SAY @533
IF ~~ THEN + BA4.59
END

IF ~~ BA4.37
SAY @534
= @535
IF ~~ THEN + BA4.59
END

IF ~~ BA4.38
SAY @536
IF ~~ THEN + BA4.59
END

IF ~~ BA4.39
SAY @537
IF ~~ THEN + BA4.38
END

IF ~~ BA4.40
SAY @538
IF ~~ THEN + BA4.59
END

IF ~~ BA4.41
SAY @539
IF ~~ THEN + BA4.59
END

IF ~~ BA4.42
SAY @540
IF ~~ THEN + BA4.41
END

IF ~~ BA4.43
SAY @541
IF ~~ THEN + BA4.59
END

IF ~~ BA4.44
SAY @542
IF ~~ THEN + BA4.43
END

IF ~~ BA4.45
SAY @543
= @544
IF ~~ THEN + BA4.59
END

IF ~~ BA4.46
SAY @545
IF ~~ THEN + BA4.59
END

IF ~~ BA4.47
SAY @546
IF ~~ THEN + BA4.59
END

IF ~~ BA4.48
SAY @547
++ @548 + BA4.17
++ @549 + BA4.59
END

IF ~~ BA4.49
SAY @550
IF ~~ THEN + BA4.59
END

IF ~~ BA4.50
SAY @551
IF ~~ THEN + BA4.59
END

IF ~~ BA4.51
SAY @552
IF ~~ THEN + BA4.59
END

IF ~~ BA4.52
SAY @553
IF ~~ THEN + BA4.59
END

IF ~~ BA4.53
SAY @554
IF ~~ THEN + BA4.59
END

IF ~~ BA4.54
SAY @555
= @556
IF ~~ THEN + BA4.59
END

IF ~~ BA4.55
SAY @557
IF ~~ THEN + BA4.59
END

IF ~~ BA4.56
SAY @558
IF ~~ THEN + BA4.59
END

IF ~~ BA4.57
SAY @559
IF ~~ THEN + BA4.59
END

IF ~~ BA4.58
SAY @560
IF ~~ THEN + BA4.56
END

IF ~~ BA4.59
SAY @561
IF ~~ THEN + BA4.30
END

END

/* Talk 5 - a singular being */
CHAIN
IF ~Global("B!AidanTalk","GLOBAL",10)~ THEN ~B!AIDAN~ BA5.0
@562 
DO ~SetGlobal("B!AidanTalk","GLOBAL",11) SetGlobalTimer("B!AidanTime","GLOBAL",ONE_DAY)~
END
++ @563 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA5.1
++ @564 EXTERN ~B!AIDAN~ BA5.2
++ @565 EXTERN ~B!AIDAN~ BA5.3
++ @566 EXTERN ~B!AIDAN~ BA5.4
++ @567 EXTERN ~B!AIDAN~ BA5.5

APPEND ~B!AIDAN~

IF ~~ BA5.1
SAY @568
++ @569 + BA5.3
++ @460 + BA5.6
++ @570 + BA5.7
++ @571 + BA5.8
++ @572 + BA5.9
END

IF ~~ BA5.2
SAY @573
IF ~~ THEN + BA5.1
END

IF ~~ BA5.3
SAY @574
++ @575 + BA5.10
++ @576 + BA5.11
++ @577 + BA5.12
++ @578 + BA5.13
++ @579 + BA5.14
++ @580 + BA5.15
END

IF ~~ BA5.4
SAY @581
++ @582 + BA5.16
++ @583 + BA5.17
++ @584 + BA5.18
++ @585 + BA5.19
END

IF ~~ BA5.5
SAY @586
= @587
IF ~~ THEN
DO ~AddJournalEntry(@172,QUEST) 
RevealAreaOnMap("AR1100")~ 
+ BA5.1
END

IF ~~ BA5.6
SAY @588
IF ~~ THEN + BA5.3
END

IF ~~ BA5.7
SAY @589
IF ~~ THEN + BA5.3
END

IF ~~ BA5.8
SAY @590
IF ~~ THEN + BA5.3
END

IF ~~ BA5.9
SAY @591
++ @592 + BA5.3
++ @593 + BA5.20
++ @594 + BA5.21
++ @595 + BA5.22
END

IF ~~ BA5.10
SAY @596
++ @597 + BA5.11
++ @598 + BA5.23
++ @599 + BA5.14
++ @600 + BA5.13
+ ~Class(Player1,MAGE_ALL)~ + @601 + BA5.25
+ ~Class(Player1,CLERIC_ALL)~ + @602 + BA5.25
END

IF ~~ BA5.11
SAY @603
++ @604 + BA5.14
++ @605 + BA5.14
++ @606 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA5.24
++ @607 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA5.24
END

IF ~~ BA5.12
SAY @608
IF ~~ THEN + BA5.10
END

IF ~~ BA5.13
SAY @609
IF ~~ THEN + BA5.26
END

IF ~~ BA5.14
SAY @610
IF ~~ THEN + BA5.26
END

IF ~~ BA5.15
SAY @611
IF ~~ THEN + BA5.10
END

IF ~~ BA5.16
SAY @612
IF ~~ THEN + BA5.17
END

IF ~~ BA5.17
SAY @613
IF ~~ THEN + BA5.10
END

IF ~~ BA5.18
SAY @614
IF ~~ THEN + BA5.10
END

IF ~~ BA5.19
SAY @615
IF ~~ THEN + BA5.10
END

IF ~~ BA5.20
SAY @616
IF ~~ THEN + BA5.26
END

IF ~~ BA5.21
SAY @617
IF ~~ THEN DO ~SetGlobal("B!NoVisit","GLOBAL",1)~ + BA5.27
END

IF ~~ BA5.22
SAY @618
IF ~~ THEN DO ~SetGlobal("B!AidanFriend","GLOBAL",3)
AddJournalEntry(@173,QUEST)
DestroySelf()~ EXIT
END

IF ~~ BA5.23
SAY @619
IF ~~ THEN + BA5.26
END

IF ~~ BA5.24
SAY @620
++ @621 + BA5.28
++ @622 + BA5.29
++ @623 + BA5.29
END

IF ~~ BA5.25
SAY @624
IF ~~ THEN + BA5.26
END

IF ~~ BA5.26
SAY @625
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ BA5.27
SAY @626
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ BA5.28
SAY @627
= @628
= @629
= @630
IF ~~ THEN + BA5.26
END

IF ~~ BA5.29
SAY @631
= @629
= @630
IF ~~ THEN + BA5.26
END
END

/* Talk 6 - Aidan's hopes */
CHAIN
IF ~Global("B!AidanTalk","GLOBAL",12)~ THEN ~B!AIDAN~ BA6.0
@632 
DO ~SetGlobal("B!AidanTalk","GLOBAL",13) SetGlobalTimer("B!AidanTime","GLOBAL",ONE_DAY)~
END
++ @633 EXTERN ~B!AIDAN~ BA6.1
+ ~AreaType(OUTDOOR)~ + @634 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA6.2
+ ~!AreaType(OUTDOOR)~ + @635 EXTERN ~B!AIDAN~ BA6.2
+ ~NumInPartyGT(1)~ + @636 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA6.3
+ ~NumInParty(1)~ + @637 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA6.3
++ @638 EXTERN ~B!AIDAN~ BA6.2
++ @639 EXTERN ~B!AIDAN~ BA6.4

APPEND ~B!AIDAN~

IF ~~ BA6.1
SAY @640
++ @641 + BA6.4
++ @642 + BA6.5
++ @643 + BA6.6
END

IF ~~ BA6.2
SAY @644
IF ~~ THEN + BA6.7
END

IF ~~ BA6.3
SAY @645
IF ~~ THEN + BA6.7
END

IF ~~ BA6.4
SAY @646
++ @647 + BA6.6
++ @648 + BA6.8
++ @649 + BA6.9
++ @650 + BA6.10
END

IF ~~ BA6.5
SAY @651
++ @652 + BA6.7
++ @653 + BA6.6
END

IF ~~ BA6.6
SAY @654
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ BA6.7
SAY @655
++ @656 + BA6.11
++ @657 + BA6.11
++ @658 + BA6.11
++ @659 + BA6.11
END

IF ~~ BA6.8
SAY @660
++ @652 + BA6.7
++ @653 + BA6.6
END

IF ~~ BA6.9
SAY @661
IF ~~ THEN + BA6.7
END

IF ~~ BA6.10
SAY @662
++ @663 + BA6.7
++ @653 + BA6.6
END

IF ~~ BA6.11
SAY @664
++ @665 + BA6.12
++ @666 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA6.13
++ @667 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA6.14
++ @668 + BA6.15
END

IF ~~ BA6.12
SAY @669
IF ~~ THEN + BA6.20
END

IF ~~ BA6.13
SAY @670
IF ~~ THEN + BA6.20
END

IF ~~ BA6.14
SAY @671
IF ~~ THEN + BA6.20
END

IF ~~ BA6.15
SAY @672
IF ~~ THEN + BA6.21
END

IF ~~ BA6.16
SAY @673
= @674
++ @675 + BA6.22
++ @676 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA6.23
++ @677 + BA6.24
++ @678 + BA6.25
END

IF ~~ BA6.17
SAY @679
IF ~~ THEN + BA6.16
END

IF ~~ BA6.18
SAY @680
++ @681 + BA6.27
++ @682 + BA6.28
++ @683 + BA6.29
++ @684 + BA6.26
END

IF ~~ BA6.19
SAY @685
IF ~~ THEN + BA6.16
END

IF ~~ BA6.20
SAY@686
++ @687 + BA6.16
++ @688 + BA6.17
++ @689 + BA6.18
++ @690 + BA6.19
END

IF ~~ BA6.21
SAY @691
IF ~~ THEN DO ~SetGlobal("B!AidanFriend","GLOBAL",3) 
AddJournalEntry(@174,QUEST) 
DestroySelf()~ EXIT
END

IF ~~ BA6.22
SAY @692
IF ~~ THEN + BA6.30
END

IF ~~ BA6.23
SAY @693
IF ~~ THEN + BA6.30
END

IF ~~ BA6.24
SAY @694
IF ~~ THEN + BA6.23
END

IF ~~ BA6.25
SAY @695
IF ~~ THEN + BA6.23
END

IF ~~ BA6.26
SAY @696
IF ~~ THEN DO ~SetGlobal("B!AidanFriend","GLOBAL",3) 
AddJournalEntry(@174,QUEST) 
DestroySelf()~ EXIT
END

IF ~~ BA6.27
SAY @697
IF ~~ THEN + BA6.16
END

IF ~~ BA6.28
SAY @698
IF ~~ THEN + BA6.16
END

IF ~~ BA6.29
SAY @699
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ BA6.30
SAY @700
= @701
IF ~~ THEN DO ~DestroySelf()~ EXIT
END
END

/* Talk 7 - philosophy, good, evil, and duty */
CHAIN
IF ~Global("B!AidanTalk","GLOBAL",14)~ THEN ~B!AIDAN~ BA7.0
@702 
DO ~SetGlobal("B!AidanTalk","GLOBAL",15) SetGlobalTimer("B!AidanTime","GLOBAL",ONE_DAY)~
END
++ @703 EXTERN ~B!AIDAN~ BA7.1
++ @460 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA7.1
++ @704 EXTERN ~B!AIDAN~ BA7.2
++ @705 EXTERN ~B!AIDAN~ BA7.3

APPEND ~B!AIDAN~

IF ~~ BA7.1
SAY @706
+ ~!Class(Player1,PALADIN_ALL)~ + @707 + BA7.4
+ ~Class(Player1,PALADIN_ALL)~ + @708 + BA7.5
+ ~!Class(Player1,PALADIN_ALL)~ + @708 + BA7.4
++ @709 + BA7.6
++ @710 + BA7.7
++ @711 + BA7.8
+ ~!Class(Player1,THIEF_ALL)~ + @712 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA7.9
+ ~Class(Player1,THIEF_ALL)~ + @712 + BA7.10
END

IF ~~ BA7.2
SAY @713
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ BA7.3
SAY @714
++ @715 + BA7.11
++ @716 + BA7.1
END

IF ~~ BA7.4
SAY @717
++ @718 + BA7.12
++ @719 + BA7.13
++ @720 + BA7.14
++ @721 + BA7.15
END

IF ~~ BA7.5
SAY @722
++ @723 + BA7.16
++ @724 + BA7.17
++ @725 + BA7.18
END

IF ~~ BA7.6
SAY @726
++ @727 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA7.19
++ @728 + BA7.20
++ @729 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA7.21
++ @730 + BA7.22
END

IF ~~ BA7.7
SAY @731
++ @732 + BA7.23
++ @733 + BA7.24
++ @734 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA7.25
++ @735 + BA7.15
END

IF ~~ BA7.8
SAY @736
++ @737 + BA7.16
++ @738 + BA7.15
END

IF ~~ BA7.9
SAY @739
IF ~~ THEN + BA7.25
END

IF ~~ BA7.10
SAY @740
++ @741 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA7.27
++ @742 + BA7.15
++ @743 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA7.28
END

IF ~~ BA7.11
SAY @744
IF ~~ THEN DO ~SetGlobal("B!AidanFriend","GLOBAL",3)
AddJournalEntry(@175,QUEST) 
DestroySelf()~ EXIT
END

IF ~~ BA7.12
SAY @745
IF ~~ THEN + BA7.29
END

IF ~~ BA7.13
SAY @746
IF ~~ THEN + BA7.12
END

IF ~~ BA7.14
SAY @747
= @748
IF ~~ THEN + BA7.12
END

IF ~~ BA7.15
SAY @749
IF ~~ THEN + BA7.11
END

IF ~~ BA7.16
SAY @750
IF ~~ THEN + BA7.26
END

IF ~~ BA7.17
SAY @751
= @752
IF ~~ THEN + BA7.12
END

IF ~~ BA7.18
SAY @753
IF ~~ THEN + BA7.12
END

IF ~~ BA7.19
SAY @754
IF ~~ THEN + BA7.30
END

IF ~~ BA7.20
SAY @755
++ @756 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA7.30
++ @757 + BA7.12
END

IF ~~ BA7.21
SAY @758
IF ~~ THEN + BA7.30
END

IF ~~ THEN BA7.22
SAY @759
IF ~~ THEN + BA7.12
END

IF ~~ THEN BA7.23
SAY @760
++ @761 + BA7.31
++ @762 + BA7.32
++ @763 + BA7.33
END

IF ~~ THEN BA7.24
SAY @764
IF ~~ THEN + BA7.12
END

IF ~~ THEN BA7.25
SAY @765
IF ~~ THEN + BA7.30
END

IF ~~ THEN BA7.26
SAY @766
IF ~~ THEN + BA7.29
END

IF ~~ THEN BA7.27
SAY @767
IF ~~ THEN + BA7.25
END

IF ~~ THEN BA7.28
SAY @768
IF ~~ THEN + BA7.30
END

IF ~~ THEN BA7.29
SAY @769
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BA7.30
SAY @770
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BA7.31
SAY @771
IF ~~ THEN + BA7.29
END

IF ~~ THEN BA7.32
SAY @772
IF ~~ THEN + BA7.29
END

IF ~~ THEN BA7.33
SAY @773
= @774
IF ~~ THEN DO ~DestroySelf()~ EXIT
END
END

/* Talk 8 - friendship */
CHAIN
IF ~Global("B!AidanTalk","GLOBAL",16)~ THEN ~B!AIDAN~ BA8.0
@775 
DO ~SetGlobal("B!AidanTalk","GLOBAL",17) SetGlobalTimer("B!AidanTime","GLOBAL",ONE_DAY)~
END
++ @776 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA8.1
++ @777 EXTERN ~B!AIDAN~ BA8.1
++ @778 EXTERN ~B!AIDAN~ BA8.1
++ @779 EXTERN ~B!AIDAN~ BA8.1

APPEND ~B!AIDAN~

IF ~~ BA8.1
SAY @780
++ @781 + BA8.2
++ @782 + BA8.3
++ @783 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA8.4
++ @784 + BA8.5
END

IF ~~ BA8.2
SAY @785
IF ~~ THEN + BA8.6
END

IF ~~ BA8.3
SAY @786
++ @787 + BA8.7
++ @788 + BA8.8
++ @789 + BA8.8
+ ~AreaType(CITY)~ + @790 + BA8.8
END

IF ~~ BA8.4
SAY @791
IF ~~ THEN + BA8.6
END

IF ~~ BA8.5
SAY @792
++ @793 + BA8.9
++ @794 + BA8.10
++ @795 + BA8.11
++ @796 + BA8.12
END

IF ~~ BA8.6
SAY @797
= @798
= @799
= @800
= @801
= @802
++ @803 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA8.13
++ @804 + BA8.13
++ @805 + BA8.14
END 

IF ~~ BA8.7
SAY @806
IF ~~ THEN DO ~SetGlobal("B!NoVisit","GLOBAL",1) DestroySelf()~ EXIT
END

IF ~~ BA8.8
SAY @807
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ BA8.9
SAY @808
IF ~~ THEN + BA8.6
END

IF ~~ BA8.10
SAY @809
IF ~~ THEN + BA8.6
END

IF ~~ BA8.11
SAY @810
IF ~~ THEN + BA8.6
END

IF ~~ BA8.12
SAY @811
IF ~~ THEN + BA8.6
END

IF ~~ BA8.13
SAY @812
= @813
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ BA8.14
SAY @814
= @815
IF ~~ THEN DO ~SetGlobal("B!NoVisit","GLOBAL",1) DestroySelf()~ EXIT
END
END

/* Talk 9 - Aidan's fears */
CHAIN
IF ~Global("B!AidanTalk","GLOBAL",18)~ THEN ~B!AIDAN~ BA9.0
@816 
DO ~SetGlobal("B!AidanTalk","GLOBAL",19) SetGlobalTimer("B!AidanTime","GLOBAL",ONE_DAY)~
END
++ @817 EXTERN ~B!AIDAN~ BA9.1
++ @818 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA9.2
++ @819 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ EXTERN ~B!AIDAN~ BA9.2
++ @820 EXTERN ~B!AIDAN~ BA9.3

APPEND ~B!AIDAN~

IF ~~ BA9.1
SAY @821
++ @822 + BA9.4
++ @823 + BA9.5
++ @824 + BA9.6
++ @825 + BA9.7
END

IF ~~ BA9.2
SAY @826
= @827
++ @828 + BA9.8
++ @829 + BA9.9
++ @830 + BA9.14
++ @831 + BA9.10
++ @832 + BA9.11
++ @833 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA9.12
END

IF ~~ BA9.3
SAY @834
IF ~~ THEN + BA9.2
END

IF ~~ BA9.4
SAY @835
++ @836 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA9.2
++ @493 + BA9.13
END

IF ~~ BA9.5
SAY @837
IF ~~ THEN + BA9.4
END

IF ~~ BA9.6
SAY @838
IF ~~ THEN DO ~SetGlobal("B!NoVisit","GLOBAL",1) DestroySelf()~ EXIT
END

IF ~~ BA9.7
SAY @839
IF ~~ THEN DO ~SetGlobal("B!AidanFriend","GLOBAL",3) DestroySelf()~ EXIT
END

IF ~~ BA9.8
SAY @840
IF ~~ THEN + BA9.9
END

IF ~~ BA9.9
SAY @841
++ @842 + BA9.14
++ @843 + BA9.10
++ @844 + BA9.11
++ @845 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA9.12
END

IF ~~ BA9.10
SAY @846
IF ~~ THEN DO ~SetGlobal("B!NoVisit","GLOBAL",1) DestroySelf()~ EXIT
END

IF ~~ BA9.11
SAY @847
= @848
++ @849 + BA9.15
++ @850 + BA9.15
++ @851 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA9.16
++ @852 DO ~IncrementGlobal("B!AidanLove","GLOBAL",1)~ + BA9.12
END

IF ~~ BA9.12
SAY @853
= @854
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ BA9.13
SAY @855
IF ~~ THEN DO ~DestroySelf()~ EXIT
END

IF ~~ BA9.14
SAY @856
IF ~~ THEN + BA9.13
END

IF ~~ BA9.15
SAY @857
IF ~~ THEN + BA9.17
END

IF ~~ BA9.16
SAY @858
IF ~~ THEN + BA9.17
END

IF ~~ BA9.17
SAY @859
= @860
IF ~~ THEN + BA9.13
END
END

/* Talk 10 - the nature of love */
CHAIN
IF ~Global("B!AidanTalk","GLOBAL",20)~ THEN ~B!AIDAN~ BA10.0
@861 
DO ~SetGlobal("B!AidanTalk","GLOBAL",21) SetGlobalTimer("B!AidanTime","GLOBAL",ONE_DAY)~
END
+ ~GlobalGT("B!AidanLove","GLOBAL",5)~ + @862 DO ~SetGlobal("B!AidanLivingLover","LOCALS",1)~ EXTERN ~B!AIDAN~ BA10.1
+ ~!GlobalGT("B!AidanLove","GLOBAL",5)~ + @862 DO ~SetGlobal("B!AidanLivingLover","LOCALS",1)~ EXTERN ~B!AIDAN~ BA10.2
+ ~GlobalGT("B!AidanLove","GLOBAL",5)~ + @863 EXTERN ~B!AIDAN~ BA10.1
+ ~!GlobalGT("B!AidanLove","GLOBAL",5)~ + @863 EXTERN ~B!AIDAN~ BA10.2
+ ~GlobalGT("B!AidanLove","GLOBAL",5)~ + @864 DO ~SetGlobal("B!AidanDeadLover","LOCALS",1)~ EXTERN ~B!AIDAN~ BA10.3
+ ~!GlobalGT("B!AidanLove","GLOBAL",5)~ + @864 DO ~SetGlobal("B!AidanDeadLover","LOCALS",1)~ EXTERN ~B!AIDAN~ BA10.4
+ ~GlobalGT("B!AidanLove","GLOBAL",5)~ + @865 EXTERN ~B!AIDAN~ BA10.5
+ ~!GlobalGT("B!AidanLove","GLOBAL",5)~ + @865 EXTERN ~B!AIDAN~ BA10.6
++ @866 EXTERN ~B!AIDAN~ BA10.7
++ @867 EXTERN ~B!AIDAN~ BA10.8

APPEND ~B!AIDAN~

IF ~~ BA10.1
SAY @868
IF ~~ THEN + BA10.9
END

IF ~~ BA10.2
SAY @869
IF ~~ THEN + BA10.10
END

IF ~~ BA10.3
SAY @870
IF ~~ THEN + BA10.9
END

IF ~~ BA10.4
SAY @871
IF ~~ THEN + BA10.10
END

IF ~~ BA10.5
SAY @872
IF ~~ THEN + BA10.9
END

IF ~~ BA10.6
SAY @873
IF ~~ THEN + BA10.10
END

IF ~~ BA10.7
SAY @874
IF ~GlobalGT("B!AidanLove","GLOBAL",5)~ THEN + BA10.9
IF ~!GlobalGT("B!AidanLove","GLOBAL",5)~ THEN + BA10.10
END

IF ~~ BA10.8
SAY @875
IF ~GlobalGT("B!AidanLove","GLOBAL",5)~ THEN + BA10.9
IF ~!GlobalGT("B!AidanLove","GLOBAL",5)~ THEN + BA10.10
END

IF ~~ BA10.9
SAY @876
IF ~~ THEN + BA10.11
END

IF ~~ BA10.10
SAY @877
IF ~~ THEN + BA10.11
END

IF ~~ BA10.11
SAY @878
+ ~GlobalGT("B!AidanLove","GLOBAL",5) Global("B!AidanLivingLover","LOCALS",1)~ + @879 + BA10.12
+ ~!GlobalGT("B!AidanLove","GLOBAL",5) Global("B!AidanLivingLover","LOCALS",1)~ + @879 + BA10.13
+ ~GlobalGT("B!AidanLove","GLOBAL",5) Global("B!AidanDeadLover","LOCALS",1)~ + @880 + BA10.14
+ ~!GlobalGT("B!AidanLove","GLOBAL",5) Global("B!AidanDeadLover","LOCALS",1)~ + @880 + BA10.15
+ ~GlobalGT("B!AidanLove","GLOBAL",5)~ + @881 + BA10.16
+ ~!GlobalGT("B!AidanLove","GLOBAL",5)~ + @881 + BA10.17
++ @882 + BA10.18
+ ~GlobalGT("B!AidanLove","GLOBAL",5)~ + @883 + BA10.19
+ ~!GlobalGT("B!AidanLove","GLOBAL",5)~ + @883 + BA10.20
++ @884 + BA10.18
++ @885 + BA10.21
END

IF ~~ BA10.12
SAY @886
IF ~~ THEN + BA10.22
END

IF ~~ BA10.13
SAY @887
IF ~~ THEN + BA10.23
END

IF ~~ BA10.14
SAY @888
IF ~~ THEN + BA10.22
END

IF ~~ BA10.15
SAY @889
IF ~~ THEN + BA10.23
END

IF ~~ BA10.16
SAY @890
IF ~~ THEN + BA10.22
END

IF ~~ BA10.17
SAY @891
IF ~~ THEN  + BA10.23
END

IF ~~ BA10.18
SAY @892
IF ~GlobalGT("B!AidanLove","GLOBAL",5)~ THEN + BA10.22
IF ~!GlobalGT("B!AidanLove","GLOBAL",5)~ THEN + BA10.23
END

IF ~~ BA10.19
SAY @893
IF ~~ THEN + BA10.22
END

IF ~~ BA10.20
SAY @894
IF ~~ THEN + BA10.23
END

IF ~~ BA10.21
SAY @895
IF ~GlobalGT("B!AidanLove","GLOBAL",5)~ THEN + BA10.22
IF ~!GlobalGT("B!AidanLove","GLOBAL",5)~ THEN + BA10.23
END

IF ~~ BA10.22
SAY @896
IF ~~ THEN + BA10.24
END

IF ~~ BA10.23
SAY @897
IF ~~ THEN + BA10.24
END

IF ~~ BA10.24
SAY @898
IF ~~ THEN DO ~DestroySelf()~ EXIT
END


/* new for v10 */

IF ~~ BA4.60
SAY @901
IF ~~ THEN + BA4.59
END
END