// Learning super-collider from
// https://ccrma.stanford.edu/~ruviaro/texts/A_Gentle_Introduction_To_SuperCollider.pdf
// Part 2 patterns

Pbind(\degree, Pseries(-5, 1.0, 30), \dur, 0.05).play;

Pbind(\degree, 0, \dur, 1).play;

Pbind(\degree, Pseq([0,1,2,3,4,5,6,7,8,9]*0.121,inf), \dur, Pseq([0.1,0.2,0.3,0.1,0.3,0.2,0.1,0.1]*0.3,inf)).play;


(
Pbind(
	\degree, Pseq([0,1,2,3,4,5,6,7,8],5),
	\dur, Pseq([3,4,3,3,4]/53,10)
).play;
)

(
Pbind(
	\freq, Pseq([420,430,440,450,460,470],5),
	\dur, Pseq([1,2,1,2,1,2]*0.05,inf)
).play
)

Pbind(\degree, 5).play;
Pbind(\note, 9).play;
Pbind(\midinote, 69).play;
Pbind(\freq, 440).play;


(
Pbind(
	\degree, Pseq([0, -1, 2, -3, 4, -3, 7, 11, 4, 2, 0, -3], 5),
	\dur, Pseq([0.2, 0.1, 0.2], inf),
	\amp, Pseq([0.7, 0.5, 0.3, 0.2], inf),
	\legato, 0.4//Pseq([-1,1],30)
).play;
)

(
Pbind(
	\note, Prand([0,4,5,7],inf),
	\dur, 0.15,
	\amp, 0.512,
	\legato, 0.5
).play;
)

(
Pbind(
	\note, Pseq([4,5,4,0,0,4,5,4,7,7,4,5,7],inf),
	\dur, 0.15,
	\amp, 0.512,
	\legato, 1
).play;
)


(
Pbind(
	\freq, Pwhite(100,500),
	\dur, Prand([0.15,0.25,0.3], inf),
	\amp, 0.2,
	\legato, 0.3
).trace.play;
)

// Pseq
(
Pbind(
	\note, Pseq([0,2,3,5,7,8,11,12],4),
	\dur, 0.15;
).play;
)

// Pseq
(
Pbind(
	\note, Prand([0,2,3,5,7,8,11,12],4),
	\dur, 0.15;
).play
)

// Pwhite
(
Pbind(
	\note, Pseq([0,2,3,5,7,8,11,12],4),
	\dur, Pwhite(0.15,0.18),
	\note, Pseq([0,1,2,3],4),
	\dur, 0.07;
).play;
)



// Expanding you Pattern vocabulary

// Pser (Patter - series, slightly different from sequence Pseq)
(
Pbind(
	\note, Pser([0,2,3,5,7,8,11,12],4),
	\dur, 0.15;
).play;
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
p2.play;
)

























s.quit;
s.reboot;



