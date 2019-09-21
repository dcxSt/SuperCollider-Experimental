// learning from A Gentle Introduction To SuperCollider pdf online

"hello world".postln;

{SinOsc.ar}.play;

{SinOsc.ar(LFNoise0.kr(10).range(500,1500), mul:0.1)}.play;

{SinOsc.ar(LFNoise0.kr(50).range(500,1500), mul:0.05)}.play;

{SinOsc.ar(LFNoise0.kr(10).range(400,1000), mul:0.2)}.play;

{SinOsc.ar(LFNoise0.kr(5).range(300,700), mul:0.4)}.play;

{SinOsc.ar(LFNoise0.kr(15).range(500,800), mul:0.1)}.play;

{SinOsc.ar(LFNoise0.kr(12).range(400,800),mul:0.2)}.play;

{RLPF.ar(Dust.ar([15,25]), LFNoise1.ar([0.2,0.1]).range(300,1000),0.0002,mul:0.8)}.play;

{Dust.ar([12,15])}.play;

{LFNoise1.ar([0.3,0.2]).range(100,3000)}.play;

// recording the output

// start recording
s.record;
// make some cool sound
{Saw.ar(LFNoise0.kr([2,3]).range(100,2000), LFPulse.kr([4,5]) * 0.1)}.play;
// stop recording
s.stopRecording;

s.quit;
s.boot;

// 12 - Variables

x=10;
y=660;
y; // check what's in there
x;
x+y;
y-x;
x-y;

a="Hello world"; // a string of characters
b = [0,1,2,3,4,5]; // a list
c = Pbind(\note, Pwhite(0,10),\dur, 0.1); // you'll learn about this later

a.postln;
b+100;
c.play;

// you can use a twiddle (tilda) to declare variables with multiple letters in them
~myFreqs = [415, 220, 440, 880, 220, 990];
~myDurs = [0.1,0.2,0.2,0.5,0.2,0.1];

Pbind(\freq, Pseq(~myFreqs),\dur,Pseq(~myDurs)).play;

// -------------------------------------------------------------------- //
// types of variable example

// Environment variables
~galaApples = 4;
~bloodOranges = 5;
~limes = 2;
~plantains = 1;

["Citrus",~bloodOranges + ~limes];
["Non-citrus",~galaApples + ~plantains];

// Local variables: valid only with code block.
// Evaluate the block once and watch the Post window:
(
var apples=4, oranges=3, lemons=8, bananas=10;
["Citrus fruits",oranges + lemons].postln;
["Non-citrus fruits",bananas + apples].postln;
"End".postln;
)

~galaApples; // still exists
apples; // gone



















