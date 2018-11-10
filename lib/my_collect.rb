collection = ['ruby', 'javascript', 'python', 'objective-c']

def my_collect(collection)
  i = 0
  empty_array = []
  while i < collection.length
    empty_array.push yield(collection[i])
    i += 1
  end
  empty_array
end

my_collect(collection) {|lang|
  lang.upcase}
