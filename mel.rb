use_bpm 110

main_theme = [:c4, :f4, :g4, :bb4, :g4, :f4]*2 + [:d4, :eb4, :d4, :b3]
melo1_0 = [:gs5, :c5, :g5, :as4, :f5, :gs4]
melo1_1 = [:ds5, :g4, :gs4, :as4, :ds4, :as4, :gs4, :gs4, :ds4, :e4, :f4, :f4]
melo1_2 = [:as4, :ds5, :f5, :c5, :f5, :g5, :g5, :gs5]
melo1 = melo1_0 + melo1_1 + melo1_0 + melo1_2

live_loop :drums do
  ##| stop
  sample :drum_bass_hard
  sleep 1
  sample :drum_snare_hard, amp: 0.75
  sleep 1
end

live_loop :hihat do
  ##| stop
  sync :drums
  sample :drum_cymbal_closed, amp: 0.5
  sleep 0.25
end

live_loop :bass do
  ##| stop
  ##| sync :drums
  use_synth :chipbass
  play_pattern_timed main_theme.take(4), [0.25], pitch: -24, amp: 0.5
end

live_loop :intro do
  ##| stop
  ##| sync :drums
  use_synth :tech_saws
  play_pattern_timed main_theme, [0.25], amp: 0.5
end

live_loop :melo do
  ##| stop
  sync :drums
  use_synth :zawa
  play_pattern_timed melo1, [0.5]*6+[0.25]*12+[0.5]*6+[0.25]*8, amp: 0.5, release: 3
end
