1 REM 6.1 European siren sound effect
10 R=216 : REM &hd8
20 D=208: REM &hd0
30 OUT R,0 : REM Set Channel A Tone period to 2.27ms (440 Hz)
40 OUT D,254
41 OUT R,1
42 OUT D,0
50 OUT R,7 : REM Enable Tone only on Channel A only
52 OUT D,62
60 OUT R,8 : REM Select max amplitude on Channel A
62 OUT D,15
65 GOSUB 100 : REM Delay 350ms

70 OUT R,0 : REM Set Channel A Tone period to 5.346ms (187 MHz)
72 OUT D,86
80 OUT R,1
82 OUT D,1
85 GOSUB 100 : REM Delay 350ms

90 OUT R,8 : REM Turn off Channel A to end sound effect
92 OUT D,0

95 GOTO 30
100 FOR X=1 TO 496
110 NEXT
120 RETURN