collection = ['ruby', 'javascript', 'python', 'objective-c']

def my_collect(array)
  i = 0
  empty_collection = []
  while i < array.length
    empty_collection.push yield(array[i])
    i += 1
  end
  empty_collection
end

my_collect(collection) {|lang|
  lang.upcase}
