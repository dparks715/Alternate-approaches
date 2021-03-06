#Create a function that fills and array with 1 to 100.
#Replace numbers divisible by 5 and 3 with 'mined minds'
#Replace numbers divisible by 5 with 'minds'
#Replace numbers divisible by 3 with 'mined'

def mmarray()
	#Using splat operator to create an array filled with range 1-100
	nums = *(1..100)

	#Will use .map method to replace our numbers
	#Mapping (iterating over) each value in the array.  Uses val as a variable for the value at each index position.
	#Using an IF statement inside the block to replace numbers divisible by 5 and 3 first.
	#Replaces divisible by 5 next, then divisble by 3
	#If not divisible by 5 or 3, just uses the current value.
	nums.map { |val| if val % 5 == 0 && val % 3 == 0
						'mined minds'
					elsif
						val % 5 == 0
						'minds'
					elsif
						val % 3 == 0
						'mined'
					else
						val
						end }

end