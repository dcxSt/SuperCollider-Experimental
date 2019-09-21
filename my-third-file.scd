{ [SinOsc.ar(440, 0, 0.2), SinOsc.ar(442, 0, 0.2)] }.play;

f = { "Function evaluated".postln; };
f = { "Evaluating...".postln; 2 + 3; };
f.value;


// Pser (Patter - series, slightly different from sequence Pseq)
(
Pbind(
	\note, Pser([0,2,3,5,7,8,11,12],4),
	\dur, 0.15;
).play;
)

(

)



// Pxrand
// Compare with Prand to hear the difference
// found it in documentation for Pxrand :)
(
var p1,p2;
p1 = Pbind(
	\note, Pxrand([0,2,3,5,7,8,11,12],inf),
	\dur, 0.15;
);
p2 = Pbind(
	\note, Prand([0,2,3,5,7,8,11,12],inf),
	\dur, 0.15;
);
p1.play;
)

// Pshuf
(
p = Pbind(
	\note, Pshuf([0,2,3,5,7,8,11,12],6),
	\dur, 0.15;
).play;
)

// Pslide
// Takes 4 arguments: list, repetes, length, step
// Easy to figure out, this one is very cool I like it
(
Pbind(
	\note, Pslide([0,2,3,5,7,8,11,12],inf,6,1),
	\dur, 0.0515;
).play;
)

// Pseries
// Takes three arguments: start, step, length
(
Pbind(
	\note, Pseries(0,2,15),
	\dur, 0.15;
).play;
)

// Pgeom
// Takes three arguments: start, grow, length
(
Pbind(
	\note, Pseq([0,2,3,5,7,8,11,12],inf),
	\dur, Pgeom(0.001,1.1,72);
).play;
)


// Pn
(
Pbind(
	\note, Pseq([0, Pn(2,5), 3, Pn(5,5), 7, Pn(8,5), 11, 12], 12),
	\dur, 0.0515;
).play;
)