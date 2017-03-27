class Converter
  def rom_2_dec(rzahl)
    zahl = 0

    muster = [
      ["CM", 900],
      ["CD", 400],
      ["XC", 90],
      ["XL", 40],
      ["IX", 9],
      ["IV", 4],
      ["M",1000],
      ["D",500],
      ["C",100],
      ["L",50],
      ["X",10],
      ["V",5],
      ["I",1]
    ]
      muster.each do |roemische_zahl, dezimal_zahl|
        anzahl_in_string = rzahl.scan(/#{roemische_zahl}/).length
        if anzahl_in_string > 0
          zahl += dezimal_zahl * anzahl_in_string
          rzahl.gsub!(/#{roemische_zahl}/,"")
        end
      end
    zahl
  end
end
