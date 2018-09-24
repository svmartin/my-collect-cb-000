def my_collect(array)
  if block_given?
    i = 0
    collection = []

    while i < array.length
      collection.push(yield(array[i]))
      i += 1
    end
  end
  collection
end

p my_collect([1, 2, 3, 4,5]) { |num| num**2 }
