#Takes an array of items (names, letters, etc.) and pairs them up
#Places them in a new array after pairing.

#Abandoned .map, could probably make it work in an unnecessarily long way.
#Using .zip found in ruby docs instead.  Need to split array in half to use it.
def pairs(letters)
	#shuffle bang! shuffles letters in place permanently
	letters.shuffle!
	#Slicing array into 2 halves and assigning to one and two, while converting to array
	#.round places the uneven element into the first array (one)
	one,two = letters.each_slice((letters.size/2.0).round).to_a
	#Found applicable method in ruby docs for Array
	#Converts arguments to arrays and merges corresponding elements
	#Syntax below will take one[0] and merge with two[0], so on through the index
	pairs = one.zip(two)

	if one.length != two.length
		pairs[0] << pairs[-1][0]
		pairs.delete_at(-1)
	end
		pairs
end