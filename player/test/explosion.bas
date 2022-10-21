1 REM 6.2 Explosion sound effect
10 R=216 : REM &hd8
20 D=208: REM &hd0
30 OUT R,6 : REM Set Noise period to max-value
40 OUT D,0
41 OUT R,7 : REM Enable Noise only on Channels A,B,C
42 OUT D,7
50 OUT R,8 : REM Select full amplitude range under direct control of Envelope Generator
52 OUT D,16
60 OUT R,9
62 OUT D,16
60 OUT R,10
62 OUT D,16
70 OUT R,12 : REM Set Envelope perioud to 2.05 seconds
72 OUT D,56
80 OUT R,13 : REM Select Envelope decay one cycle only
82 OUT D,0
85 GOSUB 100 : REM Delay 350ms

90 GOTO 30
100 FOR X=1 TO 2048
110 NEXT
120 RETURN