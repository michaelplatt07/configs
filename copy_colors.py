import os

root_dir = '.'
home = os.path.expanduser('~')

if not os.path.exists(home + '/.config/nvim/colors'):
    os.makedirs(home + '/.config/nvim/colors')

for dir_name, sub_dir_list, file_list in os.walk(root_dir):
    for file_name in file_list:
        if '.vim' in file_name:
            copying_file_path = dir_name + '/' + file_name
            os.system('cp ' + copying_file_path + ' ' + home + '/.config/nvim/colors/') 
