play_pattern_timed scale(:c3, :major), 0.125, release: 0.1
sleep 1
play_pattern_timed scale(:c3, :major, num_octaves: 3), 0.125, release: 0.1
sleep 1
play_pattern_timed (scale :c3, :major_pentatonic, num_octaves: 3), 0.125, release: 0.1
