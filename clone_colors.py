import csv 
import os

with open ('/home/michael/Desktop/Programming/nvim_colors/color_repos.csv') as file:
    reader = csv.reader(file, delimiter=' ', quotechar='|')
    for line in reader:
        os.system('git clone ' + line[0])
