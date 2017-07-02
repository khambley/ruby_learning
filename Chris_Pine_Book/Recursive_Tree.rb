# initial method call
x = 5, y = 5

	# first level of recursive calls
	# called from initial method with x = 5, y = 5
	x = 4, y = 4
	x = 5, y = 4
	x = 6, y = 4
	x = 4, y = 5
	x = 6, y = 5
	x = 4, y = 6
	x = 5, y = 6
	x = 6, y = 6

		# second level of recursive calls
		# called from x = 4, y = 4
		x = 3, y = 3
		x = 4, y = 3
		x = 5, y = 3
		# ... and so on

		# called from x = 5, y = 4
		x = 4, y = 3
		x = 5, y = 3
		x = 6, y = 3
		# ... and so on
		
		# continued for each of the first level calls, etc.