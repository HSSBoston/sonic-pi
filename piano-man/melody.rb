use_bpm 140

use_synth :piano

live_loop :melody do
  play_pattern_timed(
    [:r,:gs4, :a4, :g5,:gb5,:f5,:e5,:eb5,:d5,:db5,:c5],
    [1, 0.25,0.25,0.5, 0.5, 0.5,0.5,0.5, 0.5,0.5, 1])
end

live_loop :bass do
  with_fx :echo, mix: 1 do 
    play_chord([:f3,:a3,:c4], release: 6)
  end
  sleep 6
end

##| def play_chord_timed(notes, times)
##|   play_chord()
##| end