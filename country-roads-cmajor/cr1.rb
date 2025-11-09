use_bpm 70
use_synth :piano

live_loop :melody do
  play_pattern_timed(
    [:r, :r, :g4, :a4, :b4, :b4, :a4, :g4, :a4, :b4, :a4, :g4, :b4, :d5],
    [2,  1,  0.5, 0.5, 3,   0.25,0.25,0.5, 3,   0.5, 0.5, 3,   0.5, 0.5])
  play_pattern_timed(
    [:e5, :e5, :b4, :d5, :d5, :b4, :b4, :a4, :g4, :a4, :b4, :b4, :a4, :g4, :g4, :g4, :a4],
    [3,   0.5, 0.5, 0.25, 0.75, 2, 0.25,0.25,0.5, 1,   2,   0.25,0.25,0.5, 3,   0.5, 0.5])
  play_pattern_timed(
    [:g4],
    [4])
end

chords =[nil, chord(:a3, :major), chord(:g3, "7"),  chord(:a3, :minor),  chord(:f3, :major),
         chord(:c3, :major), chord(:g3, "7"), chord(:f3, :major), chord(:c3, :major)]

live_loop :chords do
  with_fx :echo, mix: 0.1 do 
    c = chords.tick
    play_chord c, release: 4 if !c.nil?
    sleep 4
  end
end

##| live_loop :arpeggio do
##|   c = chords.tick
##|   if c.nil?
##|     sleep 4
##|   else
##|     cArr = c.to_a()
##|     cArr.append(c[0])
##|     play_pattern_timed(cArr, [1,1,1,1])
##|   end
##| end

##| live_loop :drumbass do
##|   sleep 4
##|   loop do
##|     sleep 0.5
##|     sample :hat_snap
##|     sleep 0.5
##|     sample :hat_snap
##|     sleep 0.5
##|     sample :hat_snap
##|     sleep 0.5
##|     sample :hat_snap
##|   end
##| end

##| live_loop :drumhh do
##|   sleep 4
##|   loop do
##|     sample :drum_bass_soft
##|     sleep 1
##|     sample :drum_bass_soft
##|     sleep 1
##|     sample :drum_bass_soft
##|     sleep 1
##|     sample :drum_bass_soft
##|     sleep 1
##|   end
##| end

##| live_loop :drums do
##|   sleep 4
##|   loop do
##|     sample :drum_snare_soft
##|     sleep 0.5
##|     sample :drum_cymbal_closed
##|     sleep 0.5
##|   end
##| end

