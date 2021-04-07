require 'bhash'

#Test
hash = BHash.new()
#Add 1023=>223
hash.add(1023,223)
hash.print() #{1023=>223}

#Add 1202=>31323
hash.add(1202,31323)
hash.print() #{1023=>223, 1202=>31323}

#Find Value of 31323
puts hash.find(31323) #1202

#Delete 223
hash.delete(223)
hash.print() #{1202=>31323}

#Add 1204=>101
hash.add(1204,101)
hash.print() #{1202=>31323, 1204=>101}

#Updating the hash key from 1204 to 2344
hash.update_key(1204,2344)
hash.print() #{1202=>31323, 2344=>3144}

#Updating the value of 2344 from 101 to 3144
hash.update_value(2344,3144)
hash.print()

#Add whole already existing hash map
hash_new = BHash.new({"f"=>"c","h"=>"g","a"=>"d"})
hash_new.add({"Dog"=>"Cat","Car"=>"Plane","Horse"=>"Girrafe"})
hash_new.print()
