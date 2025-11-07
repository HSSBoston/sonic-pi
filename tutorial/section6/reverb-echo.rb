with_fx :reverb do
  with_fx :echo, phase: 0.5, decay: 8 do
    play 50
    sleep 0.5
    sample :elec_blup
    sleep 0.5
    play 62
  end
end