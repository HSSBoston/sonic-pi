live_loop :arpeggio do
  c = chords.tick
  play_pattern c + c[0] if !c.nil?
end