require 'minitest/autorun'
require './csv.rb'

class Csv_Test < Minitest::Test
  def setup
    @text = "Name;Strasse;Ort;Alter
Peter Pan;Am Hang 5;12345 Einsam;42
Maria Schmitz;Kölner Straße 45;50123 Köln;43
Paul Meier;Münchener Weg 1;87654 München;65"

    @csv = Csv.new(@text)
  end

  def test_get_dataset_size
    assert_equal(@csv.get_column_count, 4)
  end

  def test_csv_text
    assert_equal(@csv.text, @text)
  end

  def test_get_header
    assert_equal(@csv.get_header, "Name;Strasse;Ort;Alter")
  end

  def test_get_data
    assert_equal(@csv.get_data, ["Peter Pan;Am Hang 5;12345 Einsam;42",
                                 "Maria Schmitz;Kölner Straße 45;50123 Köln;43",
                                 "Paul Meier;Münchener Weg 1;87654 München;65"])
  end

  def test_get_col_length
    assert_equal(@csv.get_col_length, [13, 16, 13, 5])
  end

  def test_print_header
    assert_equal(@csv.print_header, "Name         |Strasse         |Ort          |Alter|")
  end

  def test_print_divider
    assert_equal(@csv.print_divider, "-------------+----------------+-------------+-----+")
  end

  def test_print_data
    assert_equal(@csv.print_data, "Peter Pan    |Am Hang 5       |12345 Einsam |42   |
Maria Schmitz|Kölner Straße 45|50123 Köln   |43   |
Paul Meier   |Münchener Weg 1 |87654 München|65   |")
  end

  def test_print_table
    assert_equal(@csv.print_table, "Name         |Strasse         |Ort          |Alter|
-------------+----------------+-------------+-----+
Peter Pan    |Am Hang 5       |12345 Einsam |42   |
Maria Schmitz|Kölner Straße 45|50123 Köln   |43   |
Paul Meier   |Münchener Weg 1 |87654 München|65   |")
  end

end
