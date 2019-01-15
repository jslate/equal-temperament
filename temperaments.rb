module Temperaments
  JUST = [
    1.0000,
    1.0417,
    1.1250,
    1.2000,
    1.2500,
    1.3333,
    1.4063,
    1.4983,
    1.6000,
    1.6667,
    1.8000,
    1.8750,
    2.0000
  ].freeze

  EQUAL = 0.upto(12).map { |v| 2**(v / 12.0) }.freeze
end
