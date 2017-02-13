#Create program to check if string input is a valid ISBN number

$store_length

#Function to strip spaces and hypens then return length.
def strip_length(isbn)
	isbn.delete!('-' ' ')
	isbn.length
end

#Function that detects characters other than digits 0-9, spaces, and hypens.
#Combined with strip_length to run 2 different versions of .match for 10 and 13
#10 length uses [0...-1], 3 dots in a range ignores the last index in the range
#Need to do this to check last character for X,x,0-9 later.
#13 length checks the whole input because all characters must be 0-9, ' ', '-'

#Used nested if statements to return false for a match instead of true.
#Want to use false because a match denotes an invalid ISBN.
def check_chars(isbn)
	valid = true
	isbn_length = strip_length(isbn)
	#Set match to false, because a match means invalid ISBN.
	if isbn_length == 10

		if isbn[0...-1].match(/[^- 0-9]/)
			$store_length = 10
			valid = false
		end
	else isbn_length == 13

		if isbn.match(/[^- 0-9]/)
			$store_length = 13
			valid = false
		end
	end
	valid
		
end