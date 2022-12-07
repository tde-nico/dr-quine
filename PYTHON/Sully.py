
#!/usr/bin/env python3

import os

STRING = """
#!/usr/bin/env python3

import os

STRING = {q}{q}{q}{s}{q}{q}{q}

N = {n}

if N >= 0:
	with open("Sully_%d.py" % N, "w") as f:
		f.write(STRING.format(q=chr(34), s=STRING, n=(N-1 if N else 0)))
	os.chmod("Sully_%d.py" % N, 0o755)
	if N:
		os.system("python3 Sully_%d.py" % N)
"""

N = 5

if N >= 0:
	with open("Sully_%d.py" % N, "w") as f:
		f.write(STRING.format(q=chr(34), s=STRING, n=(N-1 if N else 0)))
	os.chmod("Sully_%d.py" % N, 0o755)
	if N:
		os.system("python3 Sully_%d.py" % N)
