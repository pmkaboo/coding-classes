#^ some array methods

arr = [1, 2, 3]
arr.push(4) # adds 4 as the new last item
arr.unshift(0) # adds 0 as the new first item

# similarly we can also remove items from the array
arr.pop # removes and returns the last item
arr.shift # removes and returns the first item

# `pop` and `shift` optionally also take a number argument,
# which says how many items we want to remove
arr = [1, 2, 3, 4, 5]
arr.pop(2) # removes last 2 items and returns them as a new array
arr.shift(2) # removes first 2 items and returns them as a new array

arr = [1,2,3]
arr.sample # returns random element from the array