play_pattern chord(:E3, :m7)
sleep 1
play_pattern_timed chord(:E3, :m7), 0.25
sleep 1
play_pattern_timed chord(:E3, :m13), [0.25, 0.5]
