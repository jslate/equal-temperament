class Player
  SOUNDS = %w(pluck sine square triangle noise sawtooth trapezium exp).freeze

  def initialize(sound: 'sine', note_length: 0.3, volume: 0.2)
    raise "Invalid sound #{sound}" unless SOUNDS.include?(sound)
    @sound = sound
    @note_length = note_length
    @volume = volume
  end

  def play(pitch)
    pitch = pitch.round(3)
    puts "Playing #{pitch}"
    command = [
      'play -n synth', @note_length, @sound,
      pitch, 'vol', @volume, '2>/dev/null'
    ].join(' ')
    `#{command}`
  end

  def play_song(fundemental, temperament, notes)
    notes.each do |note|
      note ? play(temperament[note] * fundemental) : sleep(0.3)
    end
  end
end
