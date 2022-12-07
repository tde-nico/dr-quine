
#!/usr/bin/python3

# good comment

STRING = """
#!/usr/bin/python3

# good comment

STRING = {q}{q}{q}{s}{q}{q}{q}

FILE = open("Grace_kid.py", "w")

FT = lambda: FILE.write(STRING.format(q=chr(34), s=STRING)) and FILE.close()

FT()
"""

FILE = open("Grace_kid.py", "w")

FT = lambda: FILE.write(STRING.format(q=chr(34), s=STRING)) and FILE.close()

FT()
