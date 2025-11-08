use_bpm 140

live_loop :hhat do
  sample :hat_snap 
  sleep 1
end

live_loop :drum do
  sample :drum_bass_soft
  sleep 3
  sample :drum_snare_soft 
  sleep 2.5
  sample :drum_bass_soft
  sleep 0.5
end

##| loop do
##|   sample :drum_bass_soft
##|   sleep 0.5
