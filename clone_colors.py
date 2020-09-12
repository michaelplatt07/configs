import csv 
import os

dirname = os.path.dirname(__file__)
with open (os.path.join(dirname, '/color_repos.csv')) as file:
    reader = csv.reader(file, delimiter=' ', quotechar='|')
    for line in reader:
        os.system('git clone ' + line[0])
