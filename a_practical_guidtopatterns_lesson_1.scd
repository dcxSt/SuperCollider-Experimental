var a1,a2,a3;

// starting a practical guid to patterns
(
a = Routine {
	var i = 0;
	loop {
		i.yield;
		i = i+1;
	};
};
)
a.nextN(10);


// supercollider's built in control structures allow some simplification.

(
a = Routine {
	(0..).do { |i|
		i.yield;
	};
};
)
a.nextN(10);


// Pseries is a way of being able to just say "Give me an infinite series starting with zero and increasing by 1"

a = Pseries(start: 0, step: 1, length: inf).asStream;

a.nextN(10);