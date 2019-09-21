// A Gentle Introduction To SuperCollider pdf
// part 2 patterns

// 13.2 Pseq
Pbind(\degree, Pseq([0, 1, 2, 3, 4, 5, 6, 7],1), \dur, 0.2).play;

(
Pbind(
	\degree, Pseq([0,1,2,3,4,5,6,7], 5),
	\dur, Pseq([0.2, 0.1, 0.1, 0.2, 0.2, 0.35], inf)
).play;
)

// 13.4 Four ways of specifying pitch
// \degree, \midinote, \note, \freq

(
Pbind(\degree, 5).play;
Pbind(\note, 9).play;
Pbind(\midinote, 69).play;
Pbind(\freq, 440).play;
)

// 13.5 More keywords: amplitude and legato

(
Pbind(
	\degree, Pseq([0,-1,2,-3,4,-3,7,11,4,2,0,-3],5),
	\dur, Pseq([0.2, 0.1, 0.1], inf),
	\amp, Pseq([0.7, 0.5, 0.3, 0.2], inf),
	\legato, 0.4
).play;
)

// Pbind has many predefined keywords such as \degree, \note, \midinote, \freq, \dur, \amp, \legato

// 13.6 Prand
// picks one random item from the list every time

(
Pbind(
	\degree, Prand([2,3,4,5,6],inf),
	\dur, 0.15,
	\amp, 0.2,
	\legato, 0.1
).play;
)

// 13.7 Pwhite

// Pwhite is an equal distributaion random number generator "white noise"

(
Pbind(
	\freq, Pwhite(100,500),
	\dur, Prand([0.15,0.25,0.3],inf),
	\amp, 0.2,
	\legato, 0.3
).trace.play;
)

// How many events does each of these play? (in the 3 following examples):
// Pseq
(
Pbind(
	\note, Pseq([0,2,3,5,7,8,11,12],4),
	\dur, 0.15;
).play;
)

// Prand
(
Pbind(
	\note, Prand([0,2,3,5,7,8,11,12],4),
	\dur, 0.15;
).play;
)

// Pwhite
(
Pbind(
	\note, Pseq([0,2,3,5,7,8,11,12],4),
	\dur, Pwhite(0.15, 0.5);
).play;
)

// Expanding you Pattern vocabulary





s.quit;



