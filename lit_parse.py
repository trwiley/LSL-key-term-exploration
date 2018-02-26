import sys
import csv

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

#Write the list to a CSV.i

with open('articles.csv', 'w') as f:
    writer = csv.writer(f, delimiter='\t')
    headerrow = "Articles\t".split('\t')
    writer.writerow(headerrow)
    for i in range(0, len(lit_split)):
        writestring = (str(lit_split[i]) + "\t").split("\t")
        writer.writerow(writestring)

