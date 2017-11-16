require "test_helper"

class FlattenArrayTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::FlattenArray::VERSION
  end

  def test_flatten_multidimensional_array
    array = [[1,2,[3]],4]
    ::FlattenArray::flatten(array)
  end

  def test_flatten_simple_array
    array = [-1,3,5,3]
    ::FlattenArray::flatten(array)
  end

end
