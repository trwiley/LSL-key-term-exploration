import sys

#grab command line arg
filename = sys.argv[1]

#open and read the file in as a list object.
file_object = open(filename, 'r')

with file_object as f:
    lit_list = file_object.readlines()

lit_split = []

#strip out pesky new lines
lit_list = [i.strip() for i in lit_list]

#Split the list further by separating separate articles.

for i in lit_list:
    lit_split.append(i.split(";"))

#sort the literature list alphabetically.

lit_split.sort()



