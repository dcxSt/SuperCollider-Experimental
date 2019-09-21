
f = {SinOsc.ar(440,0,0.2)};
g = {SinOsc.ar(440,0,1.0)}
h


f.play;
g.play;


f = { var ampOsc;
    ampOsc = SinOsc.kr(0.5, 1.5pi, 0.5, 0.5);
    SinOsc.ar(440, 0, ampOsc);
};

g = { var ampOsc, freqOsc;
	ampOsc = SinOsc.kr(0.5,0pi,0.5,1.0);
	freqOsc = SinOsc.kr(0.4,0,23,440);
	SinOsc.ar(freqOsc,0,ampOsc);
}

{ [SinOsc.ar(440, 0, 0.2), SinOsc.ar(442, 0, 0.2)] }.play;

f.play()
g.play()


a = ["foo", "bar"];    // "foo" is at index 0; "bar" is at index 1
a.at(0);
a.at(1);
a.at(2);        // returns "nil", as there is no object at index 2

// there's a shorthand for at that you'll see sometimes:
a[0];            // same as a.at(0);


{ Pan2.ar(PinkNoise.ar(0.2), SinOsc.kr(0.5));
	Pan2.ar(PinkNoise.ar(0.01),-0.3);
}.play;


{ Pan2.ar(PinkNoise.ar(0.2), -0.3) }.play; // slightly to the left

