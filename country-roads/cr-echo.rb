use_bpm 70
use_synth :piano

define :chords do
  with_fx :echo, mix: 0.1 do 
    sleep 4
    play_chord chord(:f3, :major), release: 4
    sleep 4
    play_chord chord(:c3, :major), release: 4
    sleep 4
    play_chord chord(:d3, :minor), release: 4
    sleep 4
    play_chord chord(:bb3, :major), release: 4
    sleep 4
    play_chord chord(:a3, :minor), release: 4
    sleep 4
    play_chord chord(:eb3, :major), release: 4
    sleep 4
    play_chord chord(:bb3, :major), release: 4
    sleep 4
    play_chord chord(:f3, :major), release: 4
  end
end

define :melody do
  play_pattern_timed [:r, :r, :f4, :g4, :a4, :a4, :g4, :f4, :g4, :a4, :g4, :f4, :a4, :c5, :d5, :d5, :a4],
                     [2,  1,  0.5, 0.5, 3,   0.25,0.25,0.5, 3,   0.5, 0.5, 3,   0.5, 0.5, 3,   0.5, 0.5]
  play_pattern_timed [:c5, :c5, :a4, :a4, :g4, :f4, :g4, :a4, :a4, :g4, :f4, :f4, :f4, :g4, :f4],
                     [0.25, 0.75, 2, 0.25,0.25,0.5, 1,   2,   0.25,0.25,0.5, 3,   0.5, 0.5, 4]
end

in_thread do
  chords
end

melody
