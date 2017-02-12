#Create program to check if string input is a valid ISBN number

#Function that detects characters other than digits 0-9, spaces, and hypens.
def check_chars(isbn)
	#Set match to false, because a match means invalid ISBN.
	if isbn.match(/[^- 0-9]/)
		false
	else
		true
	end
end