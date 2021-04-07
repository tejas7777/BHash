# BHash
Ruby gem to make a bi-directional hash map. A bi-directional hash is a key, key pair hash, where the corresposnding key to a given key can be found in constant time.

## Install

```
gem install bhash
```

## Using BHash

### Loading the gem in your ruby script
```Ruby
require 'bhash'
```

### Initialize
Initializing empty BHash

```Ruby
hash = BHash.new()
```

Initializing BHash with a Hash object

```Ruby
hash = BHash.new({"Dog=>"Cat","Horse"=>"Girrafe", 1=>2})
```
### Adding keys
Add single key, key pair

```Ruby
hash.add("Apple","Oranges")
```

Add multiple key,key pairs

```Ruby
hash.add({"Dog=>"Cat","Horse"=>"Girrafe", 1=>2})
```
### Find a key corresponding to a given key

```Ruby
hash.find("Alaska")
```

### Delete a key, key pair
Pass either of the key from key, key to be deleted
```Ruby
hash.delete("Golf")
```
### Check if a key is present
```Ruby
hash.present?("Mozart")
```
### Update a key
```Ruby
hash.update_key(old_key,new_key)
```

### Update corresponding key of a given key
```Ruby
hash.update_value(given_key,new_corresponding_key)
```

### Printing a BHash

```Ruby
hash.print()
```
