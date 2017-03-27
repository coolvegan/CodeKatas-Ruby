class Rom_zu_Dec_Konverter
  def uneven(zahl)
    if (zahl+1)%2 == 0
      return true
    end
    return false
  end
  def greater_than_ten(dec)
    rv = ""
    (dec/10).times do
      rv+=symbols(10)
    end
    return rv
  end

  def remain_modulo_five(dec)
    r = dec % 5
    t = dec / 5
    if uneven(t) && r != 0
      return symbols((t-1)*5)+symbols(5)+symbols(r)
    elsif uneven(t) && r == 0
      return symbols((t-1)*5)+symbols(5)
    else
      return symbols(t*5)+lower_than_four(r)
    end
  end

  def symbols(dec)
    if dec == 1
      return "I"
    elsif dec == 5
      return "V"
    elsif dec == 10
      return "X"
    elsif dec == 50
      return "L"
    else
      greater_than_ten(dec)
    end
  end

  def lower_than_four(dec)
    rv = ""
      dec.times do
        rv+=symbols(1)
      end
    return rv
  end

  def one_bigger_or_smaller_or_equal_than_five(dec)
    if dec == 4
      return "IV"
    elsif dec == 5
      return "V"
    elsif dec > 5 && dec < 9
      return one_bigger_or_smaller_or_equal_than_five(5) + lower_than_four(dec-5)
    end
  end

  def to_rom(dec)
    if dec > 0 && dec < 4
      return lower_than_four(dec)
    elsif dec % 5 == 0
      return symbols(dec)
    elsif (dec % 5 >= 1) && (dec % 5 <= 3)
      return remain_modulo_five(dec)
    end
  end
end

puts vv(6)
