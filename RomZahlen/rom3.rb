


#zu welcher zahl ist meine am meisten ähnlich
#pushe die ähnliche zahl in ein array
#


class Dez_to_Roman
  def initialize
    @dez = [1, 5, 10, 50, 100, 500, 1000]
    @rom = ["I", "V", "X", "L", "C", "D", "M"]
  end

  def start(meine_zahl)
    index = 0
    while @dez[index+1] != nil
      if meine_zahl >= @dez[index] && meine_zahl < (@dez[index+1]-1)
        tmp = @rom[index]
        differenz = meine_zahl - @dez[index]
        differenz.times do
          tmp+=@dez[index]
          end
        end
      end
      index +=1
    end
  end

end

dez_to_roman = Dez_to_Roman.new
dez_to_roman.start(2)

#gehe jedes element im array durch
#  vergleiche element x mit aktuellem array element
#    wenn aktuelles array element kleiner als x ist
#      notiere x
#        subtrahiere aktuelles x -  array element
#          hänge x mal ROM["index"] an das Dokument
