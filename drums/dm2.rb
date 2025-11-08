use_bpm 120
in_thread do
    loop do
        use_synth :fm
        play_pattern_timed [:d3, 0, :d3, :d3], [0.25]
    end
end

in_thread do
    loop do
        sample :bd_haus
        sleep 0.5
        sample :drum_cymbal_closed
        sleep 0.5
    end
end

loop do
    use_synth :saw
    play_pattern_timed [:d5, :d5, :fs5, :a5], [0.25], amp: 0.3, pan: -0.4, release: 0.2
end