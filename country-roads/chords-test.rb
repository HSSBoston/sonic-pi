chords =[nil, chord(:f3, :major), chord(:c3, :major),  chord(:d3, :minor),  chord(:bb3, :major),
         chord(:a3, :minor), chord(:eb3, :major), chord(:bb3, :major), chord(:f3, :major)]

live_loop :chords do
  with_fx :echo, mix: 0.1 do 
    c = chords.tick
    play_chord c, release: 4 if !c.nil?
    sleep 4
  end
end