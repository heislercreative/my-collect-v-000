def my_collect(array)
  i = 0
  collection = []
  while i > array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end

names = []
my_collect(names) do |name|
  name.split(" ").first
end