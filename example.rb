require 'bhash'

#Test
hash = BHash.new()
puts "Add 1023=>223"
hash.add(1023,223)
puts hash.print() #{1023=>223, 1202=>31323}

puts "Add 1202=>31323"
hash.add(1202,31323)
puts hash.print() #{1023=>223, 1202=>31323}

puts "Find Value of 31323"
puts hash.find(31323) #1202
puts "Delete 223"
hash.delete(223)
puts hash.print() #{1202=>31323}

puts "Add 1204=>101"
hash.add(1204,101)
puts hash.print() #{1202=>31323, 1204=>101}

puts "Updating the hash key from 1204 to 2344"
hash.update_key(1204,2344) 
puts hash.print() #{1202=>31323, 2344=>3144}

puts "Updating the value of 2344 from 101 to 3144"
hash.update_value(2344,3144)
puts hash.print()
