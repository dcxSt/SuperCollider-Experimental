// declare an event type which sends OSC commands to Renoise

(
Event.addEventType(\renoise, { |server|
  var renoiseOscServer = NetAddr("127.0.0.1", 8000);
  var notes = [~midinote.value, ~ctranspose.value, ~velocity.value, ~sustain.value, ~lag.value, ~timingOffset.value, ~instr.value, ~track.value].flop;
  var timeNoteOn, timeNoteOff, instrument, track, velocity;
  var serverLatency;

  serverLatency = server.latency ? 0;

  notes.do {|note|
    instrument = note[6] ? -1;
    track = note[7] ? -1;
    velocity = note[2].asInt.clip(0,127);

    // sustain and timingOffset are in beats, lag is in seconds
    timeNoteOn = (thisThread.clock.tempo.reciprocal*note[5])+note[4]+server.latency;
    timeNoteOff = (thisThread.clock.tempo.reciprocal*(note[3]+note[5]))+note[4]+server.latency;
    SystemClock.sched(timeNoteOn, {renoiseOscServer.sendMsg("/renoise/trigger/note_on", instrument.asInt, track.asInt, (note[0]+note[1]).asInt, velocity )});
    SystemClock.sched(timeNoteOff, {renoiseOscServer.sendMsg("/renoise/trigger/note_off", instrument.asInt, track.asInt, (note[0]+note[1]).asInt)});
  }
});
)

// Now start Renoise OSC server, load a sample, and try some patterns

// straight timing
(
Pbind(*[
  type: \renoise,
  legato: Pgauss(0.2,0.05,inf),
  dur: 0.2,
  degree: [2,5,12],
  track: Prand([0,1], inf),
  ctranspose: Pseq([0,0,0,0,4,4,4,4,5,5,5,5],inf),
  velocity: Pgauss(64,10,inf),
]).play;
)

// loose timing
(
Pbind(*[
  type: \renoise,
  legato: 0.1,
  dur: 0.2,
  midinote: [66, 69, 74],
  lag: Pwhite(-0.05!3, 0.05)
]).play;
)