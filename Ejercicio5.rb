class Morseable
  attr_accessor :number
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    # Esto es una aberración y debe ser refactorizado!
  hash = {  '0' => '-----',
            '1' => '.----',
            '2' => '..---',
            '3' => '...--',
            '4' => '....-',
            '5' =>'.....',
            '6' => '-....',
            '7' => '--...',
            '8' => '---..',
            '9' => '----.',
          }
     hash.fetch(number.to_s)
  end

  def to_morse
   generate_hash(@number)
  end
end

m = Morseable.new(3)
p m.to_morse
