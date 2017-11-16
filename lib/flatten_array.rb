require "flatten_array/version"

module FlattenArray
  def FlattenArray.flatten(arr)
    arr.inject [] do |acc, element|
      acc << element if element.kind_of? Integer
      acc + flatten(element) if element.kind_of? Array
      acc
    end
  end
end
