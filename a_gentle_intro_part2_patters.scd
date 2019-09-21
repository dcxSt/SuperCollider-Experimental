// A gentle introduction to SuperCollider
// PART II PATTERS

Pbind(\degree, Pseries(0,0.5,30),\dur, 0.05).play;
Pbind(\degree, 0).play;
Pbind(\degree, Pseq([0,1,2,3,4,5,6,7],20),\dur, 0.02).play;

(
Pbind(\degree, Pseq([0,2,4,7,1],inf),\dur,Pseq([0.4,0.3,0.6,0.5,0.7]*0.8,inf),\amp,0.2).play;
Pbind(\degree, Pseq([0,2,4,7,1],inf),\dur,Pseq([0.4,0.3,0.6,0.5,0.7],inf),\amp,0.4).play;
)


(
~barLength = 0.6;

~cNotes = Pbind(// infinite backdrop
	\degree, Pseq([0],inf),
	\dur, Pseq([1,0.25,0.75,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25]*~barLength,inf),
	\amp, Pseq([1.0,0.5,1.0,0.5,0.8,0.5,0.8,0.5,0.8,0.5,0.8]*0.8,inf),
	\legato, Pseq([1,0.1,0.8,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1],inf)
)
)

(
~gNotes = Pbind(
	\degree, Pseq([0,-3,0],3),
	\dur, Pseq([1,1,2]*~barLength,inf),
	\amp, Pseq([1,1,1]*0.6,inf),
	\legato, Pseq([2,2,2],inf)
)
)


(
~cNotes.play;
~gNotes.play;
)

s.quit;