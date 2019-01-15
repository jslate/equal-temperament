require './temperaments'
require './songs'
require './player'

@player = Player.new

def play_harmonic_series(pitch = 220)
  multiplier = 1
  1.upto(8) do |index|
    pitch = (multiplier * pitch).round(3)
    multiplier = (index + 1) / index.to_f
    @player.play pitch
  end
end

play_harmonic_series(220)
play_harmonic_series(330)

@player.play_song(440, Temperaments::EQUAL, Songs::SOMEWHERE_OVER_THE_RAINBOW)
@player.play_song(440, Temperaments::JUST, Songs::SOMEWHERE_OVER_THE_RAINBOW)

@triangle_player = Player.new(sound: 'triangle', note_length: 0.1)
@triangle_player.play_song(
  440,
  Temperaments::JUST,
  Songs::MARY_HAD_A_LITTLE_LAMB
)
