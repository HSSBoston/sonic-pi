use_bpm 70
use_synth :piano

live_loop :melody do
  play_pattern_timed(
    [:r, :r, :f4, :g4, :a4, :a4, :g4, :f4, :g4, :a4, :g4, :f4, :a4, :c5, :d5, :d5, :a4],
    [2,  1,  0.5, 0.5, 3,   0.25,0.25,0.5, 3,   0.5, 0.5, 3,   0.5, 0.5, 3,   0.5, 0.5])
  play_pattern_timed(
    [:c5, :c5, :a4, :a4, :g4, :f4, :g4, :a4, :a4, :g4, :f4, :f4, :f4, :g4, :f4],
    [0.25, 0.75, 2, 0.25,0.25,0.5, 1,   2,   0.25,0.25,0.5, 3,   0.5, 0.5, 4])
end

chords =[nil, chord(:f3, :major), chord(:c3, :major),  chord(:d3, :minor),  chord(:bb3, :major),
         chord(:a3, :minor), chord(:eb3, :major), chord(:bb3, :major), chord(:f3, :major)]

live_loop :chords do
  with_fx :echo, mix: 0.1 do 
    c = chords.tick
    play_chord c, release: 4 if !c.nil?
    sleep 4
  end
end

live_loop :arpeggio do
  c = chords.tick
  if c.nil?
    sleep 4
  else
    cArr = c.to_a()
    cArr.append(c[0])
    play_pattern_timed(cArr, [1,1,1,1])
  end
end

live_loop :drums do
    sample :drum_snare_soft
    sleep 0.5
    sample :drum_cymbal_closed
    sleep 0.5
end

