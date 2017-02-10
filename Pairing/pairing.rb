#Takes an array of items (names, letters, etc.) and pairs them up
#Places them in a new array after pairing.

def pairs(letters)
	#Trying out the .map with index method.
	#Attempting to push odd index values into the previous value (index - 1) to create pairs.
	#Just adding value if not odd, but I think this will give too many pairs.
	letters.map.with_index { |value, index| if index % 2 == 1
												letters[index - 1] << value
											else 
												value
											end }
	
end