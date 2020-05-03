def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  outer_results = []
row_index = 0
while row_index < src.count do
  element_index = 0
  min_temp = src[row_index][0]
  while element_index < src[row_index][element_index].count do
    if src[row_index][element_index] < min_temp
      min_temp = src[row_index][element_index]
    end
    element_index += 1
  end
  outer_results.push(min_temp)
  row_index += 1
end

