class Csv
  attr_accessor :text
  def initialize(text)
    @text = text
  end

  def get_header
    text_feld = @text.split("\n")
    text_feld[0]
  end

  def get_data
    @text.split("\n").drop(1)
  end

  def get_column_count
    self.get_header.split(";").size
  end

  def get_data_with_header
      @text.split("\n")
  end

  def get_col_length
    feld = Array.new(self.get_column_count,0)
    self.get_data_with_header.each do |datensatz|
      split_data = datensatz.split(";")
      split_data.each_with_index do |col, index|
        if col.size > feld[index]
          feld[index] = col.size
        end
      end
    end
    return feld
  end

  def print_header
    header = ""
    self.get_col_length.each_with_index do |length, index|
      word_size = self.get_header.split(";")[index].size
      header << self.get_header.split(";")[index]
      (length-word_size).times do
        header << " "
      end
        header << "|"
    end
    return header
  end

  def print_divider
    divider = ""
    self.get_col_length.each_with_index do |length, index|
      length.times do
        divider << "-"
      end
        divider << "+"
    end
    return divider
  end

  def print_data
    rv = ""
    self.get_data.each do |datensatz|
      data = datensatz.split(";")
      data.each_with_index do |col, index|
        rv << col
        (get_col_length[index]-col.size).times do
          rv << " "
        end
        rv << "|"
      end
        rv << "\n"
    end
    return rv.strip
  end

  def print_table
    rv = ""
    rv << print_header
    rv << "\n"
    rv << print_divider
    rv << "\n"
    rv << print_data
    rv.strip
  end
end

text = "Name;Strasse;Ort;Alter
Peter Pan;Am Hang 5;12345 Einsam;42
Maria Schmitz;Kölner Straße 45;50123 Köln;43
Paul Meier;Münchener Weg 1;87654 München;65"

text = "Vorname;Name;Beruf;Alter;Ort;Telefon
Jan;Brodda;PHP-Entwickler;20;Essen;02383-48843
Marco;Kittel;Software-Entwickler;35;Bönen;023939-4884
Sandra;Schädlich;Mutter;36;Bönen;0291-38833
Marc-Andre;Claus;Fachinformatiker;23;Lünen;0373-3829983
Marc-Andre;Claus;Fachinformatiker;23;Lünen;0373-3829983"

csv = Csv.new(text)
puts csv.print_table
