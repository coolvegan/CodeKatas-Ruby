def vv(x)
  dez = [1, 5, 10, 50]
  rom = ["I", "V", "X", "L"]
    dez.each_with_index do |dz, index|
      if x == dz
        return rom[index]
      end
    end
    dez.each_with_index do |dz, index|
    tmp = ''
      if (x > dz)
        if x <= dez[index+1] && (index+1) <= dez.size
            if x < (dez[index+1]-1)
              x.times do
                tmp+=rom[index]
              end
            elsif x >= (dz+dez[index+1])
              return "foo"
            else
              tmp+=rom[index]+rom[index+1]
            end
          return tmp
        end
      end
    end
  return false
end

puts vv(6)


#Wenn meine gesuchte Zahl im Array ist, dann gib das Aquivalent aus.
#Durchlaufe das Array. Schau ob meine Zahl größer als die aktuell Zahl im Array
#und kleiner das der Nachfolger
