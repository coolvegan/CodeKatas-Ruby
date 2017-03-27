class Fizzbuzz
  def initialize(start, ende)
    @start = start
    @ende = ende
  end

    def check(zahl)
        if (zahl % 3 == 0) && (zahl % 5 == 0)
          return "FizzBuzz"
        elsif (zahl % 3 == 0)
          return "Fizz"
        elsif (zahl % 5 == 0)
          return "Buzz"
        else
          return zahl
        end
    end


  def ausgabe
    (@start..@ende).each do |zahl|
      puts self.check(zahl)
    end
  end
end

fb = Fizzbuzz.new(1,100)
puts fb.ausgabe
