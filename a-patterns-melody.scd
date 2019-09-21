

Server.default.record(path: "~/.local/share/SuperCollider/Recordings/piano_mash.wav".standardizePath);

(
var n1, n2, n3;
n1 = Pbind(
	\degree, Pseq([0, -1, 2, -3, 4, -3, 7, 11, 4, 2, 0, -3], 4),
	\dur, Pseq([0.2, 0.1, 0.2], inf),
	\amp, Pseq([0.7, 0.5, 0.3, 0.2], inf),
	\legato, 0.4//Pseq([-1,1],30)
);



n2 = Pbind(
	\note, Pseq([4,5,4,0,0,4,5,4,7,7,4,5,7],3),
	\dur, 0.15,
	\amp, 0.512,
	\legato, 1
);

n3 = Pbind(\degree, Pseries(-5, 1.0, 30), \dur, 0.05);





//n1.play;
n2.play;
//n3.play;

)

Server.default.stopRecording;

Server.default.reboot;
Server.default.quit;
