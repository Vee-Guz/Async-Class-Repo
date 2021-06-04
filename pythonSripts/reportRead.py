
#open file to interpret text
with open("report.txt", encoding="utf8", errors='ignore') as f:
   # read entire file
   text = f.read()
# split lines into array
   lines = text.splitlines()
   header = line[0:2]

   print(str(lines))


