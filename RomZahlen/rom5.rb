
class Converter
  def convert(zahl)
      data = [
        [1000,"M"],
        [900, "CM"],
        [500,"D"],
        [400,"CD"],
        [100,"C"],
        [90, "XC"],
        [50, "L"],
        [40, "XL"],
        [10, "X"],
        [ 9, "IX"],
        [ 5, "V"],
        [ 4, "IV"],
        [ 1, "I"],
      ]

    rv = ""
    data.each do |ziffer, rom|
      while zahl >= ziffer
        rv << rom
        zahl-= ziffer
      end
    end

    return rv
  end
end
