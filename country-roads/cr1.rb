use_bpm 70
use_synth :piano

# --- Background chords (optional) ---
define :country_chords do
  sleep 4
  play_chord chord(:f3, :major)
  sleep 4
  play_chord chord(:c3, :major)
  sleep 4
  play_chord chord(:d3, :minor)
  sleep 4
  play_chord chord(:bb3, :major)
  sleep 4
  play_chord chord(:a3, :minor)
  sleep 4
  play_chord chord(:eb3, :major)
  sleep 4
  play_chord chord(:bb3, :major)
  sleep 4
  play_chord chord(:f3, :major)
end

define :melody do
  play_pattern_timed [:r, :r, :f4, :g4, :a4, :a4, :g4, :f4, :g4, :a4, :g4, :f4, :a4, :c5, :d5, :d5, :a4],
                     [2,  1,  0.5, 0.5, 3,   0.25,0.25,0.5, 3,   0.5, 0.5, 3,   0.5, 0.5, 3,   0.5, 0.5]
  play_pattern_timed [:c5, :c5, :a4, :a4, :g4, :f4, :g4, :a4, :a4, :g4, :f4, :f4, :f4, :g4, :f4],
                     [0.25, 0.75, 2, 0.25,0.25,0.5, 1,   2,   0.25,0.25,0.5, 3,   0.5, 0.5, 4]
end

# --- Play together ---
in_thread(name: :chords) do
  country_chords
end

melody
