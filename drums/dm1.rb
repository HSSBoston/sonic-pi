loop do
    sample :bd_haus
    sleep 0.5
    sample :drum_cymbal_closed
    sleep 0.5
end

use_bpm 120
with_fx :distortion, mix: 0.8, distort: 0.6 do
    loop do
        use_synth :fm
        play_pattern_timed [:d4], [0.25]
    end
end