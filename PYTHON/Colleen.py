
#!/usr/bin/python3

# first comment outside the main function

STRING = """
#!/usr/bin/python3

# first comment outside the main function

STRING = {q}{q}{q}{s}{q}{q}{q}

def print_program():
	print(STRING.format(q=chr(34), s=STRING), end="")

def main():
	# second comment inside the main function
	print_program()

if __name__ == "__main__":
	main()
"""

def print_program():
	print(STRING.format(q=chr(34), s=STRING), end="")

def main():
	# second comment inside the main function
	print_program()

if __name__ == "__main__":
	main()
